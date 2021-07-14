// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'implicit_default_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultValueImplicit _$DefaultValueImplicitFromJson(
        Map<String, dynamic> json) =>
    DefaultValueImplicit(
      fieldBool: json['fieldBool'] as bool? ?? true,
      fieldString: json['fieldString'] as String? ?? 'string',
      fieldInt: json['fieldInt'] as int? ?? 42,
      fieldDouble: (json['fieldDouble'] as num?)?.toDouble() ?? 3.14,
      fieldListEmpty: json['fieldListEmpty'] as List<dynamic>? ?? const [],
      fieldSetEmpty:
          (json['fieldSetEmpty'] as List<dynamic>?)?.toSet() ?? const {},
      fieldMapEmpty: json['fieldMapEmpty'] as Map<String, dynamic>? ?? const {},
      fieldListSimple: (json['fieldListSimple'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [1, 2, 3],
      fieldSetSimple: (json['fieldSetSimple'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const {'entry1', 'entry2'},
      fieldMapSimple: (json['fieldMapSimple'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int),
          ) ??
          const {'answer': 42},
      fieldMapListString:
          (json['fieldMapListString'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(
                    k, (e as List<dynamic>).map((e) => e as String).toList()),
              ) ??
              const {
                'root': ['child']
              },
      fieldEnum:
          _$enumDecodeNullable(_$GreekEnumMap, json['fieldEnum']) ?? Greek.beta,
      constClass: json['constClass'] == null
          ? const ConstClass('value')
          : ConstClass.fromJson(json['constClass'] as Map<String, dynamic>),
      valueFromConverter: json['valueFromConverter'] == null
          ? const ConstClass('value')
          : const ConstClassConverter()
              .fromJson(json['valueFromConverter'] as String),
      valueFromFunction: json['valueFromFunction'] == null
          ? const ConstClass('value')
          : constClassFromJson(json['valueFromFunction'] as String),
    );

Map<String, dynamic> _$DefaultValueImplicitToJson(
        DefaultValueImplicit instance) =>
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
