// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_kinesis_dart/src/impl/auto_flush_scheduler.dart';
import 'package:amplify_kinesis_dart/src/impl/record_client.dart';
import 'package:amplify_kinesis_dart/src/model/flush_data.dart';
import 'package:fake_async/fake_async.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class _MockRecordClient extends Mock implements RecordClient {}

void main() {
  group('AutoFlushScheduler', () {
    late _MockRecordClient mockClient;

    setUp(() {
      mockClient = _MockRecordClient();
      when(() => mockClient.flush()).thenAnswer((_) async => const FlushData());
    });

    tearDown(() {
      resetMocktailState();
      reset(mockClient);
    });

    test('start should begin periodic flushing', () {
      fakeAsync((async) {
        final scheduler = AutoFlushScheduler(
          interval: const Duration(seconds: 1),
          client: mockClient,
        )..start();

        async.elapse(const Duration(milliseconds: 2500)); // 2.5 seconds
        scheduler.stop();

        verify(() => mockClient.flush()).called(2);
      });
    });

    test('stop should stop periodic flushing', () {
      fakeAsync((async) {
        final scheduler = AutoFlushScheduler(
          interval: const Duration(seconds: 1),
          client: mockClient,
        )..start();

        async.elapse(const Duration(milliseconds: 1500)); // 1.5s — 1 flush
        scheduler.stop();
        async.elapse(const Duration(milliseconds: 2000)); // 2s more — no flush

        verify(() => mockClient.flush()).called(1);
      });
    });

    test('start should cancel previous loop and restart', () {
      fakeAsync((async) {
        final scheduler = AutoFlushScheduler(
          interval: const Duration(seconds: 1),
          client: mockClient,
        )..start();

        async.elapse(const Duration(milliseconds: 500)); // 0.5s
        scheduler.start(); // Restart — should cancel previous loop
        async.elapse(const Duration(milliseconds: 1500)); // 1.5s more
        scheduler.stop();

        verify(() => mockClient.flush()).called(1);
      });
    });

    test('rapid start/stop/start does not leak loops', () {
      fakeAsync((async) {
        final scheduler =
            AutoFlushScheduler(
                interval: const Duration(seconds: 1),
                client: mockClient,
              )
              ..start()
              ..stop()
              ..start()
              ..stop()
              ..start();

        // Only one loop should be active.
        async.elapse(const Duration(milliseconds: 2500));
        scheduler.stop();

        verify(() => mockClient.flush()).called(2);
      });
    });
  });
}
