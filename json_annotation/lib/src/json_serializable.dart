// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'allowed_keys_helpers.dart';
import 'checked_helpers.dart';
import 'json_key.dart';

part 'json_serializable.g.dart';

/// Values for the automatic field renaming behavior for [JsonSerializable].
enum FieldRename {
  /// Use the field name without changes.
  none,

  /// Encodes a field named `kebabCase` with a JSON key `kebab-case`.
  kebab,

  /// Encodes a field named `snakeCase` with a JSON key `snake_case`.
  snake
}

/// An annotation used to specify a class to generate code for.
class JsonSerializable {
  /// If `true`, [Map] types are *not* assumed to be [Map<String, dynamic>]
  /// – which is the default type of [Map] instances return by JSON decode in
  /// `dart:convert`.
  ///
  /// This will increase the code size, but allows [Map] types returned
  /// from other sources, such as `package:yaml`.
  ///
  /// *Note: in many cases the key values are still assumed to be [String]*.
  final bool anyMap;

  /// If `true`, generated `fromJson` functions include extra checks to validate
  /// proper deserialization of types.
  ///
  /// If an exception is thrown during deserialization, a
  /// [CheckedFromJsonException] is thrown.
  final bool checked;

  /// If `true` (the default), a private, static `_$ExampleFromJson` method
  /// is created in the generated part file.
  ///
  /// Call this method from a factory constructor added to the source class:
  ///
  /// ```dart
  /// @JsonSerializable()
  /// class Example {
  ///   // ...
  ///   factory Example.fromJson(Map<String, dynamic> json) =>
  ///     _$ExampleFromJson(json);
  /// }
  /// ```
  final bool createFactory;

  /// If `true` (the default), code for encoding JSON is generated for this
  /// class.
  ///
  /// By default, a private `_$ClassNameMixin` class is created
  /// in the generated part file which contains a `toJson` method.
  ///
  /// Mix in this class to the source class:
  ///
  /// ```dart
  /// @JsonSerializable()
  /// class Example extends Object with _$ExampleSerializerMixin {
  ///   // ...
  /// }
  /// ```
  ///
  /// If `json_serializable` is configured with
  /// `generateToJsonFunction: true`, then a top-level function is created
  /// that you can reference from your class.
  ///
  /// ```dart
  /// @JsonSerializable()
  /// class Example {
  ///   Map<String, dynamic> toJson() => _$ExampleToJson(this);
  /// }
  /// ```
  final bool createToJson;

  /// If `false` (the default), then any unrecognized keys passed to the
  /// generated FromJson factory will be ignored.
  ///
  /// If `true`, any unrecognized keys will be treated as an error.
  final bool disallowUnrecognizedKeys;

  /// If `true`, generated `toJson` methods will explicitly call `toJson` on
  /// nested objects.
  ///
  /// When using JSON encoding support in `dart:convert`, `toJson` is
  /// automatically called on objects, so the default behavior
  /// (`explicitToJson: false`) is to omit the `toJson` call.
  ///
  /// Example of `explicitToJson: false` (default)
  ///
  /// ```dart
  /// Map<String, dynamic> toJson() => {'child': child};
  /// ```
  ///
  /// Example of `explicitToJson: true`
  ///
  /// ```dart
  /// Map<String, dynamic> toJson() => {'child': child?.toJson()};
  /// ```
  final bool explicitToJson;

  /// Defines the automatic naming strategy when converting class field names
  /// into JSON map keys.
  ///
  /// With a value [FieldRename.none], the default, the name of the field is
  /// used without modification.
  ///
  /// See [FieldRename] for details on the other options.
  ///
  /// Note: the value for [JsonKey.name] takes precedence over this option for
  /// fields annotated with [JsonKey].
  final FieldRename fieldRename;

  /// Controls how `toJson` functionality is generated for all types processed
  /// by this generator.
  ///
  /// If `true` (the default), then a top-level function is created that you can
  /// reference from your class.
  ///
  /// ```dart
  /// @JsonSerializable()
  /// class Example {
  ///   // ...
  ///   Map<String, dynamic> toJson() => _$ExampleToJson(this);
  /// }
  /// ```
  ///
  /// If `false`, a private `_$ClassNameSerializerMixin` class is
  /// created in the generated part file which contains a `toJson` method.
  ///
  /// Mix in this class to the source class:
  ///
  /// ```dart
  /// @JsonSerializable()
  /// class Example extends Object with _$ExampleSerializerMixin {
  ///   // ...
  /// }
  /// ```
  final bool generateToJsonFunction;

  /// Whether the generator should include fields with `null` values in the
  /// serialized output.
  ///
  /// If `true` (the default), all fields are written to JSON, even if they are
  /// `null`.
  ///
  /// If a field is annotated with `JsonKey` with a non-`null` value for
  /// `includeIfNull`, that value takes precedent.
  final bool includeIfNull;

  /// When `true` (the default), `null` values are handled gracefully when
  /// serializing to JSON and when deserializing `null` and nonexistent values
  /// from a JSON map.
  ///
  /// Setting to `false` eliminates `null` verification in the generated code,
  /// which reduces the code size. Errors may be thrown at runtime if `null`
  /// values are encountered, but the original class should also implement
  /// `null` runtime validation if it's critical.
  final bool nullable;

  /// If `true`, wrappers are used to minimize the number of
  /// [Map] and [List] instances created during serialization.
  ///
  /// This will increase the code size, but it may improve runtime performance,
  /// especially for large object graphs.
  final bool useWrappers;

  /// Creates a new [JsonSerializable] instance.
  const JsonSerializable({
    this.anyMap,
    this.checked,
    this.createFactory,
    this.createToJson,
    this.disallowUnrecognizedKeys,
    this.explicitToJson,
    this.fieldRename,
    this.generateToJsonFunction,
    this.includeIfNull,
    this.nullable,
    this.useWrappers,
  });

  factory JsonSerializable.fromJson(Map<String, dynamic> json) =>
      _$JsonSerializableFromJson(json);

  /// An instance of [JsonSerializable] with all fields set to their default
  /// values.
  static const defaults = JsonSerializable(
    anyMap: false,
    checked: false,
    createFactory: true,
    createToJson: true,
    disallowUnrecognizedKeys: false,
    explicitToJson: false,
    fieldRename: FieldRename.none,
    generateToJsonFunction: true,
    includeIfNull: true,
    nullable: true,
    useWrappers: false,
  );

  /// Returns a new [JsonSerializable] instance with fields equal to the
  /// corresponding values in `this`, if not `null`.
  ///
  /// Otherwise, the returned value has the default value as defined in
  /// [defaults].
  JsonSerializable withDefaults() => JsonSerializable(
      anyMap: anyMap ?? defaults.anyMap,
      checked: checked ?? defaults.checked,
      createFactory: createFactory ?? defaults.createFactory,
      createToJson: createToJson ?? defaults.createToJson,
      disallowUnrecognizedKeys:
          disallowUnrecognizedKeys ?? defaults.disallowUnrecognizedKeys,
      explicitToJson: explicitToJson ?? defaults.explicitToJson,
      fieldRename: fieldRename ?? defaults.fieldRename,
      generateToJsonFunction:
          generateToJsonFunction ?? defaults.generateToJsonFunction,
      includeIfNull: includeIfNull ?? defaults.includeIfNull,
      nullable: nullable ?? defaults.nullable,
      useWrappers: useWrappers ?? defaults.useWrappers);

  Map<String, dynamic> toJson() => _$JsonSerializableToJson(this);
}
