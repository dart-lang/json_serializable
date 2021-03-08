// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.9

@TestOn('vm')
import 'dart:convert';
import 'dart:io';

import 'package:checked_yaml/checked_yaml.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

import 'src/build_config.dart';

List<String> get _tests => Directory(p.join('test', 'src'))
    .listSync()
    .where((fse) => fse is File && p.extension(fse.path) == '.yaml')
    .map((fse) => fse.path)
    .toList();

void main() {
  group('valid configurations', () {
    for (final filePath in _tests) {
      test(p.basenameWithoutExtension(filePath), () {
        final content = File(filePath).readAsStringSync();
        final yamlContent = loadYaml(
          content,
          sourceUrl: Uri.file(filePath),
        ) as YamlMap;

        try {
          final config = Config.fromJson(yamlContent);
          expect(config, isNotNull);
        } on CheckedFromJsonException catch (e) {
          if (e.message != null) {
            print(toParsedYamlException(e).formattedMessage);
          }
          rethrow;
        }
      });
    }
  });

  group('bad configs', () {
    var index = 0;
    for (final entry in _badConfigs.entries) {
      test('${index++}', () {
        final yamlContent =
            loadYaml(entry.key, sourceUrl: Uri.file('file.yaml')) as YamlMap;

        expect(yamlContent, isNotNull);
        printOnFailure(entry.key);

        try {
          final config = Config.fromJson(yamlContent);
          print(loudEncode(config));
          fail('parse should fail');
        } on CheckedFromJsonException catch (e) {
          final prettyOutput = toParsedYamlException(e).formattedMessage;
          printOnFailure("r'''\n$prettyOutput'''");
          expect(prettyOutput, entry.value);
        }
      });
    }
  });
}

const _badConfigs = {
  r'''
builders:
- a
- b
''': r'''
line 2, column 1 of file.yaml: Unsupported value for "builders". type 'YamlList' is not a subtype of type 'Map<dynamic, dynamic>' in type cast
  ╷
2 │ ┌ - a
3 │ └ - b
  ╵''',
  r'''
builders:
  sample:
    defaultEnumTest: bob
''': r'''
line 3, column 22 of file.yaml: Unsupported value for "defaultEnumTest". `bob` is not one of the supported values: none, dependents, all_packages, root_package
  ╷
3 │     defaultEnumTest: bob
  │                      ^^^
  ╵''',
  r'''
builders:
  a:
    target: 42
  ''': r'''
line 3, column 13 of file.yaml: Unsupported value for "target". type 'int' is not a subtype of type 'String?' in type cast
  ╷
3 │     target: 42
  │             ^^
  ╵''',
  r'''
builders:
  a:
    target: "a target"
    auto_apply: unsupported
''': r'''
line 4, column 17 of file.yaml: Unsupported value for "auto_apply". `unsupported` is not one of the supported values: none, dependents, all_packages, root_package
  ╷
4 │     auto_apply: unsupported
  │                 ^^^^^^^^^^^
  ╵''',
  r'''
builders:
  a:
    builder_factories: []
  ''': r'''
line 3, column 24 of file.yaml: Unsupported value for "builder_factories". Must have at least one value.
  ╷
3 │     builder_factories: []
  │                        ^^
  ╵''',
  r'''
builders:
  a:
    foo: bar
    baz: zap
''': r'''
line 3, column 5 of file.yaml: Unrecognized keys: [foo, baz]; supported keys: [target, import, is_optional, configLocation, auto_apply, build_to, defaultEnumTest, builder_factories, applies_builders, required_inputs, build_extensions]
  ╷
3 │     foo: bar
  │     ^^^
  ╵''',
  r'''
  bob: cool''': r'''
line 1, column 3 of file.yaml: Required keys are missing: builders.
  ╷
1 │   bob: cool
  │   ^^^^^^^^^
  ╵''',
  r'''
builders:
  builder_name:
    auto_apply:''': '''
line 3, column 5 of file.yaml: These keys had `null` values, which is not allowed: [auto_apply]
  ╷
3 │     auto_apply:
  │     ^^^^^^^^^^
  ╵''',
  r'''
builders:
  builder_name:
    builder_factories: ["scssBuilder"]
    configLocation: "user@host:invalid/uri"''': '''
line 4, column 21 of file.yaml: Unsupported value for "configLocation". Illegal scheme character at offset 4.
  ╷
4 │     configLocation: "user@host:invalid/uri"
  │                     ^^^^^^^^^^^^^^^^^^^^^^^
  ╵'''
};

T roundTripObject<T>(
  T object,
  T Function(Map<String, dynamic> json) factory, {
  bool skipObjectEquals = false,
}) {
  final data = loudEncode(object);

  final object2 = factory(json.decode(data) as Map<String, dynamic>);

  if (!skipObjectEquals) {
    expect(object2, equals(object));
  }

  final json2 = loudEncode(object2);

  expect(json2, equals(data));
  return object2;
}

/// Prints out nested causes before throwing `JsonUnsupportedObjectError`.
String loudEncode(Object object) {
  try {
    return const JsonEncoder.withIndent(' ').convert(object);
  } on JsonUnsupportedObjectError catch (e) // ignore: avoid_catching_errors
  {
    var error = e;
    do {
      final cause = error.cause;
      print(cause);
      error = (cause is JsonUnsupportedObjectError) ? cause : null;
    } while (error != null);
    rethrow;
  }
}
