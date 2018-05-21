// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/type.dart';

import '../constants.dart';
import '../shared_checkers.dart';
import '../type_helper.dart';
import '../type_helper_context.dart';
import '../utils.dart';

class MapHelper extends TypeHelper {
  const MapHelper();

  @override
  String serialize(
      DartType targetType, String expression, SerializeContext context) {
    if (!coreMapTypeChecker.isAssignableFromType(targetType)) {
      return null;
    }
    var args = typeArgumentsOf(targetType, coreMapTypeChecker);
    assert(args.length == 2);

    var keyType = args[0];
    var valueType = args[1];

    _checkSafeKeyType(expression, keyType);

    var subFieldValue = context.serialize(valueType, closureArg);

    if (closureArg == subFieldValue) {
      return expression;
    }

    if (context.useWrappers) {
      var method = '\$wrapMap';
      if (context.nullable) {
        method = '${method}HandleNull';
      }

      return '$method<$keyType, $valueType>($expression, ($closureArg) => $subFieldValue)';
    }

    final optionalQuestion = context.nullable ? '?' : '';

    return '$expression$optionalQuestion'
        '.map((k, $closureArg) => new MapEntry(k, $subFieldValue))';
  }

  @override
  String deserialize(
      DartType targetType, String expression, DeserializeContext context) {
    if (!coreMapTypeChecker.isAssignableFromType(targetType)) {
      return null;
    }

    var typeArgs = typeArgumentsOf(targetType, coreMapTypeChecker);
    assert(typeArgs.length == 2);
    var keyArg = typeArgs.first;
    var valueArg = typeArgs.last;

    _checkSafeKeyType(expression, keyArg);

    final valueArgIsAny = _isObjectOrDynamic(valueArg);
    var isAnyMap = context is TypeHelperContext && context.anyMap;

    if (valueArgIsAny) {
      if (isAnyMap) {
        if (_isObjectOrDynamic(keyArg)) {
          return '$expression as Map';
        }
      } else {
        // this is the trivial case. Do a runtime cast to the known type of JSON
        // map values - `Map<String, dynamic>`
        return '$expression as Map<String, dynamic>';
      }
    }

    if (valueArgIsAny || simpleJsonTypeChecker.isAssignableFromType(valueArg)) {
      // No mapping of the values is required!

      var result = 'new Map<String, $valueArg>.from($expression as Map)';
      return commonNullPrefix(context.nullable, expression, result);
    }

    // In this case, we're going to create a new Map with matching reified
    // types.

    final itemSubVal = context.deserialize(valueArg, closureArg);

    final optionalQuestion = context.nullable ? '?' : '';

    final mapCast = isAnyMap ? 'as Map' : 'as Map<String, dynamic>';

    final keyUsage =
        (isAnyMap && !_isObjectOrDynamic(keyArg)) ? 'k as String' : 'k';

    return '($expression $mapCast)$optionalQuestion'
        '.map((k, $closureArg) => new MapEntry($keyUsage, $itemSubVal))';
  }
}

bool _isObjectOrDynamic(DartType type) => type.isObject || type.isDynamic;

void _checkSafeKeyType(String expression, DartType keyArg) {
  // We're not going to handle converting key types at the moment
  // So the only safe types for key are dynamic/Object/String
  var safeKey =
      _isObjectOrDynamic(keyArg) || coreStringTypeChecker.isExactlyType(keyArg);

  if (!safeKey) {
    throw new UnsupportedTypeError(keyArg, expression,
        'The type of the Map key must be `String`, `Object` or `dynamic`.');
  }
}
