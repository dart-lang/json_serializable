// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_sink.non_nullable.checked.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KitchenSink _$KitchenSinkFromJson(Map json) {
  return $checkedNew('KitchenSink', json, () {
    var val = KitchenSink(
        ctorValidatedNo42: $checkedConvert(json, 'no-42', (v) => v as int),
        iterable: $checkedConvert(json, 'iterable', (v) => v as List),
        dynamicIterable:
            $checkedConvert(json, 'dynamicIterable', (v) => v as List),
        objectIterable:
            $checkedConvert(json, 'objectIterable', (v) => v as List),
        intIterable: $checkedConvert(
            json, 'intIterable', (v) => (v as List).map((e) => e as int)),
        dateTimeIterable: $checkedConvert(json, 'datetime-iterable',
            (v) => (v as List).map((e) => DateTime.parse(e as String))));
    $checkedConvert(
        json, 'dateTime', (v) => val.dateTime = DateTime.parse(v as String));
    $checkedConvert(
        json, 'set', (v) => val.set = (v as List).map((e) => e).toSet());
    $checkedConvert(json, 'dynamicSet',
        (v) => val.dynamicSet = (v as List).map((e) => e).toSet());
    $checkedConvert(json, 'objectSet',
        (v) => val.objectSet = (v as List).map((e) => e).toSet());
    $checkedConvert(json, 'intSet',
        (v) => val.intSet = (v as List).map((e) => e as int).toSet());
    $checkedConvert(
        json,
        'dateTimeSet',
        (v) => val.dateTimeSet =
            (v as List).map((e) => DateTime.parse(e as String)).toSet());
    $checkedConvert(json, 'list', (v) => val.list = v as List);
    $checkedConvert(json, 'dynamicList', (v) => val.dynamicList = v as List);
    $checkedConvert(json, 'objectList', (v) => val.objectList = v as List);
    $checkedConvert(json, 'intList',
        (v) => val.intList = (v as List).map((e) => e as int).toList());
    $checkedConvert(
        json,
        'dateTimeList',
        (v) => val.dateTimeList =
            (v as List).map((e) => DateTime.parse(e as String)).toList());
    $checkedConvert(json, 'map', (v) => val.map = v as Map);
    $checkedConvert(json, 'stringStringMap',
        (v) => val.stringStringMap = Map<String, String>.from(v as Map));
    $checkedConvert(json, 'dynamicIntMap',
        (v) => val.dynamicIntMap = Map<String, int>.from(v as Map));
    $checkedConvert(
        json,
        'objectDateTimeMap',
        (v) => val.objectDateTimeMap =
            (v as Map).map((k, e) => MapEntry(k, DateTime.parse(e as String))));
    $checkedConvert(
        json,
        'crazyComplex',
        (v) => val.crazyComplex = (v as List)
            .map((e) => (e as Map).map((k, e) => MapEntry(
                k as String,
                (e as Map).map((k, e) => MapEntry(
                    k as String,
                    (e as List)
                        .map((e) => (e as List)
                            .map((e) => DateTime.parse(e as String))
                            .toList())
                        .toList())))))
            .toList());
    $checkedConvert(
        json, 'val', (v) => val.val = Map<String, bool>.from(v as Map));
    $checkedConvert(json, 'writeNotNull', (v) => val.writeNotNull = v as bool);
    $checkedConvert(json, r'$string', (v) => val.string = v as String);
    $checkedConvert(json, 'simpleObject',
        (v) => val.simpleObject = SimpleObject.fromJson(v as Map));
    $checkedConvert(json, 'strictKeysObject',
        (v) => val.strictKeysObject = StrictKeysObject.fromJson(v as Map));
    $checkedConvert(json, 'validatedPropertyNo42',
        (v) => val.validatedPropertyNo42 = v as int);
    return val;
  }, fieldKeyMap: const {
    'ctorValidatedNo42': 'no-42',
    'dateTimeIterable': 'datetime-iterable',
    'string': r'$string'
  });
}

abstract class _$KitchenSinkSerializerMixin {
  int get ctorValidatedNo42;
  DateTime get dateTime;
  Iterable<dynamic> get iterable;
  Iterable<dynamic> get dynamicIterable;
  Iterable<Object> get objectIterable;
  Iterable<int> get intIterable;
  Set<dynamic> get set;
  Set<dynamic> get dynamicSet;
  Set<Object> get objectSet;
  Set<int> get intSet;
  Set<DateTime> get dateTimeSet;
  Iterable<DateTime> get dateTimeIterable;
  List<dynamic> get list;
  List<dynamic> get dynamicList;
  List<Object> get objectList;
  List<int> get intList;
  List<DateTime> get dateTimeList;
  Map<dynamic, dynamic> get map;
  Map<String, String> get stringStringMap;
  Map<dynamic, int> get dynamicIntMap;
  Map<Object, DateTime> get objectDateTimeMap;
  List<Map<String, Map<String, List<List<DateTime>>>>> get crazyComplex;
  Map<String, bool> get val;
  bool get writeNotNull;
  String get string;
  SimpleObject get simpleObject;
  StrictKeysObject get strictKeysObject;
  int get validatedPropertyNo42;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'no-42': ctorValidatedNo42,
        'dateTime': dateTime.toIso8601String(),
        'iterable': iterable.toList(),
        'dynamicIterable': dynamicIterable.toList(),
        'objectIterable': objectIterable.toList(),
        'intIterable': intIterable.toList(),
        'set': set.toList(),
        'dynamicSet': dynamicSet.toList(),
        'objectSet': objectSet.toList(),
        'intSet': intSet.toList(),
        'dateTimeSet': dateTimeSet.map((e) => e.toIso8601String()).toList(),
        'datetime-iterable':
            dateTimeIterable.map((e) => e.toIso8601String()).toList(),
        'list': list,
        'dynamicList': dynamicList,
        'objectList': objectList,
        'intList': intList,
        'dateTimeList': dateTimeList.map((e) => e.toIso8601String()).toList(),
        'map': map,
        'stringStringMap': stringStringMap,
        'dynamicIntMap': dynamicIntMap,
        'objectDateTimeMap':
            objectDateTimeMap.map((k, e) => MapEntry(k, e.toIso8601String())),
        'crazyComplex': crazyComplex
            .map((e) => e.map((k, e) => MapEntry(
                k,
                e.map((k, e) => MapEntry(
                    k,
                    e
                        .map((e) => e.map((e) => e.toIso8601String()).toList())
                        .toList())))))
            .toList(),
        'val': val,
        'writeNotNull': writeNotNull,
        r'$string': string,
        'simpleObject': simpleObject,
        'strictKeysObject': strictKeysObject,
        'validatedPropertyNo42': validatedPropertyNo42
      };
}

JsonConverterTestClass _$JsonConverterTestClassFromJson(Map json) {
  return $checkedNew('JsonConverterTestClass', json, () {
    var val = JsonConverterTestClass();
    $checkedConvert(json, 'duration',
        (v) => val.duration = durationConverter.fromJson(v as int));
    $checkedConvert(
        json,
        'durationList',
        (v) => val.durationList = (v as List)
            .map((e) => durationConverter.fromJson(e as int))
            .toList());
    $checkedConvert(
        json,
        'bigInt',
        (v) =>
            val.bigInt = const BigIntStringConverter().fromJson(v as String));
    $checkedConvert(
        json,
        'bigIntMap',
        (v) => val.bigIntMap = (v as Map).map((k, e) => MapEntry(
            k as String, const BigIntStringConverter().fromJson(e as String))));
    $checkedConvert(
        json,
        'numberSilly',
        (v) => val.numberSilly =
            TrivialNumberConverter.instance.fromJson(v as int));
    $checkedConvert(
        json,
        'numberSillySet',
        (v) => val.numberSillySet = (v as List)
            .map((e) => TrivialNumberConverter.instance.fromJson(e as int))
            .toSet());
    $checkedConvert(
        json,
        'dateTime',
        (v) =>
            val.dateTime = const EpochDateTimeConverter().fromJson(v as int));
    return val;
  });
}

abstract class _$JsonConverterTestClassSerializerMixin {
  Duration get duration;
  List<Duration> get durationList;
  BigInt get bigInt;
  Map<String, BigInt> get bigIntMap;
  TrivialNumber get numberSilly;
  Set<TrivialNumber> get numberSillySet;
  DateTime get dateTime;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'duration': durationConverter.toJson(duration),
        'durationList': durationList.map(durationConverter.toJson).toList(),
        'bigInt': const BigIntStringConverter().toJson(bigInt),
        'bigIntMap': bigIntMap.map(
            (k, e) => MapEntry(k, const BigIntStringConverter().toJson(e))),
        'numberSilly': TrivialNumberConverter.instance.toJson(numberSilly),
        'numberSillySet':
            numberSillySet.map(TrivialNumberConverter.instance.toJson).toList(),
        'dateTime': const EpochDateTimeConverter().toJson(dateTime)
      };
}

JsonConverterGeneric<S, T, U> _$JsonConverterGenericFromJson<S, T, U>(
    Map json) {
  return $checkedNew('JsonConverterGeneric', json, () {
    var val = JsonConverterGeneric<S, T, U>();
    $checkedConvert(
        json,
        'item',
        (v) => val.item =
            GenericConverter<S>().fromJson(v as Map<String, dynamic>));
    $checkedConvert(
        json,
        'itemList',
        (v) => val.itemList = (v as List)
            .map((e) =>
                GenericConverter<T>().fromJson(e as Map<String, dynamic>))
            .toList());
    $checkedConvert(
        json,
        'itemMap',
        (v) => val.itemMap = (v as Map).map((k, e) => MapEntry(k as String,
            GenericConverter<U>().fromJson(e as Map<String, dynamic>))));
    return val;
  });
}

abstract class _$JsonConverterGenericSerializerMixin<S, T, U> {
  S get item;
  List<T> get itemList;
  Map<String, U> get itemMap;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'item': GenericConverter<S>().toJson(item),
        'itemList': itemList.map(GenericConverter<T>().toJson).toList(),
        'itemMap':
            itemMap.map((k, e) => MapEntry(k, GenericConverter<U>().toJson(e)))
      };
}
