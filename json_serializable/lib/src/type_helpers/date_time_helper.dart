// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/type.dart';

import '../type_helper.dart';
import '../utils.dart';
import 'to_from_string.dart';

class DateTimeHelper extends TypeHelper {
  const DateTimeHelper();

  @override
  String? serialize(
    DartType targetType,
    String expression,
    TypeHelperContext context,
  ) =>
      dateTimeString.serialize(
        targetType,
        expression,
        targetType.isNullableType,
      );

  @override
  String? deserialize(
    DartType targetType,
    String expression,
    TypeHelperContext context,
    bool defaultProvided,
  ) =>
      dateTimeString.deserialize(
        targetType,
        expression,
        targetType.isNullableType,
        false,
      );
}
