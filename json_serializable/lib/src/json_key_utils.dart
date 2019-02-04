// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:source_gen/source_gen.dart';

import 'json_literal_generator.dart';
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
    var enumValueName = enumFields.map((p) => p.name).singleWhere(
          (s) => defaultValueObject.getField(s) != null,
          // TODO: remove once pkg:analyzer < 0.35.0 is no longer supported
          orElse: () =>
              enumFields.elementAt(getEnumIndex(defaultValueObject)).name,
        );

    defaultValueLiteral = '${defaultValueObject.type.name}.$enumValueName';
  } else {
    defaultValueLiteral = _getLiteral(defaultValueObject, []);
    if (defaultValueLiteral != null) {
      defaultValueLiteral = jsonLiteralAsDart(defaultValueLiteral);
    }
  }

  final disallowNullValue = obj.getField('disallowNullValue').toBoolValue();
  final includeIfNull = obj.getField('includeIfNull').toBoolValue();

  if (disallowNullValue == true) {
    if (includeIfNull == true) {
      throwUnsupported(
          element,
          'Cannot set both `disallowNullvalue` and `includeIfNull` to `true`. '
          'This leads to incompatible `toJson` and `fromJson` behavior.');
    }
  }

  return _populateJsonKey(
    classAnnotation,
    element,
    defaultValue: defaultValueLiteral,
    disallowNullValue: disallowNullValue,
    ignore: obj.getField('ignore').toBoolValue(),
    includeIfNull: includeIfNull,
    name: obj.getField('name').toStringValue(),
    nullable: obj.getField('nullable').toBoolValue(),
    required: obj.getField('required').toBoolValue(),
  );
}

JsonKey _populateJsonKey(
  JsonSerializable classAnnotation,
  FieldElement fieldElement, {
  Object defaultValue,
  bool disallowNullValue,
  bool ignore,
  bool includeIfNull,
  String name,
  bool nullable,
  bool required,
}) {
  final jsonKey = JsonKey(
    defaultValue: defaultValue,
    disallowNullValue: disallowNullValue ?? false,
    ignore: ignore ?? false,
    includeIfNull: _includeIfNull(
        includeIfNull, disallowNullValue, classAnnotation.includeIfNull),
    name: _encodedFieldName(classAnnotation, name, fieldElement),
    nullable: nullable ?? classAnnotation.nullable,
    required: required ?? false,
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
