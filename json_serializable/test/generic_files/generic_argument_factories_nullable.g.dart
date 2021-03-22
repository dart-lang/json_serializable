// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'generic_argument_factories_nullable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericClassWithHelpersNullable<T, S>
    _$GenericClassWithHelpersNullableFromJson<T, S>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
  S Function(Object? json) fromJsonS,
) {
  return GenericClassWithHelpersNullable<T, S>(
    value: _$nullableGenericFromJson(json['value'], fromJsonT),
    list: (json['list'] as List<dynamic>?)
        ?.map((e) => _$nullableGenericFromJson(e, fromJsonT))
        .toList(),
    someSet: (json['someSet'] as List<dynamic>?)
        ?.map((e) => _$nullableGenericFromJson(e, fromJsonS))
        .toSet(),
  );
}

Map<String, dynamic> _$GenericClassWithHelpersNullableToJson<T, S>(
  GenericClassWithHelpersNullable<T, S> instance,
  Object? Function(T value) toJsonT,
  Object? Function(S value) toJsonS,
) =>
    <String, dynamic>{
      'value': _$nullableGenericToJson(instance.value, toJsonT),
      'list': instance.list
          ?.map((e) => _$nullableGenericToJson(e, toJsonT))
          .toList(),
      'someSet': instance.someSet
          ?.map((e) => _$nullableGenericToJson(e, toJsonS))
          .toList(),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

ConcreteClassNullable _$ConcreteClassNullableFromJson(
    Map<String, dynamic> json) {
  return ConcreteClassNullable(
    GenericClassWithHelpersNullable.fromJson(
        json['value'] as Map<String, dynamic>,
        (value) => value as int,
        (value) => value as String),
    GenericClassWithHelpersNullable.fromJson(
        json['value2'] as Map<String, dynamic>,
        (value) => (value as num).toDouble(),
        (value) => BigInt.parse(value as String)),
    GenericClassWithHelpersNullable.fromJson(
        json['value3'] as Map<String, dynamic>,
        (value) => (value as num?)?.toDouble(),
        (value) => value == null ? null : BigInt.parse(value as String)),
  );
}

Map<String, dynamic> _$ConcreteClassNullableToJson(
        ConcreteClassNullable instance) =>
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
