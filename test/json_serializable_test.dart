// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('!browser')
library json_serializable.test.json_generator_test;

import 'dart:async';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/src/string_source.dart';
import 'package:json_serializable/json_serializable.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'analysis_utils.dart';
import 'src/io.dart';
import 'test_utils.dart';

void main() {
  group('non-classes', () {
    test('const field', () async {
      expect(
          _runForElementNamed('theAnswer'),
          throwsInvalidGenerationSourceError(
              'Generator cannot target `const dynamic theAnswer`.',
              'Remove the JsonSerializable annotation from `const dynamic theAnswer`.'));
    });

    test('method', () async {
      expect(
          _runForElementNamed('annotatedMethod'),
          throwsInvalidGenerationSourceError(
              'Generator cannot target `annotatedMethod`.',
              'Remove the JsonSerializable annotation from `annotatedMethod`.'));
    });
  });
  group('unknown types', () {
    test('in constructor arguments', () async {
      expect(
          _runForElementNamed('UnknownCtorParamType'),
          throwsInvalidGenerationSourceError(
              'At least one constructor argument has an invalid type: `number`.',
              'Check names and imports.'));
    });

    test('in fields', () async {
      expect(
          _runForElementNamed('UnknownFieldType'),
          throwsInvalidGenerationSourceError(
              'At least one field has an invalid type: `number`.',
              'Check names and imports.'));
    });
  });

  group('unserializable types', () {
    test('for toJson', () async {
      expect(
          _runForElementNamed('NoSerializeFieldType'),
          throwsInvalidGenerationSourceError(
              'Could not generate `toJson` code for `Stopwatch watch`.',
              'Make sure all of the types are serializable.'));
    });

    test('for fromJson', () async {
      expect(
          _runForElementNamed('NoDeserializeFieldType'),
          throwsInvalidGenerationSourceError(
              'Could not generate fromJson code for `Stopwatch watch`.',
              'Make sure all of the types are serializable.'));
    });

    test('for toJson in Map key', () async {
      expect(
          _runForElementNamed('NoSerializeBadKey'),
          throwsInvalidGenerationSourceError(
              'Could not generate `toJson` code for `Map<int, DateTime> intDateTimeMap`.',
              'Make sure all of the types are serializable.'));
    });

    test('for fromJson', () async {
      expect(
          _runForElementNamed('NoDeserializeBadKey'),
          throwsInvalidGenerationSourceError(
              'Could not generate fromJson code for `Map<int, DateTime> intDateTimeMap`.',
              'Make sure all of the types are serializable.'));
    });
  });

  test('class with final fields', () async {
    var generateResult = await _runForElementNamed('FinalFields');
    expect(generateResult, contains("Map<String, dynamic> toJson()"));
  });

  test('unannotated classes no-op', () async {
    var output = await _runForElementNamed('NoAnnotation');

    expect(output, isNull);
  });

  group('valid inputs', () {
    test('class with no fields', () async {
      var output = await _runForElementNamed('Person');

      expect(output, isNotNull);

      // TODO: test the actual output
      // print(output);
    });

    test('class with ctor params', () async {
      var output = await _runForElementNamed('Order');
      expect(output, isNotNull);

      // TODO: test the actual output
      // print(output);
    });

    test('class with child json-able object', () async {
      var output = await _runForElementNamed('ParentObject');

      expect(output, contains('new ChildObject.fromJson'));
    });

    test('class with child list of json-able objects', () async {
      var output = await _runForElementNamed('ParentObjectWithChildren');

      expect(output, contains('.toList()'));
      expect(output, contains('new ChildObject.fromJson'));
    });

    test('class with child list of dynamic objects is left alone', () async {
      var output = await _runForElementNamed('ParentObjectWithDynamicChildren');

      expect(output, contains('children = json[\'children\'] as List;'));
    });

    test('class with list of int is cast for strong mode', () async {
      var output = await _runForElementNamed('Person');

      expect(output,
          contains("json['listOfInts'] as List)?.map((v0) => v0 as int)"));
    });
  });

  test('reads JsonKey annotations', () async {
    var output = await _runForElementNamed('Person');

    expect(output, contains("'h': height,"));
    expect(output, contains("..height = json['h']"));
  });
}

const _generator = const JsonSerializableGenerator();

Future<String> _runForElementNamed(String name) async {
  if (_compUnit == null) {
    _compUnit = await _getCompilationUnitForString(getPackagePath());
  }
  var library = _compUnit.element.library;
  var element =
      getElementsFromLibraryElement(library).singleWhere((e) => e.name == name);
  return _generator.generate(element, null);
}

Future<CompilationUnit> _getCompilationUnitForString(String projectPath) async {
  var source = new StringSource(_testSource, 'test content');

  var foundFiles = await getDartFiles(projectPath,
      searchList: [p.join(getPackagePath(), 'test', 'test_files')]);

  var context = await getAnalysisContextForProjectPath(projectPath, foundFiles);

  var libElement = context.computeLibraryElement(source);
  return context.resolveCompilationUnit(source, libElement);
}

CompilationUnit _compUnit;

const _testSource = r'''
import 'package:json_serializable/json_serializable.dart';

@JsonSerializable()
const theAnswer = 42;

@JsonSerializable()
void annotatedMethod() => null;

@JsonSerializable()
class Person {
  String firstName, lastName;
  @JsonKey("h")
  int height;
  DateTime dateOfBirth;
  dynamic dynamicType;
  var varType;
  List<int> listOfInts;
}

@JsonSerializable()
class Order {
  final String firstName, lastName;
  int height;
  DateTime dateOfBirth;

  Order(this.height, String firstName, [this.lastName]);
}

class NoAnnotation {
}

@JsonSerializable()
class FinalFields {
  final int a;
  int get b => 4;

  FinalFields(this.a);
}

@JsonSerializable()
class ParentObject {
  int number;
  String str;
  ChildObject child;
}

@JsonSerializable()
class ChildObject {
  int number;
  String str;

  factory ChildObject.fromJson(json) => null;
}

@JsonSerializable()
class ParentObjectWithChildren {
  int number;
  String str;
  List<ChildObject> children;
}

@JsonSerializable()
class ParentObjectWithDynamicChildren {
  int number;
  String str;
  List<dynamic> children;
}

@JsonSerializable()
class UnknownCtorParamType {
  int number;
  
  UnknownCtorParamType(Bob number) : this.number = number;
}

@JsonSerializable()
class UnknownFieldType {
  Bob number;
}

@JsonSerializable(createFactory: false)
class NoSerializeFieldType {
  Stopwatch watch;
}

@JsonSerializable(createToJson: false)
class NoDeserializeFieldType {
  Stopwatch watch;
}

@JsonSerializable(createFactory: false)
class NoSerializeBadKey {
  Map<int, DateTime> intDateTimeMap;
}

@JsonSerializable(createToJson: false)
class NoDeserializeBadKey {
  Map<int, DateTime> intDateTimeMap;
}
''';
