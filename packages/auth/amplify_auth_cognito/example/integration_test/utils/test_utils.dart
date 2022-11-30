// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
