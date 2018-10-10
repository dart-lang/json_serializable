// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
import 'dart:io';

import 'package:build/build.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/builder.dart';
import 'package:json_serializable/src/generator_config.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

import 'shared_config.dart';
import 'test_utils.dart';

void main() {
  test('empty', () async {
    final builder = jsonSerializable(BuilderOptions.empty);
    expect(builder, isNotNull);
  });

  test('valid default config', () async {
    final builder =
        jsonSerializable(BuilderOptions(generatorConfigDefaultJson));
    expect(builder, isNotNull);
  });

  test('valid, non-default config', () {
    expect(generatorConfigNonDefaultJson.keys,
        unorderedEquals(generatorConfigDefaultJson.keys));

    for (var entry in generatorConfigDefaultJson.entries) {
      expect(generatorConfigNonDefaultJson,
          containsPair(entry.key, isNot(entry.value)),
          reason: 'should have values that are different than the defaults');
    }

    final builder =
        jsonSerializable(BuilderOptions(generatorConfigNonDefaultJson));
    expect(builder, isNotNull);
  });

  test('config is null-protected', () {
    final nullValueMap = Map.fromEntries(
        generatorConfigDefaultJson.entries.map((e) => MapEntry(e.key, null)));

    final config = GeneratorConfig.fromJson(nullValueMap);
    expect(config.toJson(), generatorConfigDefaultJson);
  });

  test('readme config', () async {
    final configExampleContent = File('README.md')
        .readAsLinesSync()
        .skipWhile((line) => line != '```yaml')
        .skip(1)
        .takeWhile((line) => line != '```')
        .join('\n');

    var yaml = loadYaml(configExampleContent) as YamlMap;

    for (final key in [
      'targets',
      r'$default',
      'builders',
      'json_serializable',
      'options'
    ]) {
      yaml = yaml[key] as YamlMap;
    }

    final configMap = Map<String, dynamic>.from(yaml);

    expect(configMap.keys, unorderedEquals(generatorConfigDefaultJson.keys),
        reason: 'All supported keys are documented.');

    expect(GeneratorConfig.fromJson(configMap).toJson(),
        generatorConfigDefaultJson,
        reason: 'All keys specify their default value.');

    final builder = jsonSerializable(BuilderOptions(configMap));
    expect(builder, isNotNull);
  });

  test('unsupported configuration', () async {
    final matcher = const TypeMatcher<UnrecognizedKeysException>().having(
        (e) => e.unrecognizedKeys, 'unrecognizedKeys', [
      'unsupported'
    ]).having((e) => e.allowedKeys, 'allowedKeys',
        unorderedEquals(generatorConfigDefaultJson.keys));

    expect(
        () => jsonSerializable(const BuilderOptions({'unsupported': 'config'})),
        throwsA(matcher));
  });

  group('invalid config', () {
    test('validated for all supported keys', () {
      expect(_invalidConfig.keys, generatorConfigDefaultJson.keys);
    });
    for (final entry in _invalidConfig.entries) {
      test(entry.key, () {
        final config = Map<String, dynamic>.from(generatorConfigDefaultJson);
        config[entry.key] = entry.value;

        final matcher = (entry.key == 'field_rename')
            ? isArgumentError.having((e) => e.message, 'message',
                '`42` is not one of the supported values: none, kebab, snake')
            : isCastError;

        expect(
            () => jsonSerializable(BuilderOptions(config)), throwsA(matcher));
      });
    }
  });
}

const _invalidConfig = {
  'disallow_unrecognized_keys': 42,
  'create_factory': 42,
  'create_to_json': 42,
  'include_if_null': 42,
  'nullable': 42,
  'field_rename': 42,
  'any_map': 42,
  'use_wrappers': 42,
  'checked': 42,
  'explicit_to_json': 42,
  'generate_to_json_function': 42,
};
