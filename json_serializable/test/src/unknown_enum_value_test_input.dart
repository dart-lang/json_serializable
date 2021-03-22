part of '_json_serializable_test_input.dart';

@ShouldGenerate(
  r'''
UnknownEnumValue _$UnknownEnumValueFromJson(Map<String, dynamic> json) {
  return UnknownEnumValue()
    ..value = _$enumDecodeNullable(
            _$UnknownEnumValueItemsEnumMap, json['value'],
            unknownValue: UnknownEnumValueItems.vUnknown) ??
        UnknownEnumValueItems.vNull;
}

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

const _$UnknownEnumValueItemsEnumMap = {
  UnknownEnumValueItems.v0: 'v0',
  UnknownEnumValueItems.v1: 'v1',
  UnknownEnumValueItems.v2: 'v2',
  UnknownEnumValueItems.vUnknown: 'vUnknown',
  UnknownEnumValueItems.vNull: 'vNull',
};
''',
)
@JsonSerializable(
  createToJson: false,
)
class UnknownEnumValue {
  @JsonKey(
    defaultValue: UnknownEnumValueItems.vNull,
    unknownEnumValue: UnknownEnumValueItems.vUnknown,
  )
  UnknownEnumValueItems? value;
}

enum UnknownEnumValueItems { v0, v1, v2, vUnknown, vNull }

@ShouldThrow(
  'Error with `@JsonKey` on `value`. `unknownEnumValue` has type '
  '`int`, but the provided unknownEnumValue is of type '
  '`WrongEnumType`.',
)
@JsonSerializable()
class UnknownEnumValueListWrongType {
  @JsonKey(unknownEnumValue: WrongEnumType.otherValue)
  late List<int> value;
}

@ShouldThrow(
  'Error with `@JsonKey` on `value`. `unknownEnumValue` has type '
  '`UnknownEnumValueItems`, but the provided unknownEnumValue is of type '
  '`WrongEnumType`.',
)
@JsonSerializable()
class UnknownEnumValueListWrongEnumType {
  @JsonKey(unknownEnumValue: WrongEnumType.otherValue)
  late List<UnknownEnumValueItems> value;
}

enum WrongEnumType { otherValue }

@ShouldThrow(
  'Error with `@JsonKey` on `value`. `unknownEnumValue` has type '
  '`UnknownEnumValueItems`, but the provided unknownEnumValue is of type '
  '`WrongEnumType`.',
)
@JsonSerializable()
class UnknownEnumValueWrongEnumType {
  @JsonKey(unknownEnumValue: WrongEnumType.otherValue)
  late UnknownEnumValueItems value;
}

@ShouldThrow(
  'Error with `@JsonKey` on `value`. The value provided '
  'for `unknownEnumValue` must be a matching enum.',
)
@JsonSerializable()
class UnknownEnumValueNotEnumValue {
  @JsonKey(unknownEnumValue: 'not enum value')
  UnknownEnumValueItems? value;
}

@ShouldThrow(
  'Error with `@JsonKey` on `value`. `unknownEnumValue` can only be set on '
  'fields of type enum or on Iterable, List, or Set instances of an enum type.',
)
@JsonSerializable()
class UnknownEnumValueNotEnumField {
  @JsonKey(unknownEnumValue: UnknownEnumValueItems.vUnknown)
  int? value;
}
