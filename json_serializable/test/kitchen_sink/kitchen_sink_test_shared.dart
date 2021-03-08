// @dart=2.12

import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

const validValues = <String, dynamic>{
  'no-42': 0,
  'dateTime': '2018-05-10T14:20:58.927',
  'bigInt': '10000000000000000000',
  'iterable': [true],
  'dynamicIterable': [true],
  'objectIterable': [true],
  'intIterable': [42],
  'set': [true],
  'dynamicSet': [true],
  'objectSet': [true],
  'intSet': [42],
  'dateTimeSet': ['2018-05-10T14:20:58.927'],
  'datetime-iterable': ['2018-05-10T14:20:58.927'],
  'list': [true],
  'dynamicList': [true],
  'objectList': [true],
  'intList': [42],
  'dateTimeList': ['2018-05-10T14:20:58.927'],
  'map': <String, dynamic>{'key': true},
  'stringStringMap': <String, dynamic>{'key': 'vaule'},
  'dynamicIntMap': <String, dynamic>{'key': 42},
  'objectDateTimeMap': <String, dynamic>{'key': '2018-05-10T14:20:58.927'},
  'crazyComplex': [<String, dynamic>{}],
  generatedLocalVarName: <String, dynamic>{'key': true},
  _toJsonMapHelperName: true,
  r'$string': 'string',
  'simpleObject': {'value': 42},
  'strictKeysObject': {'value': 10, 'custom_field': 'cool'},
  'validatedPropertyNo42': 0
};

const invalidValueTypes = {
  'no-42': true,
  'dateTime': true,
  'bigInt': true,
  'iterable': true,
  'dynamicIterable': true,
  'objectIterable': true,
  'intIterable': true,
  'set': true,
  'dynamicSet': true,
  'objectSet': true,
  'intSet': true,
  'dateTimeSet': true,
  'datetime-iterable': true,
  'list': true,
  'dynamicList': true,
  'objectList': true,
  'intList': [true],
  'dateTimeList': [true],
  'map': true,
  'stringStringMap': {'key': 42},
  'dynamicIntMap': {'key': 'value'},
  'objectDateTimeMap': {'key': 42},
  'crazyComplex': [true],
  generatedLocalVarName: {'key': 42},
  _toJsonMapHelperName: 42,
  r'$string': true,
  'simpleObject': 42,
  'strictKeysObject': {
    'value': 10,
    'invalid_key': true,
  },
  'validatedPropertyNo42': true
};

const disallowNullKeys = {
  'set',
  'dynamicSet',
  'objectSet',
  'intSet',
  'dateTimeSet',
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
  generatedLocalVarName,
  'simpleObject',
  'strictKeysObject',
};

Matcher checkedMatcher(String? expectedKey) => isA<CheckedFromJsonException>()
    .having((e) => e.className, 'className', 'KitchenSink')
    .having((e) => e.key, 'key', expectedKey);

// copied and renamed as private from /lib/src/constants.dart
const generatedLocalVarName = 'val';

const _toJsonMapHelperName = 'writeNotNull';
