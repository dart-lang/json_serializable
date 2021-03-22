// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of '_json_serializable_test_input.dart';

@ShouldGenerate(r'''
JsonConverterNamedCtor<E> _$JsonConverterNamedCtorFromJson<E>(
    Map<String, dynamic> json) {
  return JsonConverterNamedCtor<E>()
    ..value = const _DurationMillisecondConverter.named()
        .fromJson(json['value'] as int)
    ..genericValue =
        _GenericConverter<E>.named().fromJson(json['genericValue'] as int)
    ..keyAnnotationFirst =
        JsonConverterNamedCtor._fromJson(json['keyAnnotationFirst'] as int);
}

Map<String, dynamic> _$JsonConverterNamedCtorToJson<E>(
        JsonConverterNamedCtor<E> instance) =>
    <String, dynamic>{
      'value':
          const _DurationMillisecondConverter.named().toJson(instance.value),
      'genericValue':
          _GenericConverter<E>.named().toJson(instance.genericValue),
      'keyAnnotationFirst':
          JsonConverterNamedCtor._toJson(instance.keyAnnotationFirst),
    };
''')
@JsonSerializable()
@_DurationMillisecondConverter.named()
@_GenericConverter.named()
class JsonConverterNamedCtor<E> {
  late Duration value;
  late E genericValue;

  // Field annotations have precedence over class annotations
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  late Duration keyAnnotationFirst;

  static Duration _fromJson(int value) => throw UnimplementedError();

  static int _toJson(Duration object) => 42;
}

@ShouldGenerate(r'''
JsonConvertOnField<E> _$JsonConvertOnFieldFromJson<E>(
    Map<String, dynamic> json) {
  return JsonConvertOnField<E>()
    ..annotatedField = const _DurationMillisecondConverter()
        .fromJson(json['annotatedField'] as int)
    ..annotatedWithNamedCtor = const _DurationMillisecondConverter.named()
        .fromJson(json['annotatedWithNamedCtor'] as int)
    ..classAnnotatedWithField =
        _durationConverter.fromJson(json['classAnnotatedWithField'] as int)
    ..genericValue =
        _GenericConverter<E>().fromJson(json['genericValue'] as int);
}

Map<String, dynamic> _$JsonConvertOnFieldToJson<E>(
        JsonConvertOnField<E> instance) =>
    <String, dynamic>{
      'annotatedField':
          const _DurationMillisecondConverter().toJson(instance.annotatedField),
      'annotatedWithNamedCtor': const _DurationMillisecondConverter.named()
          .toJson(instance.annotatedWithNamedCtor),
      'classAnnotatedWithField':
          _durationConverter.toJson(instance.classAnnotatedWithField),
      'genericValue': _GenericConverter<E>().toJson(instance.genericValue),
    };
''')
@JsonSerializable()
@_durationConverter
class JsonConvertOnField<E> {
  @_DurationMillisecondConverter()
  late Duration annotatedField;

  @_DurationMillisecondConverter.named()
  late Duration annotatedWithNamedCtor;

  late Duration classAnnotatedWithField;

  @_GenericConverter()
  late E genericValue;
}

class _GenericConverter<T> implements JsonConverter<T, int> {
  const _GenericConverter();

  const _GenericConverter.named();

  @override
  T fromJson(int json) => throw UnimplementedError();

  @override
  int toJson(T object) => 0;
}

@ShouldThrow(
  '`JsonConverter` implementations can have no more than one type argument. '
  '`_BadConverter` has 2.',
  element: '_BadConverter',
)
@JsonSerializable()
@_BadConverter()
class JsonConverterWithBadTypeArg<T> {
  late T value;
}

class _BadConverter<T, S> implements JsonConverter<S, int> {
  const _BadConverter();

  @override
  S fromJson(int json) => throw UnimplementedError();

  @override
  int toJson(S object) => 0;
}

@ShouldThrow(
  'Found more than one matching converter for `Duration`.',
  element: '',
)
@JsonSerializable()
@_durationConverter
@_DurationMillisecondConverter()
class JsonConverterDuplicateAnnotations {
  late Duration value;
}

const _durationConverter = _DurationMillisecondConverter();

class _DurationMillisecondConverter implements JsonConverter<Duration, int> {
  const _DurationMillisecondConverter();

  const _DurationMillisecondConverter.named();

  @override
  Duration fromJson(int json) => throw UnimplementedError();

  @override
  int toJson(Duration object) => throw UnimplementedError();
}

@ShouldThrow(
  'Generators with constructor arguments are not supported.',
  element: '',
)
@JsonSerializable()
@_ConverterWithCtorParams(42)
class JsonConverterCtorParams {
  late Duration value;
}

class _ConverterWithCtorParams implements JsonConverter<Duration, int> {
  final int param;

  const _ConverterWithCtorParams(this.param);

  @override
  Duration fromJson(int json) => throw UnimplementedError();

  @override
  int toJson(Duration object) => 0;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$JsonConverterOnGetterToJson(
        JsonConverterOnGetter instance) =>
    <String, dynamic>{
      'annotatedGetter':
          const _NeedsConversionConverter().toJson(instance.annotatedGetter),
    };
''')
@JsonSerializable(createFactory: false)
class JsonConverterOnGetter {
  @JsonKey()
  @_NeedsConversionConverter()
  _NeedsConversion get annotatedGetter => _NeedsConversion();
}

class _NeedsConversion {}

class _NeedsConversionConverter
    implements JsonConverter<_NeedsConversion, int> {
  const _NeedsConversionConverter();

  @override
  _NeedsConversion fromJson(int json) => _NeedsConversion();

  @override
  int toJson(_NeedsConversion object) => 0;
}
