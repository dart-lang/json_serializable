// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

/// Represents values from [JsonKey] when merged with local configuration.
class KeyConfig {
  final Object? defaultValue;

  final bool disallowNullValue;

  final bool ignore;

  final bool includeIfNull;

  final String name;

  final bool required;

  final Object? unknownEnumValue;

  final bool extra;

  KeyConfig({
    required this.defaultValue,
    required this.disallowNullValue,
    required this.ignore,
    required this.includeIfNull,
    required this.name,
    required this.required,
    required this.unknownEnumValue,
    required this.extra,
  });
}

/// Represents values from [JsonSerializable] when merged with local
/// configuration.
///
/// Values are all known, so types are non-nullable.
class ClassConfig implements JsonSerializable {
  @override
  final bool anyMap;

  @override
  final bool checked;

  @override
  final bool createFactory;

  @override
  final bool createToJson;

  @override
  final bool disallowUnrecognizedKeys;

  @override
  final bool explicitToJson;

  @override
  final FieldRename fieldRename;

  @override
  final bool genericArgumentFactories;

  @override
  final bool ignoreUnannotated;

  @override
  final bool includeIfNull;

  const ClassConfig({
    required this.anyMap,
    required this.checked,
    required this.createFactory,
    required this.createToJson,
    required this.disallowUnrecognizedKeys,
    required this.explicitToJson,
    required this.fieldRename,
    required this.genericArgumentFactories,
    required this.ignoreUnannotated,
    required this.includeIfNull,
  });

  /// An instance of [JsonSerializable] with all fields set to their default
  /// values.
  static const defaults = ClassConfig(
    anyMap: false,
    checked: false,
    createFactory: true,
    createToJson: true,
    disallowUnrecognizedKeys: false,
    explicitToJson: false,
    fieldRename: FieldRename.none,
    genericArgumentFactories: false,
    ignoreUnannotated: false,
    includeIfNull: true,
  );

  @override
  Map<String, dynamic> toJson() => _$JsonSerializableToJson(this);

  @override
  JsonSerializable withDefaults() => this;
}

const _$FieldRenameEnumMap = {
  FieldRename.none: 'none',
  FieldRename.kebab: 'kebab',
  FieldRename.snake: 'snake',
  FieldRename.pascal: 'pascal',
};

Map<String, dynamic> _$JsonSerializableToJson(JsonSerializable instance) =>
    <String, dynamic>{
      'any_map': instance.anyMap,
      'checked': instance.checked,
      'create_factory': instance.createFactory,
      'create_to_json': instance.createToJson,
      'disallow_unrecognized_keys': instance.disallowUnrecognizedKeys,
      'explicit_to_json': instance.explicitToJson,
      'field_rename': _$FieldRenameEnumMap[instance.fieldRename],
      'generic_argument_factories': instance.genericArgumentFactories,
      'ignore_unannotated': instance.ignoreUnannotated,
      'include_if_null': instance.includeIfNull,
    };
