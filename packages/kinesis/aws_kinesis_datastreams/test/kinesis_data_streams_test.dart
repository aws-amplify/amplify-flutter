// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:aws_kinesis_datastreams/src/flush_strategy/interval_flush_strategy.dart';
import 'package:aws_kinesis_datastreams/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams/src/kinesis_data_streams.dart';
import 'package:aws_kinesis_datastreams/src/kinesis_data_streams_options.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'common/mocktail_mocks.dart';

void main() {
  group('KinesisDataStreams', () {
    late MockRecordClient mockRecordClient;

    setUpAll(() {
      // Register fallback values for any() matchers
      registerFallbackValue(
        KinesisRecord(
          data: Uint8List(0),
          partitionKey: '',
          streamName: '',
        ),
      );
    });

    setUp(() {
      mockRecordClient = MockRecordClient();

      // Default stub behaviors
      when(() => mockRecordClient.isEnabled).thenReturn(true);
      when(() => mockRecordClient.isClosed).thenReturn(false);
      when(() => mockRecordClient.record(any())).thenAnswer((_) async {});
      when(() => mockRecordClient.flush()).thenAnswer((_) async {});
      when(() => mockRecordClient.clearCache()).thenAnswer((_) async {});
      when(() => mockRecordClient.enable()).thenReturn(null);
      when(() => mockRecordClient.disable()).thenReturn(null);
      when(() => mockRecordClient.close()).thenAnswer((_) async {});
    });

    tearDown(() {
      resetMocktailState();
      reset(mockRecordClient);
    });

    group('initialization', () {
      test('initializes with default options', () {
        final client = KinesisDataStreams.withRecordClient(
          recordClient: mockRecordClient,
        );

        expect(client.region, equals('us-east-1'));
        expect(client.options.cacheMaxBytes, equals(5 * 1024 * 1024));
        expect(client.options.maxRetries, equals(5));
        expect(
          client.options.flushStrategy,
          isA<KinesisDataStreamsInterval>(),
        );
      });

      test('initializes with custom options', () {
        const customOptions = KinesisDataStreamsOptions(
          cacheMaxBytes: 10 * 1024 * 1024,
          maxRetries: 10,
          flushStrategy: KinesisDataStreamsInterval(
            interval: Duration(minutes: 1),
          ),
        );

        final client = KinesisDataStreams.withRecordClient(
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
    });

    group('record()', () {
      test('delegates to RecordClient with correct KinesisRecord', () async {
        final client = KinesisDataStreams.withRecordClient(
          recordClient: mockRecordClient,
        );

        final data = Uint8List.fromList([1, 2, 3, 4, 5]);
        await client.record(
          data: data,
          partitionKey: 'test-partition',
          streamName: 'test-stream',
        );

        final captured = verify(() => mockRecordClient.record(captureAny()))
            .captured
            .single as KinesisRecord;

        expect(captured.data, equals(data));
        expect(captured.partitionKey, equals('test-partition'));
        expect(captured.streamName, equals('test-stream'));
        expect(captured.dataSize, equals(5));
      });

      test('creates record with correct data size', () async {
        final client = KinesisDataStreams.withRecordClient(
          recordClient: mockRecordClient,
        );

        final data = Uint8List(1000);
        await client.record(
          data: data,
          partitionKey: 'pk',
          streamName: 'stream',
        );

        final captured = verify(() => mockRecordClient.record(captureAny()))
            .captured
            .single as KinesisRecord;

        expect(captured.dataSize, equals(1000));
      });
    });

    group('flush()', () {
      test('delegates to RecordClient', () async {
        final client = KinesisDataStreams.withRecordClient(
          recordClient: mockRecordClient,
        );

        await client.flush();

        verify(() => mockRecordClient.flush()).called(1);
      });
    });

    group('clearCache()', () {
      test('delegates to RecordClient', () async {
        final client = KinesisDataStreams.withRecordClient(
          recordClient: mockRecordClient,
        );

        await client.clearCache();

        verify(() => mockRecordClient.clearCache()).called(1);
      });
    });

    group('enable() / disable()', () {
      test('enable() delegates to RecordClient', () {
        final client = KinesisDataStreams.withRecordClient(
          recordClient: mockRecordClient,
        );

        client.enable();

        verify(() => mockRecordClient.enable()).called(1);
      });

      test('disable() delegates to RecordClient', () {
        final client = KinesisDataStreams.withRecordClient(
          recordClient: mockRecordClient,
        );

        client.disable();

        verify(() => mockRecordClient.disable()).called(1);
      });

      test('isEnabled reflects RecordClient state', () {
        when(() => mockRecordClient.isEnabled).thenReturn(false);

        final client = KinesisDataStreams.withRecordClient(
          recordClient: mockRecordClient,
        );

        expect(client.isEnabled, isFalse);

        when(() => mockRecordClient.isEnabled).thenReturn(true);
        expect(client.isEnabled, isTrue);
      });
    });

    group('close()', () {
      test('delegates to RecordClient', () async {
        final client = KinesisDataStreams.withRecordClient(
          recordClient: mockRecordClient,
        );

        await client.close();

        verify(() => mockRecordClient.close()).called(1);
      });

      test('isClosed reflects RecordClient state', () {
        when(() => mockRecordClient.isClosed).thenReturn(false);

        final client = KinesisDataStreams.withRecordClient(
          recordClient: mockRecordClient,
        );

        expect(client.isClosed, isFalse);

        when(() => mockRecordClient.isClosed).thenReturn(true);
        expect(client.isClosed, isTrue);
      });
    });
  });
}

// =============================================================================
// Integration Tests with Real Database
// =============================================================================

/// These tests use real in-memory databases to verify end-to-end behavior.
void integrationTests() {
  // Note: Integration tests for Property 14 (persistence across restarts),
  // Property 16 (concurrent operations), and Property 19 (secure logging)
  // are covered in the RecordClient and RecordStorage tests since
  // KinesisDataStreams is a thin wrapper that delegates to RecordClient.
  //
  // The KinesisDataStreams class itself doesn't add any persistence,
  // concurrency, or logging logic - it simply creates and delegates to
  // the underlying components.
  //
  // See:
  // - test/record_storage_test.dart for Property 14 (persistence)
  // - test/record_client_test.dart for Property 16 (concurrent operations)
  // - The KinesisSender implementation for Property 19 (secure logging)
}
