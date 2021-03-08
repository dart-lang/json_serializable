// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.12

import 'dart:convert';

import 'package:stack_trace/stack_trace.dart';
import 'package:test/test.dart';

final throwsTypeError = throwsA(isTypeError);

final isTypeError = isA<TypeError>();

T roundTripObject<T>(T object, T Function(Map<String, dynamic> json) factory) {
  final data = loudEncode(object);

  final object2 = factory(json.decode(data) as Map<String, dynamic>);

  expect(object2, equals(object));

  final json2 = loudEncode(object2);

  expect(json2, equals(data));
  return object2;
}

/// Prints out nested causes before throwing `JsonUnsupportedObjectError`.
String loudEncode(Object? object) {
  try {
    return const JsonEncoder.withIndent(' ').convert(object);
  } catch (e) {
    if (e is JsonUnsupportedObjectError) {
      Object? error = e;

      var count = 1;

      while (error is JsonUnsupportedObjectError) {
        print(
          '(${count++}) $error ${error.unsupportedObject} (${error.unsupportedObject.runtimeType}) !!!',
        );
        print(Trace.from(error.stackTrace!).terse);
        error = error.cause;
      }

      if (error != null) {
        print('(${count++}) $error ???');
        if (error is Error) {
          print(Trace.from(error.stackTrace!).terse);
        }
      }
    }
    rethrow;
  }
}
