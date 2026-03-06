// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:aws_kinesis_datastreams/src/amplify_kinesis_client.dart';
import 'package:aws_kinesis_datastreams/src/flush_strategy/flush_strategy.dart';
import 'package:aws_kinesis_datastreams/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams/src/kinesis_data_streams_options.dart';
import 'package:aws_kinesis_datastreams/src/model/clear_cache_data.dart';
import 'package:aws_kinesis_datastreams/src/model/flush_data.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'common/mocktail_mocks.dart';

void main() {
  group('AmplifyKinesisClient', () {
    late MockRecordClient mockRecordClient;

    setUpAll(() {
      registerFallbackValue(
        KinesisRecord.now(data: Uint8List(0), partitionKey: '', streamName: ''),
      );
    });

    setUp(() {
      mockRecordClient = MockRecordClient();

      when(() => mockRecordClient.isEnabled).thenReturn(true);
      when(() => mockRecordClient.isClosed).thenReturn(false);
      when(() => mockRecordClient.record(any())).thenAnswer((_) async {});
      when(
        () => mockRecordClient.flush(),
      ).thenAnswer((_) async => const FlushData());
      when(
        () => mockRecordClient.clearCache(),
      ).thenAnswer((_) async => const ClearCacheData());
      when(() => mockRecordClient.enable()).thenReturn(null);
      when(() => mockRecordClient.disable()).thenReturn(null);
      when(() => mockRecordClient.enableAutoFlush()).thenReturn(null);
      when(() => mockRecordClient.disableAutoFlush()).thenReturn(null);
      when(() => mockRecordClient.close()).thenAnswer((_) async {});
    });

    tearDown(() {
      resetMocktailState();
      reset(mockRecordClient);
    });

    group('initialization', () {
      test('initializes with default options', () {
        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        );

        expect(client.region, equals('us-east-1'));
        expect(client.options.cacheMaxBytes, equals(5 * 1024 * 1024));
        expect(client.options.maxRetries, equals(5));
        expect(client.options.flushStrategy, isA<KinesisDataStreamsInterval>());
      });

      test('initializes with custom options', () {
        final customOptions = AmplifyKinesisClientOptions(
          cacheMaxBytes: 10 * 1024 * 1024,
          maxRetries: 10,
          flushStrategy: const KinesisDataStreamsInterval(
            interval: Duration(minutes: 1),
          ),
        );

        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
          region: 'eu-west-1',
          options: customOptions,
        );

        expect(client.region, equals('eu-west-1'));
        expect(client.options.cacheMaxBytes, equals(10 * 1024 * 1024));
        expect(client.options.maxRetries, equals(10));
        expect(
          (client.options.flushStrategy as KinesisDataStreamsInterval).interval,
          equals(const Duration(minutes: 1)),
        );
      });

      test('supports None flush strategy', () {
        final customOptions = AmplifyKinesisClientOptions(
          flushStrategy: const KinesisDataStreamsNone(),
        );

        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
          options: customOptions,
        );

        expect(client.options.flushStrategy, isA<KinesisDataStreamsNone>());
      });
    });

    group('record()', () {
      test('delegates to RecordClient with correct KinesisRecord', () async {
        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        );

        final data = Uint8List.fromList([1, 2, 3, 4, 5]);
        await client.record(
          data: data,
          partitionKey: 'test-partition',
          streamName: 'test-stream',
        );

        final captured =
            verify(() => mockRecordClient.record(captureAny())).captured.single
                as KinesisRecord;

        expect(captured.data, equals(data));
        expect(captured.partitionKey, equals('test-partition'));
        expect(captured.streamName, equals('test-stream'));
        expect(captured.dataSize, equals(19));
      });

      test('creates record with correct data size', () async {
        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        );

        final data = Uint8List(1000);
        await client.record(
          data: data,
          partitionKey: 'pk',
          streamName: 'stream',
        );

        final captured =
            verify(() => mockRecordClient.record(captureAny())).captured.single
                as KinesisRecord;

        expect(captured.dataSize, equals(1002));
      });
    });

    group('flush()', () {
      test('delegates to RecordClient and returns FlushData', () async {
        when(
          () => mockRecordClient.flush(),
        ).thenAnswer((_) async => const FlushData(recordsFlushed: 5));

        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        );

        final result = await client.flush();

        verify(() => mockRecordClient.flush()).called(1);
        expect(result, isA<FlushData>());
        expect(result.recordsFlushed, equals(5));
      });
    });

    group('clearCache()', () {
      test('delegates to RecordClient and returns ClearCacheData', () async {
        when(
          () => mockRecordClient.clearCache(),
        ).thenAnswer((_) async => const ClearCacheData(recordsCleared: 3));

        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        );

        final result = await client.clearCache();

        verify(() => mockRecordClient.clearCache()).called(1);
        expect(result, isA<ClearCacheData>());
        expect(result.recordsCleared, equals(3));
      });
    });

    group('enable() / disable()', () {
      test('enable() delegates to RecordClient', () {
        AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        ).enable();

        verify(() => mockRecordClient.enable()).called(1);
      });

      test('disable() delegates to RecordClient', () {
        AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        ).disable();

        verify(() => mockRecordClient.disable()).called(1);
      });

      test('isEnabled reflects RecordClient state', () {
        when(() => mockRecordClient.isEnabled).thenReturn(false);

        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        );

        expect(client.isEnabled, isFalse);

        when(() => mockRecordClient.isEnabled).thenReturn(true);
        expect(client.isEnabled, isTrue);
      });
    });

    group('enableAutoFlush() / disableAutoFlush()', () {
      test('enableAutoFlush() delegates to RecordClient', () {
        AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        ).enableAutoFlush();

        verify(() => mockRecordClient.enableAutoFlush()).called(1);
      });

      test('disableAutoFlush() delegates to RecordClient', () {
        AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        ).disableAutoFlush();

        verify(() => mockRecordClient.disableAutoFlush()).called(1);
      });
    });

    group('close()', () {
      test('delegates to RecordClient', () async {
        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        );

        await client.close();

        verify(() => mockRecordClient.close()).called(1);
      });

      test('isClosed reflects RecordClient state', () {
        when(() => mockRecordClient.isClosed).thenReturn(false);

        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        );

        expect(client.isClosed, isFalse);

        when(() => mockRecordClient.isClosed).thenReturn(true);
        expect(client.isClosed, isTrue);
      });
    });
  });
}
