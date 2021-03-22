// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromJson(Map<String, dynamic> json) {
  return SimpleClass(
    json['value'] as Map<String, dynamic>,
    json['withDefault'] as Map<String, dynamic>? ?? {'a': 1},
  );
}

Map<String, dynamic> _$SimpleClassToJson(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'withDefault': instance.withDefault,
    };

SimpleClassNullable _$SimpleClassNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassNullable(
    json['value'] as Map<String, dynamic>?,
    json['withDefault'] as Map<String, dynamic>? ?? {'a': 1},
  );
}

Map<String, dynamic> _$SimpleClassNullableToJson(
        SimpleClassNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
      'withDefault': instance.withDefault,
    };

SimpleClassOfBigIntToBigInt _$SimpleClassOfBigIntToBigIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToBigInt(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToBigIntToJson(
        SimpleClassOfBigIntToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfBigIntToBigInt
    _$SimpleClassNullableOfBigIntToBigIntFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToBigInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToBigIntToJson(
        SimpleClassNullableOfBigIntToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfDateTimeToBigInt _$SimpleClassOfDateTimeToBigIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToBigInt(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToBigIntToJson(
        SimpleClassOfDateTimeToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e.toString())),
    };

SimpleClassNullableOfDateTimeToBigInt
    _$SimpleClassNullableOfDateTimeToBigIntFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToBigInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToBigIntToJson(
        SimpleClassNullableOfDateTimeToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e.toString())),
    };

SimpleClassOfDynamicToBigInt _$SimpleClassOfDynamicToBigIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToBigInt(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToBigIntToJson(
        SimpleClassOfDynamicToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfDynamicToBigInt
    _$SimpleClassNullableOfDynamicToBigIntFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToBigInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToBigIntToJson(
        SimpleClassNullableOfDynamicToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfEnumTypeToBigInt _$SimpleClassOfEnumTypeToBigIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToBigInt(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          _$enumDecode(_$EnumTypeEnumMap, k), BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToBigIntToJson(
        SimpleClassOfEnumTypeToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.toString())),
    };

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
}

const _$EnumTypeEnumMap = {
  EnumType.alpha: 'alpha',
  EnumType.beta: 'beta',
  EnumType.gamma: 'gamma',
  EnumType.delta: 'delta',
};

SimpleClassNullableOfEnumTypeToBigInt
    _$SimpleClassNullableOfEnumTypeToBigIntFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToBigInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          _$enumDecode(_$EnumTypeEnumMap, k), BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToBigIntToJson(
        SimpleClassNullableOfEnumTypeToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.toString())),
    };

SimpleClassOfIntToBigInt _$SimpleClassOfIntToBigIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToBigInt(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToBigIntToJson(
        SimpleClassOfIntToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfIntToBigInt _$SimpleClassNullableOfIntToBigIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToBigInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToBigIntToJson(
        SimpleClassNullableOfIntToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfObjectToBigInt _$SimpleClassOfObjectToBigIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToBigInt(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToBigIntToJson(
        SimpleClassOfObjectToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfObjectToBigInt
    _$SimpleClassNullableOfObjectToBigIntFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToBigInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToBigIntToJson(
        SimpleClassNullableOfObjectToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfStringToBigInt _$SimpleClassOfStringToBigIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToBigInt(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToBigIntToJson(
        SimpleClassOfStringToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfStringToBigInt
    _$SimpleClassNullableOfStringToBigIntFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToBigInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToBigIntToJson(
        SimpleClassNullableOfStringToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfUriToBigInt _$SimpleClassOfUriToBigIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToBigInt(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToBigIntToJson(
        SimpleClassOfUriToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfUriToBigInt _$SimpleClassNullableOfUriToBigIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToBigInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToBigIntToJson(
        SimpleClassNullableOfUriToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfBigIntToBigIntNullable
    _$SimpleClassOfBigIntToBigIntNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfBigIntToBigIntNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          BigInt.parse(k), e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToBigIntNullableToJson(
        SimpleClassOfBigIntToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfBigIntToBigIntNullable
    _$SimpleClassNullableOfBigIntToBigIntNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToBigIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          BigInt.parse(k), e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToBigIntNullableToJson(
        SimpleClassNullableOfBigIntToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassOfDateTimeToBigIntNullable
    _$SimpleClassOfDateTimeToBigIntNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToBigIntNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          DateTime.parse(k), e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToBigIntNullableToJson(
        SimpleClassOfDateTimeToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e?.toString())),
    };

SimpleClassNullableOfDateTimeToBigIntNullable
    _$SimpleClassNullableOfDateTimeToBigIntNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToBigIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          DateTime.parse(k), e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToBigIntNullableToJson(
        SimpleClassNullableOfDateTimeToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e?.toString())),
    };

SimpleClassOfDynamicToBigIntNullable
    _$SimpleClassOfDynamicToBigIntNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfDynamicToBigIntNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToBigIntNullableToJson(
        SimpleClassOfDynamicToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfDynamicToBigIntNullable
    _$SimpleClassNullableOfDynamicToBigIntNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToBigIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToBigIntNullableToJson(
        SimpleClassNullableOfDynamicToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfEnumTypeToBigIntNullable
    _$SimpleClassOfEnumTypeToBigIntNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToBigIntNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k),
          e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToBigIntNullableToJson(
        SimpleClassOfEnumTypeToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.toString())),
    };

SimpleClassNullableOfEnumTypeToBigIntNullable
    _$SimpleClassNullableOfEnumTypeToBigIntNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToBigIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k),
          e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToBigIntNullableToJson(
        SimpleClassNullableOfEnumTypeToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.toString())),
    };

SimpleClassOfIntToBigIntNullable _$SimpleClassOfIntToBigIntNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToBigIntNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(int.parse(k), e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToBigIntNullableToJson(
        SimpleClassOfIntToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfIntToBigIntNullable
    _$SimpleClassNullableOfIntToBigIntNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToBigIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(int.parse(k), e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToBigIntNullableToJson(
        SimpleClassNullableOfIntToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassOfObjectToBigIntNullable
    _$SimpleClassOfObjectToBigIntNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfObjectToBigIntNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToBigIntNullableToJson(
        SimpleClassOfObjectToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfObjectToBigIntNullable
    _$SimpleClassNullableOfObjectToBigIntNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToBigIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToBigIntNullableToJson(
        SimpleClassNullableOfObjectToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfStringToBigIntNullable
    _$SimpleClassOfStringToBigIntNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfStringToBigIntNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToBigIntNullableToJson(
        SimpleClassOfStringToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfStringToBigIntNullable
    _$SimpleClassNullableOfStringToBigIntNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToBigIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToBigIntNullableToJson(
        SimpleClassNullableOfStringToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfUriToBigIntNullable _$SimpleClassOfUriToBigIntNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToBigIntNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(Uri.parse(k), e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToBigIntNullableToJson(
        SimpleClassOfUriToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfUriToBigIntNullable
    _$SimpleClassNullableOfUriToBigIntNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToBigIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(Uri.parse(k), e == null ? null : BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToBigIntNullableToJson(
        SimpleClassNullableOfUriToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassOfBigIntToBool _$SimpleClassOfBigIntToBoolFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToBool(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToBoolToJson(
        SimpleClassOfBigIntToBool instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToBool _$SimpleClassNullableOfBigIntToBoolFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToBool(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToBoolToJson(
        SimpleClassNullableOfBigIntToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToBool _$SimpleClassOfDateTimeToBoolFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToBool(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToBoolToJson(
        SimpleClassOfDateTimeToBool instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToBool
    _$SimpleClassNullableOfDateTimeToBoolFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToBool(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToBoolToJson(
        SimpleClassNullableOfDateTimeToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToBool _$SimpleClassOfDynamicToBoolFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToBool(
    Map<String, bool>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToBoolToJson(
        SimpleClassOfDynamicToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToBool _$SimpleClassNullableOfDynamicToBoolFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToBool(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToBoolToJson(
        SimpleClassNullableOfDynamicToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToBool _$SimpleClassOfEnumTypeToBoolFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToBool(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToBoolToJson(
        SimpleClassOfEnumTypeToBool instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToBool
    _$SimpleClassNullableOfEnumTypeToBoolFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToBool(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToBoolToJson(
        SimpleClassNullableOfEnumTypeToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToBool _$SimpleClassOfIntToBoolFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToBool(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToBoolToJson(
        SimpleClassOfIntToBool instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToBool _$SimpleClassNullableOfIntToBoolFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToBool(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToBoolToJson(
        SimpleClassNullableOfIntToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToBool _$SimpleClassOfObjectToBoolFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToBool(
    Map<String, bool>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToBoolToJson(
        SimpleClassOfObjectToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToBool _$SimpleClassNullableOfObjectToBoolFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToBool(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToBoolToJson(
        SimpleClassNullableOfObjectToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToBool _$SimpleClassOfStringToBoolFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToBool(
    Map<String, bool>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToBoolToJson(
        SimpleClassOfStringToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToBool _$SimpleClassNullableOfStringToBoolFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToBool(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToBoolToJson(
        SimpleClassNullableOfStringToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToBool _$SimpleClassOfUriToBoolFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToBool(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToBoolToJson(
        SimpleClassOfUriToBool instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToBool _$SimpleClassNullableOfUriToBoolFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToBool(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToBoolToJson(
        SimpleClassNullableOfUriToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToBoolNullable _$SimpleClassOfBigIntToBoolNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToBoolNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e as bool?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToBoolNullableToJson(
        SimpleClassOfBigIntToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToBoolNullable
    _$SimpleClassNullableOfBigIntToBoolNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToBoolNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e as bool?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToBoolNullableToJson(
        SimpleClassNullableOfBigIntToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToBoolNullable
    _$SimpleClassOfDateTimeToBoolNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToBoolNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e as bool?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToBoolNullableToJson(
        SimpleClassOfDateTimeToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToBoolNullable
    _$SimpleClassNullableOfDateTimeToBoolNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToBoolNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e as bool?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToBoolNullableToJson(
        SimpleClassNullableOfDateTimeToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToBoolNullable _$SimpleClassOfDynamicToBoolNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToBoolNullable(
    Map<String, bool>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToBoolNullableToJson(
        SimpleClassOfDynamicToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToBoolNullable
    _$SimpleClassNullableOfDynamicToBoolNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToBoolNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as bool?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToBoolNullableToJson(
        SimpleClassNullableOfDynamicToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToBoolNullable
    _$SimpleClassOfEnumTypeToBoolNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToBoolNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as bool?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToBoolNullableToJson(
        SimpleClassOfEnumTypeToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToBoolNullable
    _$SimpleClassNullableOfEnumTypeToBoolNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToBoolNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as bool?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToBoolNullableToJson(
        SimpleClassNullableOfEnumTypeToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToBoolNullable _$SimpleClassOfIntToBoolNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToBoolNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e as bool?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToBoolNullableToJson(
        SimpleClassOfIntToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToBoolNullable
    _$SimpleClassNullableOfIntToBoolNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToBoolNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), e as bool?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToBoolNullableToJson(
        SimpleClassNullableOfIntToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToBoolNullable _$SimpleClassOfObjectToBoolNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToBoolNullable(
    Map<String, bool>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToBoolNullableToJson(
        SimpleClassOfObjectToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToBoolNullable
    _$SimpleClassNullableOfObjectToBoolNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToBoolNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as bool?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToBoolNullableToJson(
        SimpleClassNullableOfObjectToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToBoolNullable _$SimpleClassOfStringToBoolNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToBoolNullable(
    Map<String, bool>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToBoolNullableToJson(
        SimpleClassOfStringToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToBoolNullable
    _$SimpleClassNullableOfStringToBoolNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToBoolNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as bool?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToBoolNullableToJson(
        SimpleClassNullableOfStringToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToBoolNullable _$SimpleClassOfUriToBoolNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToBoolNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e as bool?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToBoolNullableToJson(
        SimpleClassOfUriToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToBoolNullable
    _$SimpleClassNullableOfUriToBoolNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToBoolNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), e as bool?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToBoolNullableToJson(
        SimpleClassNullableOfUriToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToDateTime _$SimpleClassOfBigIntToDateTimeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToDateTime(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToDateTimeToJson(
        SimpleClassOfBigIntToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassNullableOfBigIntToDateTime
    _$SimpleClassNullableOfBigIntToDateTimeFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToDateTime(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDateTimeToJson(
        SimpleClassNullableOfBigIntToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassOfDateTimeToDateTime _$SimpleClassOfDateTimeToDateTimeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToDateTime(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToDateTimeToJson(
        SimpleClassOfDateTimeToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e.toIso8601String())),
    };

SimpleClassNullableOfDateTimeToDateTime
    _$SimpleClassNullableOfDateTimeToDateTimeFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToDateTime(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDateTimeToJson(
        SimpleClassNullableOfDateTimeToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e.toIso8601String())),
    };

SimpleClassOfDynamicToDateTime _$SimpleClassOfDynamicToDateTimeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToDateTime(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToDateTimeToJson(
        SimpleClassOfDynamicToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassNullableOfDynamicToDateTime
    _$SimpleClassNullableOfDynamicToDateTimeFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToDateTime(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDateTimeToJson(
        SimpleClassNullableOfDynamicToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassOfEnumTypeToDateTime _$SimpleClassOfEnumTypeToDateTimeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToDateTime(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          _$enumDecode(_$EnumTypeEnumMap, k), DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToDateTimeToJson(
        SimpleClassOfEnumTypeToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.toIso8601String())),
    };

SimpleClassNullableOfEnumTypeToDateTime
    _$SimpleClassNullableOfEnumTypeToDateTimeFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToDateTime(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          _$enumDecode(_$EnumTypeEnumMap, k), DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDateTimeToJson(
        SimpleClassNullableOfEnumTypeToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.toIso8601String())),
    };

SimpleClassOfIntToDateTime _$SimpleClassOfIntToDateTimeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToDateTime(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToDateTimeToJson(
        SimpleClassOfIntToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassNullableOfIntToDateTime _$SimpleClassNullableOfIntToDateTimeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToDateTime(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToDateTimeToJson(
        SimpleClassNullableOfIntToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassOfObjectToDateTime _$SimpleClassOfObjectToDateTimeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToDateTime(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToDateTimeToJson(
        SimpleClassOfObjectToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassNullableOfObjectToDateTime
    _$SimpleClassNullableOfObjectToDateTimeFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToDateTime(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToDateTimeToJson(
        SimpleClassNullableOfObjectToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassOfStringToDateTime _$SimpleClassOfStringToDateTimeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToDateTime(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToDateTimeToJson(
        SimpleClassOfStringToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassNullableOfStringToDateTime
    _$SimpleClassNullableOfStringToDateTimeFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToDateTime(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToDateTimeToJson(
        SimpleClassNullableOfStringToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassOfUriToDateTime _$SimpleClassOfUriToDateTimeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToDateTime(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToDateTimeToJson(
        SimpleClassOfUriToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassNullableOfUriToDateTime _$SimpleClassNullableOfUriToDateTimeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToDateTime(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToDateTimeToJson(
        SimpleClassNullableOfUriToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassOfBigIntToDateTimeNullable
    _$SimpleClassOfBigIntToDateTimeNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfBigIntToDateTimeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          BigInt.parse(k), e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToDateTimeNullableToJson(
        SimpleClassOfBigIntToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassNullableOfBigIntToDateTimeNullable
    _$SimpleClassNullableOfBigIntToDateTimeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToDateTimeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          BigInt.parse(k), e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDateTimeNullableToJson(
        SimpleClassNullableOfBigIntToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassOfDateTimeToDateTimeNullable
    _$SimpleClassOfDateTimeToDateTimeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToDateTimeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          DateTime.parse(k), e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToDateTimeNullableToJson(
        SimpleClassOfDateTimeToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e?.toIso8601String())),
    };

SimpleClassNullableOfDateTimeToDateTimeNullable
    _$SimpleClassNullableOfDateTimeToDateTimeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToDateTimeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          DateTime.parse(k), e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDateTimeNullableToJson(
        SimpleClassNullableOfDateTimeToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e?.toIso8601String())),
    };

SimpleClassOfDynamicToDateTimeNullable
    _$SimpleClassOfDynamicToDateTimeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassOfDynamicToDateTimeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToDateTimeNullableToJson(
        SimpleClassOfDynamicToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toIso8601String())),
    };

SimpleClassNullableOfDynamicToDateTimeNullable
    _$SimpleClassNullableOfDynamicToDateTimeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToDateTimeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDateTimeNullableToJson(
        SimpleClassNullableOfDynamicToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toIso8601String())),
    };

SimpleClassOfEnumTypeToDateTimeNullable
    _$SimpleClassOfEnumTypeToDateTimeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToDateTimeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k),
          e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToDateTimeNullableToJson(
        SimpleClassOfEnumTypeToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.toIso8601String())),
    };

SimpleClassNullableOfEnumTypeToDateTimeNullable
    _$SimpleClassNullableOfEnumTypeToDateTimeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToDateTimeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k),
          e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDateTimeNullableToJson(
        SimpleClassNullableOfEnumTypeToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.toIso8601String())),
    };

SimpleClassOfIntToDateTimeNullable _$SimpleClassOfIntToDateTimeNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToDateTimeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          int.parse(k), e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToDateTimeNullableToJson(
        SimpleClassOfIntToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassNullableOfIntToDateTimeNullable
    _$SimpleClassNullableOfIntToDateTimeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToDateTimeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          int.parse(k), e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToDateTimeNullableToJson(
        SimpleClassNullableOfIntToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassOfObjectToDateTimeNullable
    _$SimpleClassOfObjectToDateTimeNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfObjectToDateTimeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToDateTimeNullableToJson(
        SimpleClassOfObjectToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toIso8601String())),
    };

SimpleClassNullableOfObjectToDateTimeNullable
    _$SimpleClassNullableOfObjectToDateTimeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToDateTimeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToDateTimeNullableToJson(
        SimpleClassNullableOfObjectToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toIso8601String())),
    };

SimpleClassOfStringToDateTimeNullable
    _$SimpleClassOfStringToDateTimeNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfStringToDateTimeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToDateTimeNullableToJson(
        SimpleClassOfStringToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toIso8601String())),
    };

SimpleClassNullableOfStringToDateTimeNullable
    _$SimpleClassNullableOfStringToDateTimeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToDateTimeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToDateTimeNullableToJson(
        SimpleClassNullableOfStringToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toIso8601String())),
    };

SimpleClassOfUriToDateTimeNullable _$SimpleClassOfUriToDateTimeNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToDateTimeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          Uri.parse(k), e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToDateTimeNullableToJson(
        SimpleClassOfUriToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassNullableOfUriToDateTimeNullable
    _$SimpleClassNullableOfUriToDateTimeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToDateTimeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          Uri.parse(k), e == null ? null : DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToDateTimeNullableToJson(
        SimpleClassNullableOfUriToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassOfBigIntToDouble _$SimpleClassOfBigIntToDoubleFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToDouble(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToDoubleToJson(
        SimpleClassOfBigIntToDouble instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToDouble
    _$SimpleClassNullableOfBigIntToDoubleFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToDouble(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDoubleToJson(
        SimpleClassNullableOfBigIntToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToDouble _$SimpleClassOfDateTimeToDoubleFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToDouble(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToDoubleToJson(
        SimpleClassOfDateTimeToDouble instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToDouble
    _$SimpleClassNullableOfDateTimeToDoubleFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToDouble(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDoubleToJson(
        SimpleClassNullableOfDateTimeToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToDouble _$SimpleClassOfDynamicToDoubleFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToDouble(
    Map<String, double>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToDoubleToJson(
        SimpleClassOfDynamicToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToDouble
    _$SimpleClassNullableOfDynamicToDoubleFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToDouble(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDoubleToJson(
        SimpleClassNullableOfDynamicToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToDouble _$SimpleClassOfEnumTypeToDoubleFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToDouble(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToDoubleToJson(
        SimpleClassOfEnumTypeToDouble instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToDouble
    _$SimpleClassNullableOfEnumTypeToDoubleFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToDouble(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDoubleToJson(
        SimpleClassNullableOfEnumTypeToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToDouble _$SimpleClassOfIntToDoubleFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToDouble(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToDoubleToJson(
        SimpleClassOfIntToDouble instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToDouble _$SimpleClassNullableOfIntToDoubleFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToDouble(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToDoubleToJson(
        SimpleClassNullableOfIntToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToDouble _$SimpleClassOfObjectToDoubleFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToDouble(
    Map<String, double>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToDoubleToJson(
        SimpleClassOfObjectToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToDouble
    _$SimpleClassNullableOfObjectToDoubleFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToDouble(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToDoubleToJson(
        SimpleClassNullableOfObjectToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToDouble _$SimpleClassOfStringToDoubleFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToDouble(
    Map<String, double>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToDoubleToJson(
        SimpleClassOfStringToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToDouble
    _$SimpleClassNullableOfStringToDoubleFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToDouble(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToDoubleToJson(
        SimpleClassNullableOfStringToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToDouble _$SimpleClassOfUriToDoubleFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToDouble(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToDoubleToJson(
        SimpleClassOfUriToDouble instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToDouble _$SimpleClassNullableOfUriToDoubleFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToDouble(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToDoubleToJson(
        SimpleClassNullableOfUriToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToDoubleNullable
    _$SimpleClassOfBigIntToDoubleNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfBigIntToDoubleNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), (e as num?)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToDoubleNullableToJson(
        SimpleClassOfBigIntToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToDoubleNullable
    _$SimpleClassNullableOfBigIntToDoubleNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToDoubleNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), (e as num?)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDoubleNullableToJson(
        SimpleClassNullableOfBigIntToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToDoubleNullable
    _$SimpleClassOfDateTimeToDoubleNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToDoubleNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), (e as num?)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToDoubleNullableToJson(
        SimpleClassOfDateTimeToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToDoubleNullable
    _$SimpleClassNullableOfDateTimeToDoubleNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToDoubleNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), (e as num?)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDoubleNullableToJson(
        SimpleClassNullableOfDateTimeToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToDoubleNullable
    _$SimpleClassOfDynamicToDoubleNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfDynamicToDoubleNullable(
    Map<String, double>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToDoubleNullableToJson(
        SimpleClassOfDynamicToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToDoubleNullable
    _$SimpleClassNullableOfDynamicToDoubleNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToDoubleNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDoubleNullableToJson(
        SimpleClassNullableOfDynamicToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToDoubleNullable
    _$SimpleClassOfEnumTypeToDoubleNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToDoubleNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), (e as num?)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToDoubleNullableToJson(
        SimpleClassOfEnumTypeToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToDoubleNullable
    _$SimpleClassNullableOfEnumTypeToDoubleNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToDoubleNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), (e as num?)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDoubleNullableToJson(
        SimpleClassNullableOfEnumTypeToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToDoubleNullable _$SimpleClassOfIntToDoubleNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToDoubleNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), (e as num?)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToDoubleNullableToJson(
        SimpleClassOfIntToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToDoubleNullable
    _$SimpleClassNullableOfIntToDoubleNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToDoubleNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), (e as num?)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToDoubleNullableToJson(
        SimpleClassNullableOfIntToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToDoubleNullable
    _$SimpleClassOfObjectToDoubleNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfObjectToDoubleNullable(
    Map<String, double>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToDoubleNullableToJson(
        SimpleClassOfObjectToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToDoubleNullable
    _$SimpleClassNullableOfObjectToDoubleNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToDoubleNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToDoubleNullableToJson(
        SimpleClassNullableOfObjectToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToDoubleNullable
    _$SimpleClassOfStringToDoubleNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfStringToDoubleNullable(
    Map<String, double>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToDoubleNullableToJson(
        SimpleClassOfStringToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToDoubleNullable
    _$SimpleClassNullableOfStringToDoubleNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToDoubleNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as num?)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToDoubleNullableToJson(
        SimpleClassNullableOfStringToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToDoubleNullable _$SimpleClassOfUriToDoubleNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToDoubleNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), (e as num?)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToDoubleNullableToJson(
        SimpleClassOfUriToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToDoubleNullable
    _$SimpleClassNullableOfUriToDoubleNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToDoubleNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), (e as num?)?.toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToDoubleNullableToJson(
        SimpleClassNullableOfUriToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToDuration _$SimpleClassOfBigIntToDurationFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToDuration(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToDurationToJson(
        SimpleClassOfBigIntToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassNullableOfBigIntToDuration
    _$SimpleClassNullableOfBigIntToDurationFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToDuration(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDurationToJson(
        SimpleClassNullableOfBigIntToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassOfDateTimeToDuration _$SimpleClassOfDateTimeToDurationFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToDuration(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToDurationToJson(
        SimpleClassOfDateTimeToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e.inMicroseconds)),
    };

SimpleClassNullableOfDateTimeToDuration
    _$SimpleClassNullableOfDateTimeToDurationFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToDuration(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDurationToJson(
        SimpleClassNullableOfDateTimeToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e.inMicroseconds)),
    };

SimpleClassOfDynamicToDuration _$SimpleClassOfDynamicToDurationFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToDuration(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToDurationToJson(
        SimpleClassOfDynamicToDuration instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassNullableOfDynamicToDuration
    _$SimpleClassNullableOfDynamicToDurationFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToDuration(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDurationToJson(
        SimpleClassNullableOfDynamicToDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassOfEnumTypeToDuration _$SimpleClassOfEnumTypeToDurationFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToDuration(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          _$enumDecode(_$EnumTypeEnumMap, k), Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToDurationToJson(
        SimpleClassOfEnumTypeToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.inMicroseconds)),
    };

SimpleClassNullableOfEnumTypeToDuration
    _$SimpleClassNullableOfEnumTypeToDurationFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToDuration(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          _$enumDecode(_$EnumTypeEnumMap, k), Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDurationToJson(
        SimpleClassNullableOfEnumTypeToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.inMicroseconds)),
    };

SimpleClassOfIntToDuration _$SimpleClassOfIntToDurationFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToDuration(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToDurationToJson(
        SimpleClassOfIntToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassNullableOfIntToDuration _$SimpleClassNullableOfIntToDurationFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToDuration(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToDurationToJson(
        SimpleClassNullableOfIntToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassOfObjectToDuration _$SimpleClassOfObjectToDurationFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToDuration(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToDurationToJson(
        SimpleClassOfObjectToDuration instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassNullableOfObjectToDuration
    _$SimpleClassNullableOfObjectToDurationFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToDuration(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToDurationToJson(
        SimpleClassNullableOfObjectToDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassOfStringToDuration _$SimpleClassOfStringToDurationFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToDuration(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToDurationToJson(
        SimpleClassOfStringToDuration instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassNullableOfStringToDuration
    _$SimpleClassNullableOfStringToDurationFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToDuration(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToDurationToJson(
        SimpleClassNullableOfStringToDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassOfUriToDuration _$SimpleClassOfUriToDurationFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToDuration(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToDurationToJson(
        SimpleClassOfUriToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassNullableOfUriToDuration _$SimpleClassNullableOfUriToDurationFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToDuration(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToDurationToJson(
        SimpleClassNullableOfUriToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassOfBigIntToDurationNullable
    _$SimpleClassOfBigIntToDurationNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfBigIntToDurationNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          BigInt.parse(k), e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToDurationNullableToJson(
        SimpleClassOfBigIntToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassNullableOfBigIntToDurationNullable
    _$SimpleClassNullableOfBigIntToDurationNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToDurationNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          BigInt.parse(k), e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDurationNullableToJson(
        SimpleClassNullableOfBigIntToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassOfDateTimeToDurationNullable
    _$SimpleClassOfDateTimeToDurationNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToDurationNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k),
          e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToDurationNullableToJson(
        SimpleClassOfDateTimeToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e?.inMicroseconds)),
    };

SimpleClassNullableOfDateTimeToDurationNullable
    _$SimpleClassNullableOfDateTimeToDurationNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToDurationNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k),
          e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDurationNullableToJson(
        SimpleClassNullableOfDateTimeToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e?.inMicroseconds)),
    };

SimpleClassOfDynamicToDurationNullable
    _$SimpleClassOfDynamicToDurationNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassOfDynamicToDurationNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(k, e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToDurationNullableToJson(
        SimpleClassOfDynamicToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.inMicroseconds)),
    };

SimpleClassNullableOfDynamicToDurationNullable
    _$SimpleClassNullableOfDynamicToDurationNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToDurationNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(k, e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDurationNullableToJson(
        SimpleClassNullableOfDynamicToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.inMicroseconds)),
    };

SimpleClassOfEnumTypeToDurationNullable
    _$SimpleClassOfEnumTypeToDurationNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToDurationNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k),
          e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToDurationNullableToJson(
        SimpleClassOfEnumTypeToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.inMicroseconds)),
    };

SimpleClassNullableOfEnumTypeToDurationNullable
    _$SimpleClassNullableOfEnumTypeToDurationNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToDurationNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k),
          e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDurationNullableToJson(
        SimpleClassNullableOfEnumTypeToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.inMicroseconds)),
    };

SimpleClassOfIntToDurationNullable _$SimpleClassOfIntToDurationNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToDurationNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          int.parse(k), e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToDurationNullableToJson(
        SimpleClassOfIntToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassNullableOfIntToDurationNullable
    _$SimpleClassNullableOfIntToDurationNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToDurationNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          int.parse(k), e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToDurationNullableToJson(
        SimpleClassNullableOfIntToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassOfObjectToDurationNullable
    _$SimpleClassOfObjectToDurationNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfObjectToDurationNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(k, e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToDurationNullableToJson(
        SimpleClassOfObjectToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.inMicroseconds)),
    };

SimpleClassNullableOfObjectToDurationNullable
    _$SimpleClassNullableOfObjectToDurationNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToDurationNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(k, e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToDurationNullableToJson(
        SimpleClassNullableOfObjectToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.inMicroseconds)),
    };

SimpleClassOfStringToDurationNullable
    _$SimpleClassOfStringToDurationNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfStringToDurationNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(k, e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToDurationNullableToJson(
        SimpleClassOfStringToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.inMicroseconds)),
    };

SimpleClassNullableOfStringToDurationNullable
    _$SimpleClassNullableOfStringToDurationNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToDurationNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(k, e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToDurationNullableToJson(
        SimpleClassNullableOfStringToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.inMicroseconds)),
    };

SimpleClassOfUriToDurationNullable _$SimpleClassOfUriToDurationNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToDurationNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          Uri.parse(k), e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToDurationNullableToJson(
        SimpleClassOfUriToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassNullableOfUriToDurationNullable
    _$SimpleClassNullableOfUriToDurationNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToDurationNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          Uri.parse(k), e == null ? null : Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToDurationNullableToJson(
        SimpleClassNullableOfUriToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassOfBigIntToDynamic _$SimpleClassOfBigIntToDynamicFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToDynamic(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToDynamicToJson(
        SimpleClassOfBigIntToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToDynamic
    _$SimpleClassNullableOfBigIntToDynamicFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToDynamic(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDynamicToJson(
        SimpleClassNullableOfBigIntToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToDynamic _$SimpleClassOfDateTimeToDynamicFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToDynamic(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToDynamicToJson(
        SimpleClassOfDateTimeToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToDynamic
    _$SimpleClassNullableOfDateTimeToDynamicFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToDynamic(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDynamicToJson(
        SimpleClassNullableOfDateTimeToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToDynamic _$SimpleClassOfDynamicToDynamicFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToDynamic(
    json['value'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToDynamicToJson(
        SimpleClassOfDynamicToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToDynamic
    _$SimpleClassNullableOfDynamicToDynamicFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToDynamic(
    json['value'] as Map<String, dynamic>?,
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDynamicToJson(
        SimpleClassNullableOfDynamicToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToDynamic _$SimpleClassOfEnumTypeToDynamicFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToDynamic(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToDynamicToJson(
        SimpleClassOfEnumTypeToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToDynamic
    _$SimpleClassNullableOfEnumTypeToDynamicFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToDynamic(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDynamicToJson(
        SimpleClassNullableOfEnumTypeToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToDynamic _$SimpleClassOfIntToDynamicFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToDynamic(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToDynamicToJson(
        SimpleClassOfIntToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToDynamic _$SimpleClassNullableOfIntToDynamicFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToDynamic(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToDynamicToJson(
        SimpleClassNullableOfIntToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToDynamic _$SimpleClassOfObjectToDynamicFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToDynamic(
    json['value'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToDynamicToJson(
        SimpleClassOfObjectToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToDynamic
    _$SimpleClassNullableOfObjectToDynamicFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToDynamic(
    json['value'] as Map<String, dynamic>?,
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToDynamicToJson(
        SimpleClassNullableOfObjectToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToDynamic _$SimpleClassOfStringToDynamicFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToDynamic(
    json['value'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$SimpleClassOfStringToDynamicToJson(
        SimpleClassOfStringToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToDynamic
    _$SimpleClassNullableOfStringToDynamicFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToDynamic(
    json['value'] as Map<String, dynamic>?,
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToDynamicToJson(
        SimpleClassNullableOfStringToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToDynamic _$SimpleClassOfUriToDynamicFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToDynamic(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToDynamicToJson(
        SimpleClassOfUriToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToDynamic _$SimpleClassNullableOfUriToDynamicFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToDynamic(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToDynamicToJson(
        SimpleClassNullableOfUriToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToEnumType _$SimpleClassOfBigIntToEnumTypeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToEnumType(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToEnumTypeToJson(
        SimpleClassOfBigIntToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfBigIntToEnumType
    _$SimpleClassNullableOfBigIntToEnumTypeFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToEnumType(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToEnumTypeToJson(
        SimpleClassNullableOfBigIntToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfDateTimeToEnumType _$SimpleClassOfDateTimeToEnumTypeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToEnumType(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToEnumTypeToJson(
        SimpleClassOfDateTimeToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfDateTimeToEnumType
    _$SimpleClassNullableOfDateTimeToEnumTypeFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToEnumType(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToEnumTypeToJson(
        SimpleClassNullableOfDateTimeToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfDynamicToEnumType _$SimpleClassOfDynamicToEnumTypeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToEnumType(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToEnumTypeToJson(
        SimpleClassOfDynamicToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfDynamicToEnumType
    _$SimpleClassNullableOfDynamicToEnumTypeFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToEnumType(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToEnumTypeToJson(
        SimpleClassNullableOfDynamicToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassOfEnumTypeToEnumType _$SimpleClassOfEnumTypeToEnumTypeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToEnumType(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k),
          _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToEnumTypeToJson(
        SimpleClassOfEnumTypeToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfEnumTypeToEnumType
    _$SimpleClassNullableOfEnumTypeToEnumTypeFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToEnumType(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k),
          _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToEnumTypeToJson(
        SimpleClassNullableOfEnumTypeToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], _$EnumTypeEnumMap[e])),
    };

SimpleClassOfIntToEnumType _$SimpleClassOfIntToEnumTypeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToEnumType(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToEnumTypeToJson(
        SimpleClassOfIntToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfIntToEnumType _$SimpleClassNullableOfIntToEnumTypeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToEnumType(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToEnumTypeToJson(
        SimpleClassNullableOfIntToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfObjectToEnumType _$SimpleClassOfObjectToEnumTypeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToEnumType(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToEnumTypeToJson(
        SimpleClassOfObjectToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfObjectToEnumType
    _$SimpleClassNullableOfObjectToEnumTypeFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToEnumType(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToEnumTypeToJson(
        SimpleClassNullableOfObjectToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassOfStringToEnumType _$SimpleClassOfStringToEnumTypeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToEnumType(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToEnumTypeToJson(
        SimpleClassOfStringToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfStringToEnumType
    _$SimpleClassNullableOfStringToEnumTypeFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToEnumType(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToEnumTypeToJson(
        SimpleClassNullableOfStringToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassOfUriToEnumType _$SimpleClassOfUriToEnumTypeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToEnumType(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToEnumTypeToJson(
        SimpleClassOfUriToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfUriToEnumType _$SimpleClassNullableOfUriToEnumTypeFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToEnumType(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToEnumTypeToJson(
        SimpleClassNullableOfUriToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfBigIntToEnumTypeNullable
    _$SimpleClassOfBigIntToEnumTypeNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfBigIntToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(BigInt.parse(k), _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToEnumTypeNullableToJson(
        SimpleClassOfBigIntToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

SimpleClassNullableOfBigIntToEnumTypeNullable
    _$SimpleClassNullableOfBigIntToEnumTypeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(BigInt.parse(k), _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToEnumTypeNullableToJson(
        SimpleClassNullableOfBigIntToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfDateTimeToEnumTypeNullable
    _$SimpleClassOfDateTimeToEnumTypeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          DateTime.parse(k), _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToEnumTypeNullableToJson(
        SimpleClassOfDateTimeToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfDateTimeToEnumTypeNullable
    _$SimpleClassNullableOfDateTimeToEnumTypeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          DateTime.parse(k), _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToEnumTypeNullableToJson(
        SimpleClassNullableOfDateTimeToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfDynamicToEnumTypeNullable
    _$SimpleClassOfDynamicToEnumTypeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassOfDynamicToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToEnumTypeNullableToJson(
        SimpleClassOfDynamicToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfDynamicToEnumTypeNullable
    _$SimpleClassNullableOfDynamicToEnumTypeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToEnumTypeNullableToJson(
        SimpleClassNullableOfDynamicToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassOfEnumTypeToEnumTypeNullable
    _$SimpleClassOfEnumTypeToEnumTypeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k),
          _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToEnumTypeNullableToJson(
        SimpleClassOfEnumTypeToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfEnumTypeToEnumTypeNullable
    _$SimpleClassNullableOfEnumTypeToEnumTypeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k),
          _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToEnumTypeNullableToJson(
        SimpleClassNullableOfEnumTypeToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], _$EnumTypeEnumMap[e])),
    };

SimpleClassOfIntToEnumTypeNullable _$SimpleClassOfIntToEnumTypeNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(int.parse(k), _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToEnumTypeNullableToJson(
        SimpleClassOfIntToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfIntToEnumTypeNullable
    _$SimpleClassNullableOfIntToEnumTypeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(int.parse(k), _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToEnumTypeNullableToJson(
        SimpleClassNullableOfIntToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfObjectToEnumTypeNullable
    _$SimpleClassOfObjectToEnumTypeNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfObjectToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToEnumTypeNullableToJson(
        SimpleClassOfObjectToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfObjectToEnumTypeNullable
    _$SimpleClassNullableOfObjectToEnumTypeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToEnumTypeNullableToJson(
        SimpleClassNullableOfObjectToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassOfStringToEnumTypeNullable
    _$SimpleClassOfStringToEnumTypeNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfStringToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToEnumTypeNullableToJson(
        SimpleClassOfStringToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfStringToEnumTypeNullable
    _$SimpleClassNullableOfStringToEnumTypeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToEnumTypeNullableToJson(
        SimpleClassNullableOfStringToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassOfUriToEnumTypeNullable _$SimpleClassOfUriToEnumTypeNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(Uri.parse(k), _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToEnumTypeNullableToJson(
        SimpleClassOfUriToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfUriToEnumTypeNullable
    _$SimpleClassNullableOfUriToEnumTypeNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToEnumTypeNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(Uri.parse(k), _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToEnumTypeNullableToJson(
        SimpleClassNullableOfUriToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfBigIntToInt _$SimpleClassOfBigIntToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToInt(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToIntToJson(
        SimpleClassOfBigIntToInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToInt _$SimpleClassNullableOfBigIntToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToIntToJson(
        SimpleClassNullableOfBigIntToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToInt _$SimpleClassOfDateTimeToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToInt(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToIntToJson(
        SimpleClassOfDateTimeToInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToInt _$SimpleClassNullableOfDateTimeToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToIntToJson(
        SimpleClassNullableOfDateTimeToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToInt _$SimpleClassOfDynamicToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToInt(
    Map<String, int>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToIntToJson(
        SimpleClassOfDynamicToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToInt _$SimpleClassNullableOfDynamicToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToIntToJson(
        SimpleClassNullableOfDynamicToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToInt _$SimpleClassOfEnumTypeToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToInt(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToIntToJson(
        SimpleClassOfEnumTypeToInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToInt _$SimpleClassNullableOfEnumTypeToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToIntToJson(
        SimpleClassNullableOfEnumTypeToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToInt _$SimpleClassOfIntToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToInt(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToIntToJson(
        SimpleClassOfIntToInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToInt _$SimpleClassNullableOfIntToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToIntToJson(
        SimpleClassNullableOfIntToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToInt _$SimpleClassOfObjectToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToInt(
    Map<String, int>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToIntToJson(
        SimpleClassOfObjectToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToInt _$SimpleClassNullableOfObjectToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToIntToJson(
        SimpleClassNullableOfObjectToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToInt _$SimpleClassOfStringToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToInt(
    Map<String, int>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToIntToJson(
        SimpleClassOfStringToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToInt _$SimpleClassNullableOfStringToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToIntToJson(
        SimpleClassNullableOfStringToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToInt _$SimpleClassOfUriToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToInt(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToIntToJson(
        SimpleClassOfUriToInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToInt _$SimpleClassNullableOfUriToIntFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToInt(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToIntToJson(
        SimpleClassNullableOfUriToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToIntNullable _$SimpleClassOfBigIntToIntNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToIntNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e as int?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToIntNullableToJson(
        SimpleClassOfBigIntToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToIntNullable
    _$SimpleClassNullableOfBigIntToIntNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e as int?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToIntNullableToJson(
        SimpleClassNullableOfBigIntToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToIntNullable _$SimpleClassOfDateTimeToIntNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToIntNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e as int?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToIntNullableToJson(
        SimpleClassOfDateTimeToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToIntNullable
    _$SimpleClassNullableOfDateTimeToIntNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e as int?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToIntNullableToJson(
        SimpleClassNullableOfDateTimeToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToIntNullable _$SimpleClassOfDynamicToIntNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToIntNullable(
    Map<String, int>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToIntNullableToJson(
        SimpleClassOfDynamicToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToIntNullable
    _$SimpleClassNullableOfDynamicToIntNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as int?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToIntNullableToJson(
        SimpleClassNullableOfDynamicToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToIntNullable _$SimpleClassOfEnumTypeToIntNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToIntNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as int?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToIntNullableToJson(
        SimpleClassOfEnumTypeToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToIntNullable
    _$SimpleClassNullableOfEnumTypeToIntNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as int?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToIntNullableToJson(
        SimpleClassNullableOfEnumTypeToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToIntNullable _$SimpleClassOfIntToIntNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToIntNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e as int?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToIntNullableToJson(
        SimpleClassOfIntToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToIntNullable
    _$SimpleClassNullableOfIntToIntNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), e as int?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToIntNullableToJson(
        SimpleClassNullableOfIntToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToIntNullable _$SimpleClassOfObjectToIntNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToIntNullable(
    Map<String, int>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToIntNullableToJson(
        SimpleClassOfObjectToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToIntNullable
    _$SimpleClassNullableOfObjectToIntNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as int?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToIntNullableToJson(
        SimpleClassNullableOfObjectToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToIntNullable _$SimpleClassOfStringToIntNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToIntNullable(
    Map<String, int>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToIntNullableToJson(
        SimpleClassOfStringToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToIntNullable
    _$SimpleClassNullableOfStringToIntNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as int?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToIntNullableToJson(
        SimpleClassNullableOfStringToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToIntNullable _$SimpleClassOfUriToIntNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToIntNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e as int?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToIntNullableToJson(
        SimpleClassOfUriToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToIntNullable
    _$SimpleClassNullableOfUriToIntNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToIntNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), e as int?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToIntNullableToJson(
        SimpleClassNullableOfUriToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToNum _$SimpleClassOfBigIntToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToNum(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToNumToJson(
        SimpleClassOfBigIntToNum instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToNum _$SimpleClassNullableOfBigIntToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToNum(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToNumToJson(
        SimpleClassNullableOfBigIntToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToNum _$SimpleClassOfDateTimeToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToNum(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToNumToJson(
        SimpleClassOfDateTimeToNum instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToNum _$SimpleClassNullableOfDateTimeToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToNum(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToNumToJson(
        SimpleClassNullableOfDateTimeToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToNum _$SimpleClassOfDynamicToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToNum(
    Map<String, num>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToNumToJson(
        SimpleClassOfDynamicToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToNum _$SimpleClassNullableOfDynamicToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToNum(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToNumToJson(
        SimpleClassNullableOfDynamicToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToNum _$SimpleClassOfEnumTypeToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToNum(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToNumToJson(
        SimpleClassOfEnumTypeToNum instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToNum _$SimpleClassNullableOfEnumTypeToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToNum(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToNumToJson(
        SimpleClassNullableOfEnumTypeToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToNum _$SimpleClassOfIntToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToNum(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToNumToJson(
        SimpleClassOfIntToNum instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToNum _$SimpleClassNullableOfIntToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToNum(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToNumToJson(
        SimpleClassNullableOfIntToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToNum _$SimpleClassOfObjectToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToNum(
    Map<String, num>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToNumToJson(
        SimpleClassOfObjectToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToNum _$SimpleClassNullableOfObjectToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToNum(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToNumToJson(
        SimpleClassNullableOfObjectToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToNum _$SimpleClassOfStringToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToNum(
    Map<String, num>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToNumToJson(
        SimpleClassOfStringToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToNum _$SimpleClassNullableOfStringToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToNum(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToNumToJson(
        SimpleClassNullableOfStringToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToNum _$SimpleClassOfUriToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToNum(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToNumToJson(
        SimpleClassOfUriToNum instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToNum _$SimpleClassNullableOfUriToNumFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToNum(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToNumToJson(
        SimpleClassNullableOfUriToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToNumNullable _$SimpleClassOfBigIntToNumNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToNumNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e as num?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToNumNullableToJson(
        SimpleClassOfBigIntToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToNumNullable
    _$SimpleClassNullableOfBigIntToNumNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToNumNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e as num?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToNumNullableToJson(
        SimpleClassNullableOfBigIntToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToNumNullable _$SimpleClassOfDateTimeToNumNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToNumNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e as num?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToNumNullableToJson(
        SimpleClassOfDateTimeToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToNumNullable
    _$SimpleClassNullableOfDateTimeToNumNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToNumNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e as num?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToNumNullableToJson(
        SimpleClassNullableOfDateTimeToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToNumNullable _$SimpleClassOfDynamicToNumNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToNumNullable(
    Map<String, num>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToNumNullableToJson(
        SimpleClassOfDynamicToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToNumNullable
    _$SimpleClassNullableOfDynamicToNumNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToNumNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as num?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToNumNullableToJson(
        SimpleClassNullableOfDynamicToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToNumNullable _$SimpleClassOfEnumTypeToNumNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToNumNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as num?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToNumNullableToJson(
        SimpleClassOfEnumTypeToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToNumNullable
    _$SimpleClassNullableOfEnumTypeToNumNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToNumNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as num?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToNumNullableToJson(
        SimpleClassNullableOfEnumTypeToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToNumNullable _$SimpleClassOfIntToNumNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToNumNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e as num?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToNumNullableToJson(
        SimpleClassOfIntToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToNumNullable
    _$SimpleClassNullableOfIntToNumNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToNumNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), e as num?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToNumNullableToJson(
        SimpleClassNullableOfIntToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToNumNullable _$SimpleClassOfObjectToNumNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToNumNullable(
    Map<String, num>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToNumNullableToJson(
        SimpleClassOfObjectToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToNumNullable
    _$SimpleClassNullableOfObjectToNumNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToNumNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as num?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToNumNullableToJson(
        SimpleClassNullableOfObjectToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToNumNullable _$SimpleClassOfStringToNumNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToNumNullable(
    Map<String, num>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToNumNullableToJson(
        SimpleClassOfStringToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToNumNullable
    _$SimpleClassNullableOfStringToNumNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToNumNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as num?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToNumNullableToJson(
        SimpleClassNullableOfStringToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToNumNullable _$SimpleClassOfUriToNumNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToNumNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e as num?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToNumNullableToJson(
        SimpleClassOfUriToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToNumNullable
    _$SimpleClassNullableOfUriToNumNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToNumNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), e as num?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToNumNullableToJson(
        SimpleClassNullableOfUriToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToObject _$SimpleClassOfBigIntToObjectFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToObject(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToObjectToJson(
        SimpleClassOfBigIntToObject instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToObject
    _$SimpleClassNullableOfBigIntToObjectFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToObject(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToObjectToJson(
        SimpleClassNullableOfBigIntToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToObject _$SimpleClassOfDateTimeToObjectFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToObject(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToObjectToJson(
        SimpleClassOfDateTimeToObject instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToObject
    _$SimpleClassNullableOfDateTimeToObjectFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToObject(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToObjectToJson(
        SimpleClassNullableOfDateTimeToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToObject _$SimpleClassOfDynamicToObjectFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToObject(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToObjectToJson(
        SimpleClassOfDynamicToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToObject
    _$SimpleClassNullableOfDynamicToObjectFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToObject(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToObjectToJson(
        SimpleClassNullableOfDynamicToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToObject _$SimpleClassOfEnumTypeToObjectFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToObject(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToObjectToJson(
        SimpleClassOfEnumTypeToObject instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToObject
    _$SimpleClassNullableOfEnumTypeToObjectFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToObject(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToObjectToJson(
        SimpleClassNullableOfEnumTypeToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToObject _$SimpleClassOfIntToObjectFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToObject(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToObjectToJson(
        SimpleClassOfIntToObject instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToObject _$SimpleClassNullableOfIntToObjectFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToObject(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToObjectToJson(
        SimpleClassNullableOfIntToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToObject _$SimpleClassOfObjectToObjectFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToObject(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToObjectToJson(
        SimpleClassOfObjectToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToObject
    _$SimpleClassNullableOfObjectToObjectFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToObject(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToObjectToJson(
        SimpleClassNullableOfObjectToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToObject _$SimpleClassOfStringToObjectFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToObject(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToObjectToJson(
        SimpleClassOfStringToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToObject
    _$SimpleClassNullableOfStringToObjectFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToObject(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToObjectToJson(
        SimpleClassNullableOfStringToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToObject _$SimpleClassOfUriToObjectFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToObject(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToObjectToJson(
        SimpleClassOfUriToObject instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToObject _$SimpleClassNullableOfUriToObjectFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToObject(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), e as Object),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToObjectToJson(
        SimpleClassNullableOfUriToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToObjectNullable
    _$SimpleClassOfBigIntToObjectNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfBigIntToObjectNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToObjectNullableToJson(
        SimpleClassOfBigIntToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToObjectNullable
    _$SimpleClassNullableOfBigIntToObjectNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToObjectNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToObjectNullableToJson(
        SimpleClassNullableOfBigIntToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToObjectNullable
    _$SimpleClassOfDateTimeToObjectNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToObjectNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToObjectNullableToJson(
        SimpleClassOfDateTimeToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToObjectNullable
    _$SimpleClassNullableOfDateTimeToObjectNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToObjectNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToObjectNullableToJson(
        SimpleClassNullableOfDateTimeToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToObjectNullable
    _$SimpleClassOfDynamicToObjectNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfDynamicToObjectNullable(
    json['value'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToObjectNullableToJson(
        SimpleClassOfDynamicToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToObjectNullable
    _$SimpleClassNullableOfDynamicToObjectNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToObjectNullable(
    json['value'] as Map<String, dynamic>?,
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToObjectNullableToJson(
        SimpleClassNullableOfDynamicToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToObjectNullable
    _$SimpleClassOfEnumTypeToObjectNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToObjectNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToObjectNullableToJson(
        SimpleClassOfEnumTypeToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToObjectNullable
    _$SimpleClassNullableOfEnumTypeToObjectNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToObjectNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToObjectNullableToJson(
        SimpleClassNullableOfEnumTypeToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToObjectNullable _$SimpleClassOfIntToObjectNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToObjectNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToObjectNullableToJson(
        SimpleClassOfIntToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToObjectNullable
    _$SimpleClassNullableOfIntToObjectNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToObjectNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToObjectNullableToJson(
        SimpleClassNullableOfIntToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToObjectNullable
    _$SimpleClassOfObjectToObjectNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfObjectToObjectNullable(
    json['value'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToObjectNullableToJson(
        SimpleClassOfObjectToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToObjectNullable
    _$SimpleClassNullableOfObjectToObjectNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToObjectNullable(
    json['value'] as Map<String, dynamic>?,
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToObjectNullableToJson(
        SimpleClassNullableOfObjectToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToObjectNullable
    _$SimpleClassOfStringToObjectNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfStringToObjectNullable(
    json['value'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$SimpleClassOfStringToObjectNullableToJson(
        SimpleClassOfStringToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToObjectNullable
    _$SimpleClassNullableOfStringToObjectNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToObjectNullable(
    json['value'] as Map<String, dynamic>?,
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToObjectNullableToJson(
        SimpleClassNullableOfStringToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToObjectNullable _$SimpleClassOfUriToObjectNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToObjectNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToObjectNullableToJson(
        SimpleClassOfUriToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToObjectNullable
    _$SimpleClassNullableOfUriToObjectNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToObjectNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToObjectNullableToJson(
        SimpleClassNullableOfUriToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToString _$SimpleClassOfBigIntToStringFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToString(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToStringToJson(
        SimpleClassOfBigIntToString instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToString
    _$SimpleClassNullableOfBigIntToStringFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToString(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToStringToJson(
        SimpleClassNullableOfBigIntToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToString _$SimpleClassOfDateTimeToStringFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToString(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToStringToJson(
        SimpleClassOfDateTimeToString instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToString
    _$SimpleClassNullableOfDateTimeToStringFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToString(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToStringToJson(
        SimpleClassNullableOfDateTimeToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToString _$SimpleClassOfDynamicToStringFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToString(
    Map<String, String>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToStringToJson(
        SimpleClassOfDynamicToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToString
    _$SimpleClassNullableOfDynamicToStringFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToString(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToStringToJson(
        SimpleClassNullableOfDynamicToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToString _$SimpleClassOfEnumTypeToStringFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToString(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToStringToJson(
        SimpleClassOfEnumTypeToString instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToString
    _$SimpleClassNullableOfEnumTypeToStringFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToString(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToStringToJson(
        SimpleClassNullableOfEnumTypeToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToString _$SimpleClassOfIntToStringFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToString(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToStringToJson(
        SimpleClassOfIntToString instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToString _$SimpleClassNullableOfIntToStringFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToString(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToStringToJson(
        SimpleClassNullableOfIntToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToString _$SimpleClassOfObjectToStringFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToString(
    Map<String, String>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToStringToJson(
        SimpleClassOfObjectToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToString
    _$SimpleClassNullableOfObjectToStringFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToString(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToStringToJson(
        SimpleClassNullableOfObjectToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToString _$SimpleClassOfStringToStringFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToString(
    Map<String, String>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToStringToJson(
        SimpleClassOfStringToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToString
    _$SimpleClassNullableOfStringToStringFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToString(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToStringToJson(
        SimpleClassNullableOfStringToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToString _$SimpleClassOfUriToStringFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToString(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToStringToJson(
        SimpleClassOfUriToString instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToString _$SimpleClassNullableOfUriToStringFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToString(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToStringToJson(
        SimpleClassNullableOfUriToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToStringNullable
    _$SimpleClassOfBigIntToStringNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfBigIntToStringNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e as String?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToStringNullableToJson(
        SimpleClassOfBigIntToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToStringNullable
    _$SimpleClassNullableOfBigIntToStringNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToStringNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e as String?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToStringNullableToJson(
        SimpleClassNullableOfBigIntToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToStringNullable
    _$SimpleClassOfDateTimeToStringNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToStringNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e as String?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToStringNullableToJson(
        SimpleClassOfDateTimeToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToStringNullable
    _$SimpleClassNullableOfDateTimeToStringNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToStringNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e as String?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToStringNullableToJson(
        SimpleClassNullableOfDateTimeToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToStringNullable
    _$SimpleClassOfDynamicToStringNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfDynamicToStringNullable(
    Map<String, String>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToStringNullableToJson(
        SimpleClassOfDynamicToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToStringNullable
    _$SimpleClassNullableOfDynamicToStringNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToStringNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToStringNullableToJson(
        SimpleClassNullableOfDynamicToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToStringNullable
    _$SimpleClassOfEnumTypeToStringNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToStringNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as String?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToStringNullableToJson(
        SimpleClassOfEnumTypeToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToStringNullable
    _$SimpleClassNullableOfEnumTypeToStringNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToStringNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as String?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToStringNullableToJson(
        SimpleClassNullableOfEnumTypeToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToStringNullable _$SimpleClassOfIntToStringNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToStringNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e as String?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToStringNullableToJson(
        SimpleClassOfIntToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToStringNullable
    _$SimpleClassNullableOfIntToStringNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToStringNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), e as String?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToStringNullableToJson(
        SimpleClassNullableOfIntToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToStringNullable
    _$SimpleClassOfObjectToStringNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfObjectToStringNullable(
    Map<String, String>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToStringNullableToJson(
        SimpleClassOfObjectToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToStringNullable
    _$SimpleClassNullableOfObjectToStringNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToStringNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToStringNullableToJson(
        SimpleClassNullableOfObjectToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToStringNullable
    _$SimpleClassOfStringToStringNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassOfStringToStringNullable(
    Map<String, String>.from(json['value'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToStringNullableToJson(
        SimpleClassOfStringToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToStringNullable
    _$SimpleClassNullableOfStringToStringNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToStringNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToStringNullableToJson(
        SimpleClassNullableOfStringToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToStringNullable _$SimpleClassOfUriToStringNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToStringNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e as String?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToStringNullableToJson(
        SimpleClassOfUriToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToStringNullable
    _$SimpleClassNullableOfUriToStringNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToStringNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), e as String?),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToStringNullableToJson(
        SimpleClassNullableOfUriToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToUri _$SimpleClassOfBigIntToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToUri(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToUriToJson(
        SimpleClassOfBigIntToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfBigIntToUri _$SimpleClassNullableOfBigIntToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToUri(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(BigInt.parse(k), Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToUriToJson(
        SimpleClassNullableOfBigIntToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfDateTimeToUri _$SimpleClassOfDateTimeToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToUri(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToUriToJson(
        SimpleClassOfDateTimeToUri instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e.toString())),
    };

SimpleClassNullableOfDateTimeToUri _$SimpleClassNullableOfDateTimeToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToUri(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(DateTime.parse(k), Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToUriToJson(
        SimpleClassNullableOfDateTimeToUri instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e.toString())),
    };

SimpleClassOfDynamicToUri _$SimpleClassOfDynamicToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToUri(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToUriToJson(
        SimpleClassOfDynamicToUri instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfDynamicToUri _$SimpleClassNullableOfDynamicToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToUri(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToUriToJson(
        SimpleClassNullableOfDynamicToUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfEnumTypeToUri _$SimpleClassOfEnumTypeToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToUri(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToUriToJson(
        SimpleClassOfEnumTypeToUri instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.toString())),
    };

SimpleClassNullableOfEnumTypeToUri _$SimpleClassNullableOfEnumTypeToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToUri(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToUriToJson(
        SimpleClassNullableOfEnumTypeToUri instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.toString())),
    };

SimpleClassOfIntToUri _$SimpleClassOfIntToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToUri(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToUriToJson(
        SimpleClassOfIntToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfIntToUri _$SimpleClassNullableOfIntToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToUri(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(int.parse(k), Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToUriToJson(
        SimpleClassNullableOfIntToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfObjectToUri _$SimpleClassOfObjectToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToUri(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToUriToJson(
        SimpleClassOfObjectToUri instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfObjectToUri _$SimpleClassNullableOfObjectToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToUri(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToUriToJson(
        SimpleClassNullableOfObjectToUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfStringToUri _$SimpleClassOfStringToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToUri(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToUriToJson(
        SimpleClassOfStringToUri instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfStringToUri _$SimpleClassNullableOfStringToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToUri(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToUriToJson(
        SimpleClassNullableOfStringToUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfUriToUri _$SimpleClassOfUriToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToUri(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToUriToJson(
        SimpleClassOfUriToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfUriToUri _$SimpleClassNullableOfUriToUriFromJson(
    Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToUri(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(Uri.parse(k), Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToUriToJson(
        SimpleClassNullableOfUriToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfBigIntToUriNullable _$SimpleClassOfBigIntToUriNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfBigIntToUriNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(BigInt.parse(k), e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToUriNullableToJson(
        SimpleClassOfBigIntToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfBigIntToUriNullable
    _$SimpleClassNullableOfBigIntToUriNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfBigIntToUriNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(BigInt.parse(k), e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToUriNullableToJson(
        SimpleClassNullableOfBigIntToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassOfDateTimeToUriNullable _$SimpleClassOfDateTimeToUriNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDateTimeToUriNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          DateTime.parse(k), e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToUriNullableToJson(
        SimpleClassOfDateTimeToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e?.toString())),
    };

SimpleClassNullableOfDateTimeToUriNullable
    _$SimpleClassNullableOfDateTimeToUriNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDateTimeToUriNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          DateTime.parse(k), e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToUriNullableToJson(
        SimpleClassNullableOfDateTimeToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e?.toString())),
    };

SimpleClassOfDynamicToUriNullable _$SimpleClassOfDynamicToUriNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfDynamicToUriNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToUriNullableToJson(
        SimpleClassOfDynamicToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfDynamicToUriNullable
    _$SimpleClassNullableOfDynamicToUriNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfDynamicToUriNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToUriNullableToJson(
        SimpleClassNullableOfDynamicToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfEnumTypeToUriNullable _$SimpleClassOfEnumTypeToUriNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfEnumTypeToUriNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k),
          e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToUriNullableToJson(
        SimpleClassOfEnumTypeToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.toString())),
    };

SimpleClassNullableOfEnumTypeToUriNullable
    _$SimpleClassNullableOfEnumTypeToUriNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfEnumTypeToUriNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k),
          e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToUriNullableToJson(
        SimpleClassNullableOfEnumTypeToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.toString())),
    };

SimpleClassOfIntToUriNullable _$SimpleClassOfIntToUriNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfIntToUriNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(int.parse(k), e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToUriNullableToJson(
        SimpleClassOfIntToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfIntToUriNullable
    _$SimpleClassNullableOfIntToUriNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfIntToUriNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(int.parse(k), e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToUriNullableToJson(
        SimpleClassNullableOfIntToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassOfObjectToUriNullable _$SimpleClassOfObjectToUriNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfObjectToUriNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToUriNullableToJson(
        SimpleClassOfObjectToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfObjectToUriNullable
    _$SimpleClassNullableOfObjectToUriNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfObjectToUriNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToUriNullableToJson(
        SimpleClassNullableOfObjectToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfStringToUriNullable _$SimpleClassOfStringToUriNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfStringToUriNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToUriNullableToJson(
        SimpleClassOfStringToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfStringToUriNullable
    _$SimpleClassNullableOfStringToUriNullableFromJson(
        Map<String, dynamic> json) {
  return SimpleClassNullableOfStringToUriNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToUriNullableToJson(
        SimpleClassNullableOfStringToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfUriToUriNullable _$SimpleClassOfUriToUriNullableFromJson(
    Map<String, dynamic> json) {
  return SimpleClassOfUriToUriNullable(
    (json['value'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(Uri.parse(k), e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToUriNullableToJson(
        SimpleClassOfUriToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfUriToUriNullable
    _$SimpleClassNullableOfUriToUriNullableFromJson(Map<String, dynamic> json) {
  return SimpleClassNullableOfUriToUriNullable(
    (json['value'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(Uri.parse(k), e == null ? null : Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToUriNullableToJson(
        SimpleClassNullableOfUriToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };
