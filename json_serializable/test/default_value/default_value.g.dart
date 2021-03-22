// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultValue _$DefaultValueFromJson(Map<String, dynamic> json) {
  return DefaultValue(
    json['fieldBool'] as bool? ?? true,
    json['fieldString'] as String? ?? 'string',
    json['fieldInt'] as int? ?? 42,
    (json['fieldDouble'] as num?)?.toDouble() ?? 3.14,
    json['fieldListEmpty'] as List<dynamic>? ?? [],
    (json['fieldSetEmpty'] as List<dynamic>?)?.toSet() ?? {},
    json['fieldMapEmpty'] as Map<String, dynamic>? ?? {},
    (json['fieldListSimple'] as List<dynamic>?)
            ?.map((e) => e as int)
            .toList() ??
        [1, 2, 3],
    (json['fieldSetSimple'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toSet() ??
        {'entry1', 'entry2'},
    (json['fieldMapSimple'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, e as int),
        ) ??
        {'answer': 42},
    (json['fieldMapListString'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(
              k, (e as List<dynamic>).map((e) => e as String).toList()),
        ) ??
        {
          'root': ['child']
        },
    _$enumDecodeNullable(_$GreekEnumMap, json['fieldEnum']) ?? Greek.beta,
  );
}

Map<String, dynamic> _$DefaultValueToJson(DefaultValue instance) =>
    <String, dynamic>{
      'fieldBool': instance.fieldBool,
      'fieldString': instance.fieldString,
      'fieldInt': instance.fieldInt,
      'fieldDouble': instance.fieldDouble,
      'fieldListEmpty': instance.fieldListEmpty,
      'fieldSetEmpty': instance.fieldSetEmpty.toList(),
      'fieldMapEmpty': instance.fieldMapEmpty,
      'fieldListSimple': instance.fieldListSimple,
      'fieldSetSimple': instance.fieldSetSimple.toList(),
      'fieldMapSimple': instance.fieldMapSimple,
      'fieldMapListString': instance.fieldMapListString,
      'fieldEnum': _$GreekEnumMap[instance.fieldEnum],
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

const _$GreekEnumMap = {
  Greek.alpha: 'alpha',
  Greek.beta: 'beta',
  Greek.gamma: 'gamma',
  Greek.delta: 'delta',
};
