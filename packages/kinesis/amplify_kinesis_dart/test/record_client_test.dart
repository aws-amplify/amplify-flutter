// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Tests for RecordClient.
///
/// Uses mocktail mocks for KinesisSender with pre-built PutRecordsResult
/// values and explicit IDs, rather than behavioral test doubles with
/// callback logic.
library;

import 'dart:typed_data';

import 'package:amplify_kinesis_dart/src/impl/kinesis_record.dart';
import 'package:amplify_kinesis_dart/src/impl/kinesis_sender.dart';
import 'package:amplify_kinesis_dart/src/impl/record_client.dart';
import 'package:amplify_kinesis_dart/src/impl/storage/record_storage.dart';
import 'package:amplify_kinesis_dart/src/impl/storage/record_storage_sqlite.dart';
import 'package:amplify_kinesis_dart/src/model/clear_cache_data.dart';
import 'package:amplify_kinesis_dart/src/model/flush_data.dart';
import 'package:amplify_kinesis_dart/src/sdk/kinesis.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'common/mocktail_mocks.dart';
import 'helpers/test_database.dart';

void main() {
  group('RecordClient', () {
    late SqliteRecordStorage storage;
    late MockKinesisSender mockSender;
    late RecordClient client;

    setUp(() {
      final db = createTestDatabase();
      storage = SqliteRecordStorage(
        database: db,
        maxCacheBytes: 1024, // 1KB for testing
      );
      mockSender = MockKinesisSender();
      client = RecordClient(
        storage: storage,
        sender: mockSender,
        maxRetries: 3,
      );
    });

    tearDown(() async {
      await client.close();
      resetMocktailState();
      reset(mockSender);
    });

    /// Helper to get all records from storage as a flat list.
    Future<List<Record>> getAllRecords() async {
      final byStream = await storage.getRecordsByStream();
      return byStream.values.expand((r) => r).toList();
    }

    group('record()', () {
      test('accepts records when enabled', () async {
        await client.record(
          RecordInput.now(
            data: Uint8List.fromList([1, 2, 3]),
            partitionKey: 'pk',
            streamName: 'stream',
          ),
        );

        final records = await getAllRecords();
        expect(records, hasLength(1));
      });
    });

    group('flush()', () {
      test('sends all cached records and returns FlushData', () async {
        for (var i = 0; i < 3; i++) {
          await client.record(
            RecordInput.now(
              data: Uint8List.fromList([i]),
              partitionKey: 'pk-$i',
              streamName: 'stream',
            ),
          );
        }

        final allRecords = await getAllRecords();

        // Mock: all records succeed
        when(
          () => mockSender.putRecords(
            streamName: any(named: 'streamName'),
            records: any(named: 'records'),
          ),
        ).thenAnswer(
          (_) async => PutRecordsResult(
            successfulIds: allRecords.map((r) => r.id).toList(),
            retryableIds: [],
            failedIds: [],
          ),
        );

        final result = await client.flush();

        expect(result, isA<FlushData>());
        expect(result.recordsFlushed, equals(3));
        verify(
          () => mockSender.putRecords(
            streamName: any(named: 'streamName'),
            records: any(named: 'records'),
          ),
        ).called(1);
      });

      test('separates records by stream', () async {
        await client.record(
          RecordInput.now(
            data: Uint8List.fromList([1]),
            partitionKey: 'pk',
            streamName: 'stream-a',
          ),
        );
        await client.record(
          RecordInput.now(
            data: Uint8List.fromList([2]),
            partitionKey: 'pk',
            streamName: 'stream-b',
          ),
        );
        await client.record(
          RecordInput.now(
            data: Uint8List.fromList([3]),
            partitionKey: 'pk',
            streamName: 'stream-a',
          ),
        );

        // Mock: all records succeed for any stream
        when(
          () => mockSender.putRecords(
            streamName: any(named: 'streamName'),
            records: any(named: 'records'),
          ),
        ).thenAnswer((invocation) async {
          final records = invocation.namedArguments[#records] as List<Record>;
          return PutRecordsResult(
            successfulIds: records.map((r) => r.id).toList(),
            retryableIds: [],
            failedIds: [],
          );
        });

        final result = await client.flush();

        expect(result.recordsFlushed, equals(3));
        verify(
          () => mockSender.putRecords(
            streamName: any(named: 'streamName'),
            records: any(named: 'records'),
          ),
        ).called(2);
      });

      test('deletes successful records after send', () async {
        await client.record(
          RecordInput.now(
            data: Uint8List.fromList([1]),
            partitionKey: 'pk',
            streamName: 'stream',
          ),
        );

        final allRecords = await getAllRecords();
        when(
          () => mockSender.putRecords(
            streamName: any(named: 'streamName'),
            records: any(named: 'records'),
          ),
        ).thenAnswer(
          (_) async => PutRecordsResult(
            successfulIds: allRecords.map((r) => r.id).toList(),
            retryableIds: [],
            failedIds: [],
          ),
        );

        await client.flush();

        expect(await getAllRecords(), isEmpty);
      });

      test('handles mixed success, retryable, and failed', () async {
        for (var i = 0; i < 3; i++) {
          await client.record(
            RecordInput.now(
              data: Uint8List.fromList([i]),
              partitionKey: 'pk-$i',
              streamName: 'stream',
            ),
          );
        }

        final allRecords = await getAllRecords();

        // Set record 3 to max retries (3) before flushing
        for (var i = 0; i < 3; i++) {
          await storage.incrementRetryCount([allRecords[2].id]);
        }

        // Mock: record 1 succeeds, record 2 retryable, record 3 failed
        when(
          () => mockSender.putRecords(
            streamName: any(named: 'streamName'),
            records: any(named: 'records'),
          ),
        ).thenAnswer(
          (_) async => PutRecordsResult(
            successfulIds: [allRecords[0].id],
            retryableIds: [allRecords[1].id],
            failedIds: [allRecords[2].id],
          ),
        );

        final result = await client.flush();
        expect(result.recordsFlushed, equals(1));

        // Only record 2 should remain with retry count incremented
        final remaining = await getAllRecords();
        expect(remaining, hasLength(1));
        expect(remaining[0].id, equals(allRecords[1].id));
        expect(remaining[0].retryCount, equals(1));
      });

      test(
        'increments retry count for all records when non-SDK error occurs',
        () async {
          for (var i = 0; i < 3; i++) {
            await client.record(
              RecordInput.now(
                data: Uint8List.fromList([i]),
                partitionKey: 'key$i',
                streamName: 'stream',
              ),
            );
          }

          when(
            () => mockSender.putRecords(
              streamName: any(named: 'streamName'),
              records: any(named: 'records'),
            ),
          ).thenThrow(Exception('Network error'));

          try {
            await client.flush();
            fail('Expected flush to throw');
          } on Exception {
            // Expected — non-SDK errors are rethrown
          }

          final remaining = await getAllRecords();
          expect(remaining, hasLength(3));
          for (final record in remaining) {
            expect(record.retryCount, equals(1));
          }
        },
      );

      test('deletes records at max retries when non-SDK error occurs', () async {
        for (var i = 0; i < 3; i++) {
          await client.record(
            RecordInput.now(
              data: Uint8List.fromList([i]),
              partitionKey: 'key$i',
              streamName: 'stream',
            ),
          );
        }

        // Set records 2 and 3 to max retries (3)
        final allRecords = await getAllRecords();
        for (var i = 0; i < 3; i++) {
          await storage.incrementRetryCount([
            allRecords[1].id,
            allRecords[2].id,
          ]);
        }

        when(
          () => mockSender.putRecords(
            streamName: any(named: 'streamName'),
            records: any(named: 'records'),
          ),
        ).thenThrow(Exception('Network error'));

        try {
          await client.flush();
          fail('Expected flush to throw');
        } on Exception {
          // Expected — non-SDK errors are rethrown
        }

        // Only record 1 should remain (records 2 and 3 deleted at max retries)
        final remaining = await getAllRecords();
        expect(remaining, hasLength(1));
        expect(remaining[0].id, equals(allRecords[0].id));
        expect(remaining[0].retryCount, equals(1));
      });

      test(
        'invalid stream records do not block valid stream flushes',
        () async {
          await client.record(
            RecordInput.now(
              data: Uint8List.fromList([1, 2, 3]),
              partitionKey: 'pk',
              streamName: 'invalid-stream',
            ),
          );
          await client.record(
            RecordInput.now(
              data: Uint8List.fromList([4, 5, 6]),
              partitionKey: 'pk',
              streamName: 'valid-stream',
            ),
          );

          final allRecords = await getAllRecords();
          final validRecord = allRecords.firstWhere(
            (r) => r.streamName == 'valid-stream',
          );

          when(
            () => mockSender.putRecords(
              streamName: 'invalid-stream',
              records: any(named: 'records'),
            ),
          ).thenThrow(ResourceNotFoundException(message: 'Stream not found'));

          when(
            () => mockSender.putRecords(
              streamName: 'valid-stream',
              records: any(named: 'records'),
            ),
          ).thenAnswer(
            (_) async => PutRecordsResult(
              successfulIds: [validRecord.id],
              retryableIds: [],
              failedIds: [],
            ),
          );

          final result = await client.flush();
          expect(result.recordsFlushed, equals(1));
        },
      );

      test('non-SDK errors abort the flush', () async {
        await client.record(
          RecordInput.now(
            data: Uint8List.fromList([1, 2, 3]),
            partitionKey: 'pk',
            streamName: 'stream',
          ),
        );

        when(
          () => mockSender.putRecords(
            streamName: any(named: 'streamName'),
            records: any(named: 'records'),
          ),
        ).thenThrow(Exception('Network error'));

        expect(client.flush, throwsA(isA<Exception>()));
      });
    });

    group('clearCache()', () {
      test('removes all cached records and returns ClearCacheData', () async {
        for (var i = 0; i < 5; i++) {
          await client.record(
            RecordInput.now(
              data: Uint8List.fromList([i]),
              partitionKey: 'pk-$i',
              streamName: 'stream',
            ),
          );
        }

        final result = await client.clearCache();

        expect(result, isA<ClearCacheData>());
        expect(result.recordsCleared, equals(5));
        expect(await getAllRecords(), isEmpty);
      });
    });

    group('close()', () {
      test('closes storage', () async {
        await client.close();
        // After close, storage operations should fail.
        // This is a basic smoke test — the storage is closed.
      });
    });
  });
}
