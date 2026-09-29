// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:amplify_kinesis/amplify_kinesis.dart';

/// Flushes until [expected] records are delivered, tolerating retryable throttling.
Future<int> flushUntilDelivered(
  Future<Result<FlushData>> Function() flush,
  int expected, {
  int maxAttempts = 5,
  Duration retryDelay = const Duration(milliseconds: 500),
}) async {
  var flushed = 0;
  for (
    var attempt = 0;
    attempt < maxAttempts && flushed < expected;
    attempt++
  ) {
    if (attempt > 0) {
      await Future<void>.delayed(retryDelay);
    }
    final result = await flush();
    if (result is Ok<FlushData>) {
      flushed += result.value.recordsFlushed;
    }
  }
  return flushed;
}
