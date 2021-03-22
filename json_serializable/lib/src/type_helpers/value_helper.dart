// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/type.dart';

import '../helper_core.dart';
import '../shared_checkers.dart';
import '../type_helper.dart';
import '../utils.dart';

class ValueHelper extends TypeHelper {
  const ValueHelper();

  @override
  String? serialize(
    DartType targetType,
    String expression,
    TypeHelperContext context,
  ) {
    if (targetType.isDartCoreObject ||
        targetType.isDynamic ||
        simpleJsonTypeChecker.isAssignableFromType(targetType)) {
      return expression;
    }

    return null;
  }

  @override
  String? deserialize(
    DartType targetType,
    String expression,
    TypeHelperContext context,
    bool defaultProvided,
  ) {
    if (targetType.isDartCoreObject && !targetType.isNullableType) {
      final question = defaultProvided ? '?' : '';
      return '$expression as Object$question';
    } else if (targetType.isDartCoreObject || targetType.isDynamic) {
      // just return it as-is. We'll hope it's safe.
      return expression;
    } else if (targetType.isDartCoreDouble) {
      final targetTypeNullable = defaultProvided || targetType.isNullableType;
      final question = targetTypeNullable ? '?' : '';
      return '($expression as num$question)$question.toDouble()';
    } else if (simpleJsonTypeChecker.isAssignableFromType(targetType)) {
      final typeCode = typeToCode(targetType, forceNullable: defaultProvided);
      return '$expression as $typeCode';
    }

    return null;
  }
}
