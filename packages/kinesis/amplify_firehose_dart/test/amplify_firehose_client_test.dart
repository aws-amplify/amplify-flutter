// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:amplify_firehose_dart/amplify_firehose_dart.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show Error, Ok;
import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class _MockRecordClient extends Mock implements RecordClient {}

void main() {
  group('AmplifyFirehoseClient', () {
    late _MockRecordClient mockRecordClient;

    setUpAll(() {
      registerFallbackValue(
        RecordInput.now(data: Uint8List(0), streamName: '', dataSize: 0),
      );
    });

    setUp(() {
      mockRecordClient = _MockRecordClient();
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
        final client = AmplifyFirehoseClient.withRecordClient(
          recordClient: mockRecordClient,
        );
        expect(client.region, equals('us-east-1'));
        expect(client.options.cacheMaxBytes, equals(5 * 1024 * 1024));
        expect(client.options.maxRetries, equals(5));
        expect(client.options.flushStrategy, isA<FlushInterval>());
      });

      test('initializes with custom options', () {
        const opts = AmplifyFirehoseClientOptions(
          cacheMaxBytes: 10 * 1024 * 1024,
          maxRetries: 10,
          flushStrategy: FlushInterval(interval: Duration(minutes: 1)),
        );
        final client = AmplifyFirehoseClient.withRecordClient(
          recordClient: mockRecordClient,
          region: 'eu-west-1',
          options: opts,
        );
        expect(client.region, equals('eu-west-1'));
        expect(client.options.cacheMaxBytes, equals(10 * 1024 * 1024));
        expect(client.options.maxRetries, equals(10));
        expect(
          (client.options.flushStrategy as FlushInterval).interval,
          equals(const Duration(minutes: 1)),
        );
      });
    });

    group('record()', () {
      test('delegates to RecordClient with correct dataSize', () async {
        final client = AmplifyFirehoseClient.withRecordClient(
          recordClient: mockRecordClient,
        );
        final data = Uint8List.fromList([1, 2, 3, 4, 5]);
        final result = await client.record(data: data, streamName: 'my-stream');

        final captured =
            verify(() => mockRecordClient.record(captureAny())).captured.single
                as RecordInput;
        expect(captured.data, equals(data));
        expect(captured.streamName, equals('my-stream'));
        expect(captured.dataSize, equals(5));
        expect(captured.partitionKey, isNull);
        expect(result, isA<Ok<RecordData>>());
      });

      test('returns RecordData when disabled', () async {
        final client = AmplifyFirehoseClient.withRecordClient(
          recordClient: mockRecordClient,
        )..disable();
        final result = await client.record(
          data: Uint8List.fromList([1]),
          streamName: 'stream',
        );
        verifyNever(() => mockRecordClient.record(any()));
        expect(result, isA<Ok<RecordData>>());
      });

      test('returns error when closed', () async {
        final client = AmplifyFirehoseClient.withRecordClient(
          recordClient: mockRecordClient,
        );
        await client.close();
        final result = await client.record(
          data: Uint8List.fromList([1]),
          streamName: 'stream',
        );
        expect(result, isA<Error<RecordData>>());
        expect(
          (result as Error<RecordData>).error,
          isA<FirehoseClientClosedException>(),
        );
      });
    });

    group('flush()', () {
      test('delegates to RecordClient', () async {
        when(
          () => mockRecordClient.flush(),
        ).thenAnswer((_) async => const FlushData(recordsFlushed: 5));
        final client = AmplifyFirehoseClient.withRecordClient(
          recordClient: mockRecordClient,
        );
        final result = await client.flush();
        verify(() => mockRecordClient.flush()).called(1);
        expect(result, isA<Ok<FlushData>>());
        expect((result as Ok<FlushData>).value.recordsFlushed, equals(5));
      });

      test('returns error when closed', () async {
        final client = AmplifyFirehoseClient.withRecordClient(
          recordClient: mockRecordClient,
        );
        await client.close();
        final result = await client.flush();
        expect(result, isA<Error<FlushData>>());
        expect(
          (result as Error<FlushData>).error,
          isA<FirehoseClientClosedException>(),
        );
      });
    });

    group('clearCache()', () {
      test('delegates to RecordClient', () async {
        when(
          () => mockRecordClient.clearCache(),
        ).thenAnswer((_) async => const ClearCacheData(recordsCleared: 3));
        final client = AmplifyFirehoseClient.withRecordClient(
          recordClient: mockRecordClient,
        );
        final result = await client.clearCache();
        verify(() => mockRecordClient.clearCache()).called(1);
        expect(result, isA<Ok<ClearCacheData>>());
        expect((result as Ok<ClearCacheData>).value.recordsCleared, equals(3));
      });
    });

    group('enable() / disable()', () {
      test('enable sets isEnabled to true', () {
        final client = AmplifyFirehoseClient.withRecordClient(
          recordClient: mockRecordClient,
        )..disable();
        expect(client.isEnabled, isFalse);
        client.enable();
        expect(client.isEnabled, isTrue);
      });

      test('disable sets isEnabled to false', () {
        final client = AmplifyFirehoseClient.withRecordClient(
          recordClient: mockRecordClient,
        );
        expect(client.isEnabled, isTrue);
        client.disable();
        expect(client.isEnabled, isFalse);
      });
    });

    group('close()', () {
      test('delegates to RecordClient', () async {
        final client = AmplifyFirehoseClient.withRecordClient(
          recordClient: mockRecordClient,
        );
        await client.close();
        verify(() => mockRecordClient.close()).called(1);
        expect(client.isClosed, isTrue);
      });
    });
  });
}
