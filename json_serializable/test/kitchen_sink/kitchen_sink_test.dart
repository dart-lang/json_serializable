// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.12

import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

import '../test_utils.dart';
import 'kitchen_sink.factories.dart';
import 'kitchen_sink_interface.dart';
import 'kitchen_sink_test_shared.dart';
import 'strict_keys_object.dart';

Matcher _isMissingKeyException(expectedMessage) =>
    isA<MissingRequiredKeysException>()
        .having((e) => e.message, 'message', expectedMessage);

void main() {
  test('valid values covers all keys', () {
    expect(invalidValueTypes.keys, orderedEquals(validValues.keys));
  });

  test('tracking Map/Iterable types correctly', () {
    for (var entry in validValues.entries) {
      if (_iterableMapKeys.contains(entry.key) ||
          _encodedAsMapKeys.contains(entry.key)) {
        expect(entry.value, anyOf(isMap, isList));
      } else {
        expect(entry.value, isNot(anyOf(isMap, isList)));
      }
    }
  });

  test('required keys', () {
    expect(
        () => StrictKeysObject.fromJson({}),
        throwsA(_isMissingKeyException(
            'Required keys are missing: value, custom_field.')));
  });

  for (var factory in factories) {
    group(factory.description, () {
      if (factory.nullable) {
        _nullableTests(factory);
      } else {
        _nonNullableTests(factory);
      }
      _sharedTests(factory);
    });
  }
}

const _jsonConverterValidValues = {
  'duration': 5,
  'durationList': [5],
  'bigInt': '5',
  'bigIntMap': {'vaule': '5'},
  'numberSilly': 5,
  'numberSillySet': [5],
  'dateTime': 5
};

void _nonNullableTests(KitchenSinkFactory factory) {
  test('with empty json fails deserialization', () {
    Matcher matcher;
    if (factory.checked) {
      matcher = checkedMatcher('set');
    } else {
      matcher = isTypeError;
    }
    expect(() => factory.fromJson(<String, dynamic>{}), throwsA(matcher));
  });

  test('nullable values are not allowed in non-nullable version', () {
    final instance = factory.jsonConverterFromJson(_jsonConverterValidValues);
    final json = instance.toJson();
    expect(json, _jsonConverterValidValues);
    expect(json.values, everyElement(isNotNull));

    final instance2 = factory.jsonConverterFromJson(json);
    expect(instance2.toJson(), json);
  });
}

void _nullableTests(KitchenSinkFactory factory) {
  void roundTripSink(KitchenSink p) {
    roundTripObject(p, factory.fromJson);
  }

  test('nullable values are allowed in the nullable version', () {
    final instance = factory.jsonConverterCtor();
    final json = instance.toJson();

    expect(json, const {
      'duration': 0,
      'durationList': [],
      'bigInt': '0',
      'bigIntMap': {},
      'numberSilly': 0,
      'numberSillySet': [],
      'dateTime': 0
    });

    expect(json.keys, unorderedEquals(_jsonConverterValidValues.keys));

    final instance2 = factory.jsonConverterFromJson(json);
    expect(instance2.toJson(), json);
  });

  test('Fields with `!includeIfNull` should not be included when null', () {
    final item = factory.ctor();
    final encoded = item.toJson();

    if (factory.excludeNull) {
      expect(encoded.keys, orderedEquals(_nonNullableFields));
    } else {
      expect(encoded.keys, orderedEquals(validValues.keys));

      for (final key in validValues.keys) {
        expect(
          encoded,
          containsPair(
            key,
            _nonNullableFields.contains(key) ? isNotNull : isNull,
          ),
        );
      }
    }
  });

  test('list and map of DateTime', () {
    final now = DateTime.now();
    final later = now.add(const Duration(days: 1));
    final item = factory.ctor(dateTimeIterable: <DateTime>[now])
      ..dateTimeList = <DateTime>[now, later]
      ..objectDateTimeMap = <Object, DateTime>{'value': now, 'null': later};

    roundTripSink(item);
  });

  test('complex nested type', () {
    final item = factory.ctor()
      ..crazyComplex = [
        null,
        {},
        {
          'null': null,
          'empty': {},
          'items': {
            'null': null,
            'empty': [],
            'items': [
              null,
              [],
              [DateTime.now()]
            ]
          }
        }
      ];
    roundTripSink(item);
  });
}

void _sharedTests(KitchenSinkFactory factory) {
  test('empty', () {
    final item = factory.ctor();
    roundTripObject(item, factory.fromJson);
  });

  test('list and map of DateTime - not null', () {
    final now = DateTime.now();
    final item = factory.ctor(dateTimeIterable: <DateTime>[now])
      ..dateTimeList = <DateTime>[now, now]
      ..objectDateTimeMap = <Object, DateTime>{'value': now};

    roundTripObject(item, factory.fromJson);
  });

  test('complex nested type - not null', () {
    final item = factory.ctor()
      ..crazyComplex = [
        {},
        {
          'empty': {},
          'items': {
            'empty': [],
            'items': [
              [],
              [DateTime.now()]
            ]
          }
        }
      ];
    roundTripObject(item, factory.fromJson);
  });

  test('round trip valid, empty values', () {
    final values = Map.fromEntries(validValues.entries.map((e) {
      var value = e.value;
      if (_iterableMapKeys.contains(e.key)) {
        if (value is List) {
          value = [];
        } else {
          assert(value is Map);
          value = <String, dynamic>{};
        }
      }
      return MapEntry(e.key, value);
    }));

    final validInstance = factory.fromJson(values);

    roundTripObject(validInstance, factory.fromJson);
  });

  test('JSON keys should be defined in field/property order', () {
    final json = factory.ctor().toJson();
    if (factory.excludeNull) {
      expect(json.keys, _nonNullableFields);
    } else {
      expect(json.keys, orderedEquals(validValues.keys));
    }
  });

  test('valid values round-trip - json', () {
    final validInstance = factory.fromJson(validValues);
    roundTripObject(validInstance, factory.fromJson);
  });
}

const _nonNullableFields = {
  'dynamicIterable',
  'objectIterable',
  'intIterable',
  'set',
  'dynamicSet',
  'objectSet',
  'intSet',
  'dateTimeSet',
  'datetime-iterable',
  'list',
  'dynamicList',
  'objectList',
  'intList',
  'dateTimeList',
  'map',
  'stringStringMap',
  'dynamicIntMap',
  'objectDateTimeMap',
  'crazyComplex',
  'val',
  'simpleObject',
  'strictKeysObject'
};

const _encodedAsMapKeys = {'simpleObject', 'strictKeysObject'};

const _iterableMapKeys = {
  'bigIntMap',
  'crazyComplex',
  'datetime-iterable',
  'dateTimeList',
  'dateTimeSet',
  'durationList',
  'dynamicIntMap',
  'dynamicIterable',
  'dynamicList',
  'dynamicSet',
  'intIterable',
  'intList',
  'intSet',
  'iterable',
  'list',
  'map',
  'numberSillySet',
  'objectDateTimeMap',
  'objectIterable',
  'objectList',
  'objectSet',
  'set',
  'stringStringMap',
  generatedLocalVarName,
};
