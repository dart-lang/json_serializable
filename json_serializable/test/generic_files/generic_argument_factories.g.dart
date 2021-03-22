// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_argument_factories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericClassWithHelpers<T, S> _$GenericClassWithHelpersFromJson<T, S>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
  S Function(Object? json) fromJsonS,
) {
  return GenericClassWithHelpers<T, S>(
    fromJsonT(json['value']),
    (json['list'] as List<dynamic>).map(fromJsonT).toList(),
    (json['someSet'] as List<dynamic>).map(fromJsonS).toSet(),
  );
}

Map<String, dynamic> _$GenericClassWithHelpersToJson<T, S>(
  GenericClassWithHelpers<T, S> instance,
  Object? Function(T value) toJsonT,
  Object? Function(S value) toJsonS,
) =>
    <String, dynamic>{
      'value': toJsonT(instance.value),
      'list': instance.list.map(toJsonT).toList(),
      'someSet': instance.someSet.map(toJsonS).toList(),
    };

ConcreteClass _$ConcreteClassFromJson(Map<String, dynamic> json) {
  return ConcreteClass(
    GenericClassWithHelpers.fromJson(json['value'] as Map<String, dynamic>,
        (value) => value as int, (value) => value as String),
    GenericClassWithHelpers.fromJson(
        json['value2'] as Map<String, dynamic>,
        (value) => (value as num).toDouble(),
        (value) => BigInt.parse(value as String)),
    GenericClassWithHelpers.fromJson(
        json['value3'] as Map<String, dynamic>,
        (value) => (value as num?)?.toDouble(),
        (value) => value == null ? null : BigInt.parse(value as String)),
  );
}

Map<String, dynamic> _$ConcreteClassToJson(ConcreteClass instance) =>
    <String, dynamic>{
      'value': instance.value.toJson(
        (value) => value,
        (value) => value,
      ),
      'value2': instance.value2.toJson(
        (value) => value,
        (value) => value.toString(),
      ),
      'value3': instance.value3.toJson(
        (value) => value,
        (value) => value?.toString(),
      ),
    };
