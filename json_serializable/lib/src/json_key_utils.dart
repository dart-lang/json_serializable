// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:source_gen/source_gen.dart';

import 'json_literal_generator.dart';
import 'shared_checkers.dart';
import 'utils.dart';

final _jsonKeyExpando = Expando<JsonKey>();

JsonKey jsonKeyForField(FieldElement field, JsonSerializable classAnnotation) =>
    _jsonKeyExpando[field] ??= _from(field, classAnnotation);

JsonKey _from(FieldElement element, JsonSerializable classAnnotation) {
  // If an annotation exists on `element` the source is a 'real' field.
  // If the result is `null`, check the getter – it is a property.
  // TODO(kevmoo) setters: github.com/dart-lang/json_serializable/issues/24
  final obj = jsonKeyAnnotation(element);

  if (obj == null) {
    return _populateJsonKey(classAnnotation, element);
  }

  Object _getLiteral(DartObject dartObject, Iterable<String> things) {
    if (dartObject.isNull) {
      return null;
    }

    final reader = ConstantReader(dartObject);

    String badType;
    if (reader.isSymbol) {
      badType = 'Symbol';
    } else if (reader.isType) {
      badType = 'Type';
    } else if (dartObject.type is FunctionType) {
      // TODO(kevmoo): Support calling function for the default value?
      badType = 'Function';
    } else if (!reader.isLiteral) {
      badType = dartObject.type.name;
    }

    if (badType != null) {
      badType = things.followedBy([badType]).join(' > ');
      throwUnsupported(
          element, '`defaultValue` is `$badType`, it must be a literal.');
    }

    final literal = reader.literalValue;

    if (literal is num || literal is String || literal is bool) {
      return literal;
    } else if (literal is List<DartObject>) {
      return literal
          .map((e) => _getLiteral(e, things.followedBy(['List'])))
          .toList();
    } else if (literal is Map<DartObject, DartObject>) {
      final mapThings = things.followedBy(['Map']);
      return literal.map((k, v) =>
          MapEntry(_getLiteral(k, mapThings), _getLiteral(v, mapThings)));
    }

    badType = things.followedBy(['$dartObject']).join(' > ');

    throwUnsupported(
        element,
        'The provided value is not supported: $badType. '
        'This may be an error in package:json_serializable. '
        'Please rerun your build with `--verbose` and file an issue.');
  }

  final defaultValueObject = obj.getField('defaultValue');

  Object defaultValueLiteral;

  final enumFields = iterateEnumFields(defaultValueObject.type);
  if (enumFields != null) {
    final enumValueNames =
        enumFields.map((p) => p.name).toList(growable: false);

    final enumValueName = enumValueForDartObject<String>(
        defaultValueObject, enumValueNames, (n) => n);

    defaultValueLiteral = '${defaultValueObject.type.name}.$enumValueName';
  } else {
    defaultValueLiteral = _getLiteral(defaultValueObject, []);
    if (defaultValueLiteral != null) {
      defaultValueLiteral = jsonLiteralAsDart(defaultValueLiteral);
    }
  }

  return _populateJsonKey(
    classAnnotation,
    element,
    defaultValue: defaultValueLiteral,
    disallowNullValue: obj.getField('disallowNullValue').toBoolValue(),
    encodeEmptyCollection: obj.getField('encodeEmptyCollection').toBoolValue(),
    ignore: obj.getField('ignore').toBoolValue(),
    includeIfNull: obj.getField('includeIfNull').toBoolValue(),
    name: obj.getField('name').toStringValue(),
    nullable: obj.getField('nullable').toBoolValue(),
    required: obj.getField('required').toBoolValue(),
  );
}

const _iterableOrMapChecker =
    TypeChecker.any([coreIterableTypeChecker, coreMapTypeChecker]);

JsonKey _populateJsonKey(
  JsonSerializable classAnnotation,
  FieldElement element, {
  Object defaultValue,
  bool disallowNullValue,
  bool ignore,
  bool includeIfNull,
  String name,
  bool nullable,
  bool required,
  bool encodeEmptyCollection,
}) {
  if (disallowNullValue == true) {
    if (includeIfNull == true) {
      throwUnsupported(
          element,
          'Cannot set both `disallowNullvalue` and `includeIfNull` to `true`. '
          'This leads to incompatible `toJson` and `fromJson` behavior.');
    }
  }

  if (encodeEmptyCollection == null) {
    // If set on the class, but not set on the field – set the key to false
    // iif the type is compatible.
    if (_iterableOrMapChecker.isAssignableFromType(element.type) &&
        !classAnnotation.encodeEmptyCollection) {
      encodeEmptyCollection = false;
    } else {
      encodeEmptyCollection = true;
    }
  } else if (encodeEmptyCollection == false &&
      !_iterableOrMapChecker.isAssignableFromType(element.type)) {
    // If explicitly set of the field, throw an error if the type is not a
    // compatible type.
    throwUnsupported(
      element,
      '`encodeEmptyCollection: false` is only valid fields of type '
      'Iterable, List, Set, or Map.',
    );
  }

  if (!encodeEmptyCollection) {
    if (includeIfNull == true) {
      throwUnsupported(
        element,
        'Cannot set `encodeEmptyCollection: false` if `includeIfNull: true`.',
      );
    }
    includeIfNull = false;
  }

  final jsonKey = JsonKey(
    defaultValue: defaultValue,
    disallowNullValue: disallowNullValue ?? false,
    ignore: ignore ?? false,
    includeIfNull: _includeIfNull(
        includeIfNull, disallowNullValue, classAnnotation.includeIfNull),
    name: _encodedFieldName(classAnnotation, name, element),
    nullable: nullable ?? classAnnotation.nullable,
    required: required ?? false,
    encodeEmptyCollection: encodeEmptyCollection,
  );

  return jsonKey;
}

String _encodedFieldName(JsonSerializable classAnnotation,
    String jsonKeyNameValue, FieldElement fieldElement) {
  if (jsonKeyNameValue != null) {
    return jsonKeyNameValue;
  }

  switch (classAnnotation.fieldRename) {
    case FieldRename.none:
      // noop
      break;
    case FieldRename.snake:
      return snakeCase(fieldElement.name);
    case FieldRename.kebab:
      return kebabCase(fieldElement.name);
  }

  return fieldElement.name;
}

bool _includeIfNull(
    bool keyIncludeIfNull, bool keyDisallowNullValue, bool classIncludeIfNull) {
  if (keyDisallowNullValue == true) {
    assert(keyIncludeIfNull != true);
    return false;
  }
  return keyIncludeIfNull ?? classIncludeIfNull;
}
