// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_kinesis_datastreams/src/flush_strategy/interval_flush_strategy.dart';
import 'package:aws_kinesis_datastreams/src/impl/auto_flush_scheduler.dart';
import 'package:fake_async/fake_async.dart';
import 'package:test/test.dart';

void main() {
  group('AutoFlushScheduler', () {
    group('start()', () {
      test('timer fires at configured interval', () {
        fakeAsync((async) {
          var flushCount = 0;
          final scheduler = AutoFlushScheduler(
            strategy: const KinesisDataStreamsInterval(
              interval: Duration(seconds: 10),
            ),
            onFlush: () async {
              flushCount++;
            },
          );

          scheduler.start();

          // No flush yet
          expect(flushCount, equals(0));

          // Advance 10 seconds - first flush
          async.elapse(const Duration(seconds: 10));
          expect(flushCount, equals(1));

          // Advance another 10 seconds - second flush
          async.elapse(const Duration(seconds: 10));
          expect(flushCount, equals(2));

          // Advance 25 seconds - two more flushes (at 30s and 40s)
          async.elapse(const Duration(seconds: 25));
          expect(flushCount, equals(4));

          scheduler.close();
        });
      });

      test('does nothing after close', () {
        fakeAsync((async) {
          var flushCount = 0;
          final scheduler = AutoFlushScheduler(
            strategy: const KinesisDataStreamsInterval(
              interval: Duration(seconds: 10),
            ),
            onFlush: () async {
              flushCount++;
            },
          );

          scheduler.close();
          scheduler.start();

          async.elapse(const Duration(seconds: 30));
          expect(flushCount, equals(0));
        });
      });
    });

    group('stop()', () {
      test('cancels timer', () {
        fakeAsync((async) {
          var flushCount = 0;
          final scheduler = AutoFlushScheduler(
            strategy: const KinesisDataStreamsInterval(
              interval: Duration(seconds: 10),
            ),
            onFlush: () async {
              flushCount++;
            },
          );

          scheduler.start();

          // First flush
          async.elapse(const Duration(seconds: 10));
          expect(flushCount, equals(1));

          scheduler.stop();

          // No more flushes after stop
          async.elapse(const Duration(seconds: 30));
          expect(flushCount, equals(1));
        });
      });
    });

    group('disable()', () {
      test('prevents timer from triggering flush', () {
        fakeAsync((async) {
          var flushCount = 0;
          final scheduler = AutoFlushScheduler(
            strategy: const KinesisDataStreamsInterval(
              interval: Duration(seconds: 10),
            ),
            onFlush: () async {
              flushCount++;
            },
          );

          scheduler.start();
          scheduler.disable();

          // Timer fires but flush is skipped
          async.elapse(const Duration(seconds: 30));
          expect(flushCount, equals(0));

          scheduler.close();
        });
      });
    });

    group('enable()', () {
      test('resumes timer triggering flush after disable', () {
        fakeAsync((async) {
          var flushCount = 0;
          final scheduler = AutoFlushScheduler(
            strategy: const KinesisDataStreamsInterval(
              interval: Duration(seconds: 10),
            ),
            onFlush: () async {
              flushCount++;
            },
          );

          scheduler.start();
          scheduler.disable();

          // No flush while disabled
          async.elapse(const Duration(seconds: 15));
          expect(flushCount, equals(0));

          scheduler.enable();

          // Next timer tick triggers flush
          async.elapse(const Duration(seconds: 10));
          expect(flushCount, equals(1));

          scheduler.close();
        });
      });
    });

    group('close()', () {
      test('cancels timer and cleans up', () {
        fakeAsync((async) {
          var flushCount = 0;
          final scheduler = AutoFlushScheduler(
            strategy: const KinesisDataStreamsInterval(
              interval: Duration(seconds: 10),
            ),
            onFlush: () async {
              flushCount++;
            },
          );

          scheduler.start();

          // First flush
          async.elapse(const Duration(seconds: 10));
          expect(flushCount, equals(1));

          scheduler.close();
          expect(scheduler.isClosed, isTrue);

          // No more flushes after close
          async.elapse(const Duration(seconds: 30));
          expect(flushCount, equals(1));
        });
      });

      test('prevents restart after close', () {
        fakeAsync((async) {
          var flushCount = 0;
          final scheduler = AutoFlushScheduler(
            strategy: const KinesisDataStreamsInterval(
              interval: Duration(seconds: 10),
            ),
            onFlush: () async {
              flushCount++;
            },
          );

          scheduler.close();
          scheduler.start();

          async.elapse(const Duration(seconds: 30));
          expect(flushCount, equals(0));
        });
      });
    });

    group('isEnabled', () {
      test('returns true by default', () {
        final scheduler = AutoFlushScheduler(
          strategy: const KinesisDataStreamsInterval(),
          onFlush: () async {},
        );

        expect(scheduler.isEnabled, isTrue);
        scheduler.close();
      });

      test('returns false after disable', () {
        final scheduler = AutoFlushScheduler(
          strategy: const KinesisDataStreamsInterval(),
          onFlush: () async {},
        );

        scheduler.disable();
        expect(scheduler.isEnabled, isFalse);
        scheduler.close();
      });

      test('returns true after enable', () {
        final scheduler = AutoFlushScheduler(
          strategy: const KinesisDataStreamsInterval(),
          onFlush: () async {},
        );

        scheduler.disable();
        scheduler.enable();
        expect(scheduler.isEnabled, isTrue);
        scheduler.close();
      });
    });
  });
}
