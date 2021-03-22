// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/type.dart';

import '../json_key_utils.dart';
import '../json_literal_generator.dart';
import '../type_helper.dart';
import '../utils.dart';

final simpleExpression = RegExp('^[a-zA-Z_]+\$');

class EnumHelper extends TypeHelper<TypeHelperContextWithConfig> {
  const EnumHelper();

  @override
  String? serialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
  ) {
    final memberContent = _enumValueMapFromType(targetType);

    if (memberContent == null) {
      return null;
    }

    context.addMember(memberContent);

    return '${_constMapName(targetType)}[$expression]';
  }

  @override
  String? deserialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
    bool defaultProvided,
  ) {
    final memberContent = _enumValueMapFromType(targetType);

    if (memberContent == null) {
      return null;
    }

    context.addMember(_enumDecodeHelper);

    String functionName;
    if (targetType.isNullableType || defaultProvided) {
      functionName = r'_$enumDecodeNullable';
      context.addMember(_enumDecodeHelperNullable);
    } else {
      functionName = r'_$enumDecode';
    }

    context.addMember(memberContent);

    final jsonKey = jsonKeyForField(context.fieldElement, context.config);
    final args = [
      _constMapName(targetType),
      expression,
      if (jsonKey.unknownEnumValue != null)
        'unknownValue: ${jsonKey.unknownEnumValue}',
    ];

    return '$functionName(${args.join(', ')})';
  }
}

String _constMapName(DartType targetType) =>
    '_\$${targetType.element!.name}EnumMap';

String? _enumValueMapFromType(DartType targetType) {
  final enumMap = enumFieldsMap(targetType);

  if (enumMap == null) {
    return null;
  }

  final items = enumMap.entries
      .map((e) => '  ${targetType.element!.name}.${e.key.name}: '
          '${jsonLiteralAsDart(e.value)},')
      .join();

  return 'const ${_constMapName(targetType)} = {\n$items\n};';
}

const _enumDecodeHelper = r'''
K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}''';

const _enumDecodeHelperNullable = r'''
K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}''';
