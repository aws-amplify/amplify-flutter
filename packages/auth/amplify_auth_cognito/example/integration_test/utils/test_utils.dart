// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter_test/flutter_test.dart';

/// Runs [body] asynchronously as `pkg:integration_test` expects so that all
/// asynchronous work completes before the test passes or fails.
///
/// [body] takes a [FutureGroup] parameter which can hold asynchronous
/// expectations created by `expectLater` which should not be awaited inline
/// but must resolve before the test can finish.
void asyncTest(
  String description,
  FutureOr<void> Function(FutureGroup<void> expectations) body, {
  bool? skip,
}) {
  testWidgets(
    description,
    (_) async {
      final expectations = FutureGroup<void>();
      await body(expectations);
      expectations.close();
      await expectations.future;
    },
    skip: skip,
  );
}
