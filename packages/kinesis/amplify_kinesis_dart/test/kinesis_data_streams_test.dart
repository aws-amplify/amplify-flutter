// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show Error, Ok;
import 'package:amplify_kinesis_dart/src/amplify_kinesis_client.dart';
import 'package:amplify_kinesis_dart/src/amplify_kinesis_client_options.dart';
import 'package:amplify_kinesis_dart/src/exception/amplify_kinesis_exception.dart';
import 'package:amplify_kinesis_dart/src/flush_strategy/flush_strategy.dart';
import 'package:amplify_kinesis_dart/src/impl/kinesis_record.dart';
import 'package:amplify_kinesis_dart/src/model/clear_cache_data.dart';
import 'package:amplify_kinesis_dart/src/model/flush_data.dart';
import 'package:amplify_kinesis_dart/src/model/record_data.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'common/mocktail_mocks.dart';

void main() {
  group('AmplifyKinesisClient', () {
    late MockRecordClient mockRecordClient;

    setUpAll(() {
      registerFallbackValue(
        RecordInput.now(data: Uint8List(0), partitionKey: '', streamName: ''),
      );
    });

    setUp(() {
      mockRecordClient = MockRecordClient();

      when(
        () => mockRecordClient.record(any()),
      ).thenAnswer((_) async => const RecordData());
      when(
        () => mockRecordClient.flush(),
      ).thenAnswer((_) async => const FlushData());
      when(
        () => mockRecordClient.clearCache(),
      ).thenAnswer((_) async => const ClearCacheData());
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
        expect(client.options.flushStrategy, isA<FlushInterval>());
      });

      test('initializes with custom options', () {
        const customOptions = AmplifyKinesisClientOptions(
          cacheMaxBytes: 10 * 1024 * 1024,
          maxRetries: 10,
          flushStrategy: FlushInterval(interval: Duration(minutes: 1)),
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
          (client.options.flushStrategy as FlushInterval).interval,
          equals(const Duration(minutes: 1)),
        );
      });

      test('supports None flush strategy', () {
        const customOptions = AmplifyKinesisClientOptions(
          flushStrategy: FlushNone(),
        );

        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
          options: customOptions,
        );

        expect(client.options.flushStrategy, isA<FlushNone>());
      });
    });

    group('record()', () {
      test('delegates to RecordClient with correct KinesisRecord', () async {
        when(
          () => mockRecordClient.record(any()),
        ).thenAnswer((_) async => const RecordData());

        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        );

        final data = Uint8List.fromList([1, 2, 3, 4, 5]);
        final result = await client.record(
          data: data,
          partitionKey: 'test-partition',
          streamName: 'test-stream',
        );

        final captured =
            verify(() => mockRecordClient.record(captureAny())).captured.single
                as RecordInput;

        expect(captured.data, equals(data));
        expect(captured.partitionKey, equals('test-partition'));
        expect(captured.streamName, equals('test-stream'));
        expect(captured.dataSize, equals(19));

        expect(result, isA<Ok<RecordData>>());
      });

      test('creates record with correct data size', () async {
        when(
          () => mockRecordClient.record(any()),
        ).thenAnswer((_) async => const RecordData());

        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        );

        final data = Uint8List(1000);
        final result = await client.record(
          data: data,
          partitionKey: 'pk',
          streamName: 'stream',
        );

        final captured =
            verify(() => mockRecordClient.record(captureAny())).captured.single
                as RecordInput;

        expect(captured.dataSize, equals(1002));

        expect(result, isA<Ok<RecordData>>());
      });

      test('returns RecordData when disabled', () async {
        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        )..disable();

        final result = await client.record(
          data: Uint8List.fromList([1]),
          partitionKey: 'pk',
          streamName: 'stream',
        );

        verifyNever(() => mockRecordClient.record(any()));
        expect(result, isA<Ok<RecordData>>());
      });
    });

    group('flush()', () {
      test(
        'delegates to RecordClient and returns Result.ok with FlushData',
        () async {
          when(
            () => mockRecordClient.flush(),
          ).thenAnswer((_) async => const FlushData(recordsFlushed: 5));

          final client = AmplifyKinesisClient.withRecordClient(
            recordClient: mockRecordClient,
          );

          final result = await client.flush();

          verify(() => mockRecordClient.flush()).called(1);
          expect(result, isA<Ok<FlushData>>());
          expect((result as Ok<FlushData>).value.recordsFlushed, equals(5));
        },
      );
    });

    group('clearCache()', () {
      test(
        'delegates to RecordClient and returns Result.ok with ClearCacheData',
        () async {
          when(
            () => mockRecordClient.clearCache(),
          ).thenAnswer((_) async => const ClearCacheData(recordsCleared: 3));

          final client = AmplifyKinesisClient.withRecordClient(
            recordClient: mockRecordClient,
          );

          final result = await client.clearCache();

          verify(() => mockRecordClient.clearCache()).called(1);
          expect(result, isA<Ok<ClearCacheData>>());
          expect(
            (result as Ok<ClearCacheData>).value.recordsCleared,
            equals(3),
          );
        },
      );
    });

    group('enable() / disable()', () {
      test('enable sets isEnabled to true', () {
        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        )..disable();
        expect(client.isEnabled, isFalse);

        client.enable();
        expect(client.isEnabled, isTrue);
      });

      test('disable sets isEnabled to false', () {
        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        );

        expect(client.isEnabled, isTrue);

        client.disable();
        expect(client.isEnabled, isFalse);
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

      test('isClosed is true after close', () async {
        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        );

        expect(client.isClosed, isFalse);

        await client.close();
        expect(client.isClosed, isTrue);
      });

      test('record returns Result.error with ClientClosedException', () async {
        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        );

        await client.close();

        final result = await client.record(
          data: Uint8List.fromList([1]),
          partitionKey: 'pk',
          streamName: 'stream',
        );
        expect(result, isA<Error<RecordData>>());
        expect(
          (result as Error<RecordData>).error,
          isA<ClientClosedException>(),
        );
      });

      test('flush returns Result.error with ClientClosedException', () async {
        final client = AmplifyKinesisClient.withRecordClient(
          recordClient: mockRecordClient,
        );

        await client.close();

        final result = await client.flush();
        expect(result, isA<Error<FlushData>>());
        expect(
          (result as Error<FlushData>).error,
          isA<ClientClosedException>(),
        );
      });
    });
  });
}
