// Copyright (c) 2021, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.12

import 'package:json_annotation/json_annotation.dart';

part 'generic_argument_factories_nullable.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class GenericClassWithHelpersNullable<T, S> {
  final T? value;

  final List<T?>? list;

  final Set<S?>? someSet;

  GenericClassWithHelpersNullable({
    this.value,
    this.list,
    this.someSet,
  });

  factory GenericClassWithHelpersNullable.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
    S Function(Object? json) fromJsonS,
  ) =>
      _$GenericClassWithHelpersNullableFromJson(json, fromJsonT, fromJsonS);

  Map<String, dynamic> toJson(
    Object? Function(T value) toJsonT,
    Object? Function(S value) toJsonS,
  ) =>
      _$GenericClassWithHelpersNullableToJson(this, toJsonT, toJsonS);
}

@JsonSerializable()
class ConcreteClassNullable {
  final GenericClassWithHelpersNullable<int, String> value;

  final GenericClassWithHelpersNullable<double, BigInt> value2;

  // Regression scenario for google/json_serializable.dart#803
  final GenericClassWithHelpersNullable<double?, BigInt?> value3;

  ConcreteClassNullable(this.value, this.value2, this.value3);

  factory ConcreteClassNullable.fromJson(Map<String, dynamic> json) =>
      _$ConcreteClassNullableFromJson(json);

  Map<String, dynamic> toJson() => _$ConcreteClassNullableToJson(this);
}
