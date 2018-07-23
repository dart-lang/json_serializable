// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';

import '../test_utils.dart';
import 'json_test_common.dart' show Category, Platform, StatusCode;
import 'json_test_example.dart';

Matcher _throwsArgumentError(matcher) =>
    throwsA(isArgumentError.having((e) => e.message, 'message', matcher));

void main() {
  group('Person', () {
    void roundTripPerson(Person p) {
      roundTripObject(p, (json) => new Person.fromJson(json));
    }

    test('null', () {
      roundTripPerson(new Person(null, null, null));
    });

    test('empty', () {
      roundTripPerson(new Person('', '', null,
          middleName: '',
          dateOfBirth: new DateTime.fromMillisecondsSinceEpoch(0)));
    });

    test('now', () {
      roundTripPerson(new Person('a', 'b', Category.charmed,
          middleName: 'c', dateOfBirth: new DateTime.now()));
    });

    test('now toUtc', () {
      roundTripPerson(new Person('a', 'b', Category.bottom,
          middleName: 'c', dateOfBirth: new DateTime.now().toUtc()));
    });

    test('empty json', () {
      var person = new Person.fromJson({});
      expect(person.dateOfBirth, isNull);
      roundTripPerson(person);
    });

    test('enum map', () {
      var person = new Person(null, null, null)
        ..houseMap = {'bob': Category.strange}
        ..categoryCounts = {Category.strange: 1};
      expect(person.dateOfBirth, isNull);
      roundTripPerson(person);
    });
  });

  group('Order', () {
    void roundTripOrder(Order p) {
      roundTripObject(p, (json) => new Order.fromJson(json));
    }

    test('null', () {
      roundTripOrder(
          new Order(Category.charmed)..statusCode = StatusCode.success);
    });

    test('empty', () {
      roundTripOrder(new Order(Category.strange, const [])
        ..statusCode = StatusCode.success
        ..count = 0
        ..isRushed = false);
    });

    test('simple', () {
      roundTripOrder(new Order(Category.top, <Item>[
        new Item(24)
          ..itemNumber = 42
          ..saleDates = [new DateTime.now()]
      ])
        ..statusCode = StatusCode.success
        ..count = 42
        ..isRushed = true);
    });

    test('almost empty json', () {
      var order = new Order.fromJson({'category': 'not_discovered_yet'});
      expect(order.items, isEmpty);
      expect(order.category, Category.notDiscoveredYet);
      expect(order.statusCode, StatusCode.success);
      roundTripOrder(order);
    });

    test('required, but missing enum value fails', () {
      expect(
          () => new Order.fromJson({}),
          _throwsArgumentError('A value must be provided. Supported values: '
              'top, bottom, strange, charmed, up, down, not_discovered_yet'));
    });

    test('mismatched enum value fails', () {
      expect(
          () => new Order.fromJson({'category': 'weird'}),
          _throwsArgumentError('`weird` is not one of the supported values: '
              'top, bottom, strange, charmed, up, down, not_discovered_yet'));
    });

    test('platform', () {
      var order = new Order(Category.charmed)
        ..statusCode = StatusCode.success
        ..platform = Platform.undefined
        ..altPlatforms = {
          'u': Platform.undefined,
          'f': Platform.foo,
          'null': null
        };

      roundTripOrder(order);
    });

    test('homepage', () {
      var order = new Order(Category.charmed)
        ..platform = Platform.undefined
        ..statusCode = StatusCode.success
        ..altPlatforms = {
          'u': Platform.undefined,
          'f': Platform.foo,
          'null': null
        }
        ..homepage = Uri.parse('https://dartlang.org');

      roundTripOrder(order);
    });

    test('statusCode', () {
      var order = new Order.fromJson(
          {'category': 'not_discovered_yet', 'status_code': 404});
      expect(order.statusCode, StatusCode.notFound);
      roundTripOrder(order);
    });
  });

  group('Item', () {
    void roundTripItem(Item p) {
      roundTripObject(p, (json) => new Item.fromJson(json));
    }

    test('empty json', () {
      var item = new Item.fromJson({});
      expect(item.saleDates, isNull);
      roundTripItem(item);

      expect(item.toJson().keys, orderedEquals(['price', 'saleDates', 'rates']),
          reason: 'Omits null `itemNumber`');
    });

    test('set itemNumber - with custom JSON key', () {
      var item = new Item.fromJson({'item-number': 42});
      expect(item.itemNumber, 42);
      roundTripItem(item);

      expect(item.toJson().keys,
          orderedEquals(['price', 'item-number', 'saleDates', 'rates']),
          reason: 'Includes non-null `itemNumber` - with custom key');
    });
  });

  group('Numbers', () {
    void roundTripNumber(Numbers p) {
      roundTripObject(p, (json) => new Numbers.fromJson(json));
    }

    test('simple', () {
      roundTripNumber(new Numbers()
        ..nums = [0, 0.0]
        ..doubles = [0.0]
        ..nnDoubles = [0.0]
        ..ints = [0]
        ..duration = const Duration(seconds: 1)
        ..date = new DateTime.now());
    });

    test('custom DateTime', () {
      var instance = new Numbers()
        ..date = new DateTime.fromMillisecondsSinceEpoch(42);
      var json = instance.toJson();
      expect(json, containsPair('date', 42000));
    });

    test('support ints as doubles', () {
      var value = {
        'doubles': [0, 0.0, null],
        'nnDoubles': [0, 0.0]
      };

      roundTripNumber(new Numbers.fromJson(value));
    });

    test('does not support doubles as ints', () {
      var value = {
        'ints': [3.14, 0],
      };

      expect(() => new Numbers.fromJson(value), throwsCastError);
    });
  });
}
