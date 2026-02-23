// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_amazon_firehose/src/flush_strategy/flush_strategy.dart';
import 'package:aws_amazon_firehose/src/impl/auto_flush_scheduler.dart';
import 'package:fake_async/fake_async.dart';
import 'package:test/test.dart';

void main() {
  group('AutoFlushScheduler', () {
    group('interval strategy', () {
      test('triggers flush at configured interval', () {
        fakeAsync((async) {
          var flushCount = 0;
          final scheduler = AutoFlushScheduler(
            strategy: const AmazonDataFirehoseInterval(
              interval: Duration(seconds: 30),
            ),
            onFlush: () async {
              flushCount++;
            },
          );

          scheduler.start();

          // No flush immediately
          expect(flushCount, equals(0));

          // Advance 30 seconds - should trigger first flush
          async.elapse(const Duration(seconds: 30));
          expect(flushCount, equals(1));

          // Advance another 30 seconds - should trigger second flush
          async.elapse(const Duration(seconds: 30));
          expect(flushCount, equals(2));

          scheduler.close();
        });
      });

      test('does not trigger flush when disabled', () {
        fakeAsync((async) {
          var flushCount = 0;
          final scheduler = AutoFlushScheduler(
            strategy: const AmazonDataFirehoseInterval(
              interval: Duration(seconds: 30),
            ),
            onFlush: () async {
              flushCount++;
            },
          );

          scheduler.start();
          scheduler.disable();

          // Advance 60 seconds - should not trigger any flush
          async.elapse(const Duration(seconds: 60));
          expect(flushCount, equals(0));

          scheduler.close();
        });
      });

      test('resumes flushing when re-enabled', () {
        fakeAsync((async) {
          var flushCount = 0;
          final scheduler = AutoFlushScheduler(
            strategy: const AmazonDataFirehoseInterval(
              interval: Duration(seconds: 30),
            ),
            onFlush: () async {
              flushCount++;
            },
          );

          scheduler.start();
          scheduler.disable();

          // Advance 30 seconds while disabled
          async.elapse(const Duration(seconds: 30));
          expect(flushCount, equals(0));

          // Re-enable
          scheduler.enable();

          // Advance another 30 seconds - should trigger flush
          async.elapse(const Duration(seconds: 30));
          expect(flushCount, equals(1));

          scheduler.close();
        });
      });

      test('stop cancels timer', () {
        fakeAsync((async) {
          var flushCount = 0;
          final scheduler = AutoFlushScheduler(
            strategy: const AmazonDataFirehoseInterval(
              interval: Duration(seconds: 30),
            ),
            onFlush: () async {
              flushCount++;
            },
          );

          scheduler.start();
          scheduler.stop();

          // Advance 60 seconds - should not trigger any flush
          async.elapse(const Duration(seconds: 60));
          expect(flushCount, equals(0));

          scheduler.close();
        });
      });

      test('close prevents further flushes', () {
        fakeAsync((async) {
          var flushCount = 0;
          final scheduler = AutoFlushScheduler(
            strategy: const AmazonDataFirehoseInterval(
              interval: Duration(seconds: 30),
            ),
            onFlush: () async {
              flushCount++;
            },
          );

          scheduler.start();
          scheduler.close();

          // Advance 60 seconds - should not trigger any flush
          async.elapse(const Duration(seconds: 60));
          expect(flushCount, equals(0));
        });
      });

      test('start after close does nothing', () {
        fakeAsync((async) {
          var flushCount = 0;
          final scheduler = AutoFlushScheduler(
            strategy: const AmazonDataFirehoseInterval(
              interval: Duration(seconds: 30),
            ),
            onFlush: () async {
              flushCount++;
            },
          );

          scheduler.close();
          scheduler.start();

          // Advance 60 seconds - should not trigger any flush
          async.elapse(const Duration(seconds: 60));
          expect(flushCount, equals(0));
        });
      });
    });

    group('none strategy', () {
      test('does not trigger any flushes', () {
        fakeAsync((async) {
          var flushCount = 0;
          final scheduler = AutoFlushScheduler(
            strategy: const AmazonDataFirehoseNone(),
            onFlush: () async {
              flushCount++;
            },
          );

          scheduler.start();

          // Advance a long time - should never flush
          async.elapse(const Duration(minutes: 10));
          expect(flushCount, equals(0));

          scheduler.close();
        });
      });
    });

    group('state management', () {
      test('isEnabled reflects current state', () {
        final scheduler = AutoFlushScheduler(
          strategy: const AmazonDataFirehoseInterval(
            interval: Duration(seconds: 30),
          ),
          onFlush: () async {},
        );

        expect(scheduler.isEnabled, isTrue);

        scheduler.disable();
        expect(scheduler.isEnabled, isFalse);

        scheduler.enable();
        expect(scheduler.isEnabled, isTrue);

        scheduler.close();
      });

      test('isClosed reflects closed state', () async {
        final scheduler = AutoFlushScheduler(
          strategy: const AmazonDataFirehoseInterval(
            interval: Duration(seconds: 30),
          ),
          onFlush: () async {},
        );

        expect(scheduler.isClosed, isFalse);

        await scheduler.close();
        expect(scheduler.isClosed, isTrue);
      });
    });
  });
}
