// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:amplify_kinesis/amplify_kinesis.dart';
import 'package:flutter_test/flutter_test.dart';

import '../integration_test/utils/flush_utils.dart';

void main() {
  group('flushUntilDelivered', () {
    test('returns immediately when delivered on the first flush', () async {
      var calls = 0;
      final flushed = await flushUntilDelivered(
        () async {
          calls++;
          return const Result<FlushData>.ok(FlushData(recordsFlushed: 1));
        },
        1,
        retryDelay: Duration.zero,
      );

      expect(flushed, 1);
      expect(calls, 1, reason: 'should not re-flush once delivered');
    });

    test('re-flushes until the throttled record is delivered', () async {
      final outcomes = <Result<FlushData>>[
        const Result.ok(FlushData(recordsFlushed: 0)),
        const Result.ok(FlushData(recordsFlushed: 1)),
      ];
      var i = 0;
      final flushed = await flushUntilDelivered(
        () async => outcomes[i++],
        1,
        retryDelay: Duration.zero,
      );

      expect(flushed, 1);
      expect(i, 2, reason: 'the second flush was required to deliver');
    });

    test('accumulates flushed counts across attempts', () async {
      final outcomes = <Result<FlushData>>[
        const Result.ok(FlushData(recordsFlushed: 1)),
        const Result.ok(FlushData(recordsFlushed: 2)),
      ];
      var i = 0;
      final flushed = await flushUntilDelivered(
        () async => outcomes[i++],
        3,
        retryDelay: Duration.zero,
      );

      expect(flushed, 3);
    });

    test('gives up after maxAttempts if never delivered', () async {
      var calls = 0;
      final flushed = await flushUntilDelivered(
        () async {
          calls++;
          return const Result<FlushData>.ok(FlushData(recordsFlushed: 0));
        },
        1,
        maxAttempts: 3,
        retryDelay: Duration.zero,
      );

      expect(flushed, 0, reason: 'real failures are not masked');
      expect(calls, 3);
    });

    test('without retry (maxAttempts: 1) a throttled first flush yields 0', () {
      // Regression guard: pre-fix behavior — a single, non-retried throttled
      // flush returns 0, which the old `expect(recordsFlushed, 1)` failed on.
      final outcomes = <Result<FlushData>>[
        const Result.ok(FlushData(recordsFlushed: 0)),
        const Result.ok(FlushData(recordsFlushed: 1)),
      ];
      var i = 0;
      return expectLater(
        flushUntilDelivered(
          () async => outcomes[i++],
          1,
          maxAttempts: 1,
          retryDelay: Duration.zero,
        ),
        completion(0),
      );
    });
  });
}
