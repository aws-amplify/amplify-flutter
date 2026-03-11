// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_kinesis_datastreams_dart/src/flush_strategy/flush_strategy.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/auto_flush_scheduler.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/record_client.dart';
import 'package:aws_kinesis_datastreams_dart/src/model/flush_data.dart';
import 'package:fake_async/fake_async.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class _MockRecordClient extends Mock implements RecordClient {}

void main() {
  group('AutoFlushScheduler', () {
    late _MockRecordClient mockClient;

    setUp(() {
      mockClient = _MockRecordClient();
      when(() => mockClient.flush())
          .thenAnswer((_) async => const FlushData());
    });

    tearDown(() {
      resetMocktailState();
      reset(mockClient);
    });

    test('start begins periodic flushing', () {
      fakeAsync((async) {
        final scheduler = AutoFlushScheduler(
          strategy: const KinesisDataStreamsInterval(
            interval: Duration(seconds: 10),
          ),
          client: mockClient,
        )..start();

        verifyNever(() => mockClient.flush());

        async.elapse(const Duration(seconds: 10));
        verify(() => mockClient.flush()).called(1);

        async.elapse(const Duration(seconds: 10));
        verify(() => mockClient.flush()).called(1);

        async.elapse(const Duration(seconds: 25));
        verify(() => mockClient.flush()).called(2);

        scheduler.stop();
      });
    });

    test('stop prevents further flushes', () {
      fakeAsync((async) {
        final scheduler = AutoFlushScheduler(
          strategy: const KinesisDataStreamsInterval(
            interval: Duration(seconds: 10),
          ),
          client: mockClient,
        )..start();

        async.elapse(const Duration(seconds: 10));
        verify(() => mockClient.flush()).called(1);

        scheduler.stop();

        async.elapse(const Duration(seconds: 30));
        verifyNever(() => mockClient.flush());
      });
    });

    test('start after stop restarts flushing', () {
      fakeAsync((async) {
        final scheduler = AutoFlushScheduler(
          strategy: const KinesisDataStreamsInterval(
            interval: Duration(seconds: 10),
          ),
          client: mockClient,
        )..start();

        async.elapse(const Duration(seconds: 10));
        verify(() => mockClient.flush()).called(1);

        scheduler.stop();
        async.elapse(const Duration(seconds: 20));
        verifyNever(() => mockClient.flush());

        scheduler.start();
        async.elapse(const Duration(seconds: 10));
        verify(() => mockClient.flush()).called(1);

        scheduler.stop();
      });
    });
  });
}
