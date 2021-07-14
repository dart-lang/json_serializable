// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_value.g_any_map__checked.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultValue _$DefaultValueFromJson(Map json) => $checkedCreate(
      'DefaultValue',
      json,
      ($checkedConvert) {
        final val = DefaultValue(
          $checkedConvert('fieldBool', (v) => v as bool? ?? true),
          $checkedConvert('fieldString', (v) => v as String? ?? 'string'),
          $checkedConvert('fieldInt', (v) => v as int? ?? 42),
          $checkedConvert(
              'fieldDouble', (v) => (v as num?)?.toDouble() ?? 3.14),
          $checkedConvert('fieldListEmpty', (v) => v as List<dynamic>? ?? []),
          $checkedConvert(
              'fieldSetEmpty', (v) => (v as List<dynamic>?)?.toSet() ?? {}),
          $checkedConvert('fieldMapEmpty', (v) => v as Map? ?? {}),
          $checkedConvert(
              'fieldListSimple',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as int).toList() ??
                  [1, 2, 3]),
          $checkedConvert(
              'fieldSetSimple',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toSet() ??
                  {'entry1', 'entry2'}),
          $checkedConvert(
              'fieldMapSimple',
              (v) =>
                  (v as Map?)?.map(
                    (k, e) => MapEntry(k as String, e as int),
                  ) ??
                  {'answer': 42}),
          $checkedConvert(
              'fieldMapListString',
              (v) =>
                  (v as Map?)?.map(
                    (k, e) => MapEntry(k as String,
                        (e as List<dynamic>).map((e) => e as String).toList()),
                  ) ??
                  {
                    'root': ['child']
                  }),
          $checkedConvert('fieldEnum',
              (v) => _$enumDecodeNullable(_$GreekEnumMap, v) ?? Greek.beta),
          constClass: $checkedConvert(
              'constClass',
              (v) => v == null
                  ? const ConstClass('value')
                  : ConstClass.fromJson(Map<String, dynamic>.from(v as Map))),
          valueFromConverter: $checkedConvert(
              'valueFromConverter',
              (v) => v == null
                  ? const ConstClass('value')
                  : const ConstClassConverter().fromJson(v as String)),
          valueFromFunction: $checkedConvert(
              'valueFromFunction',
              (v) => v == null
                  ? const ConstClass('value')
                  : constClassFromJson(v as String)),
        );
        return val;
      },
    );

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
      'constClass': instance.constClass,
      'valueFromConverter':
          const ConstClassConverter().toJson(instance.valueFromConverter),
      'valueFromFunction': constClassToJson(instance.valueFromFunction),
    };

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  for (var element in enumValues.entries) {
    if (element.value == source) {
      return element.key;
    }
  }
  return unknownValue;
}

const _$GreekEnumMap = {
  Greek.alpha: 'alpha',
  Greek.beta: 'beta',
  Greek.gamma: 'gamma',
  Greek.delta: 'delta',
};
