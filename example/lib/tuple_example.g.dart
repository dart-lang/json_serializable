// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuple_example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tuple<T, S> _$TupleFromJson<T, S>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
  S Function(Object? json) fromJsonS,
) {
  return Tuple<T, S>(
    fromJsonT(json['value1']),
    fromJsonS(json['value2']),
  );
}

Map<String, dynamic> _$TupleToJson<T, S>(
  Tuple<T, S> instance,
  Object? Function(T value) toJsonT,
  Object? Function(S value) toJsonS,
) =>
    <String, dynamic>{
      'value1': toJsonT(instance.value1),
      'value2': toJsonS(instance.value2),
    };

ConcreteClass _$ConcreteClassFromJson(Map<String, dynamic> json) {
  return ConcreteClass(
    Tuple.fromJson(json['tuple1'] as Map<String, dynamic>,
        (value) => value as int, (value) => DateTime.parse(value as String)),
    Tuple.fromJson(
        json['tuple2'] as Map<String, dynamic>,
        (value) => Duration(microseconds: value as int),
        (value) => BigInt.parse(value as String)),
  );
}

Map<String, dynamic> _$ConcreteClassToJson(ConcreteClass instance) =>
    <String, dynamic>{
      'tuple1': instance.tuple1.toJson(
        (value) => value,
        (value) => value.toIso8601String(),
      ),
      'tuple2': instance.tuple2.toJson(
        (value) => value.inMicroseconds,
        (value) => value.toString(),
      ),
    };
