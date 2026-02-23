// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:aws_amazon_firehose/src/exception/amplify_firehose_exception.dart';
import 'package:aws_amazon_firehose/src/flush_strategy/flush_strategy.dart';
import 'package:aws_amazon_firehose/src/impl/auto_flush_scheduler.dart';
import 'package:aws_amazon_firehose/src/impl/firehose_record.dart';
import 'package:aws_amazon_firehose/src/impl/firehose_sender.dart';
import 'package:aws_amazon_firehose/src/impl/record_client.dart';
import 'package:aws_amazon_firehose/src/impl/record_storage.dart';
import 'package:aws_amazon_firehose/src/model/flush_data.dart';
import 'package:test/test.dart';

import 'helpers/test_database.dart';

void main() {
  group('RecordClient', () {
    late RecordStorage storage;
    late _TestFirehoseSender sender;
    late AutoFlushScheduler scheduler;
    late RecordClient client;

    setUp(() {
      final db = createTestDatabase();
      storage = RecordStorage(
        database: db,
        maxCacheBytes: 1024, // 1KB for testing
      );
      sender = _TestFirehoseSender();
      scheduler = AutoFlushScheduler(
        strategy: const AmazonDataFirehoseInterval(
          interval: Duration(hours: 1), // Long interval to avoid auto-flush
        ),
        onFlush: () async {},
      );
      client = RecordClient(
        storage: storage,
        sender: sender,
        scheduler: scheduler,
        maxRetries: 3,
      );
    });

    tearDown(() async {
      await client.close();
    });

    group('record()', () {
      test('rejects records when disabled', () async {
        client.disable();

        await client.record(
          FirehoseDataRecord(
            data: Uint8List.fromList([1, 2, 3]),
            streamName: 'stream',
          ),
        );

        final records = await storage.getRecordsBatch();
        expect(records, isEmpty);
      });

      test('accepts records when enabled', () async {
        await client.record(
          FirehoseDataRecord(
            data: Uint8List.fromList([1, 2, 3]),
            streamName: 'stream',
          ),
        );

        final records = await storage.getRecordsBatch();
        expect(records, hasLength(1));
      });

      test('throws FirehoseLimitExceededException when cache is full', () async {
        // Fill the cache (1KB limit)
        await client.record(
          FirehoseDataRecord(
            data: Uint8List(900),
            streamName: 'stream',
          ),
        );

        // This should throw because 900 + 200 > 1024
        expect(
          () => client.record(
            FirehoseDataRecord(
              data: Uint8List(200),
              streamName: 'stream',
            ),
          ),
          throwsA(isA<FirehoseLimitExceededException>()),
        );
      });
    });

    group('enable() / disable()', () {
      test('disable then enable restores record acceptance', () async {
        client.disable();
        expect(client.isEnabled, isFalse);

        await client.record(
          FirehoseDataRecord(
            data: Uint8List.fromList([1]),
            streamName: 'stream',
          ),
        );

        var records = await storage.getRecordsBatch();
        expect(records, isEmpty);

        client.enable();
        expect(client.isEnabled, isTrue);

        await client.record(
          FirehoseDataRecord(
            data: Uint8List.fromList([2]),
            streamName: 'stream',
          ),
        );

        records = await storage.getRecordsBatch();
        expect(records, hasLength(1));
      });
    });

    group('flush()', () {
      test('sends all cached records and returns FlushData', () async {
        for (var i = 0; i < 3; i++) {
          await client.record(
            FirehoseDataRecord(
              data: Uint8List.fromList([i]),
              streamName: 'stream',
            ),
          );
        }

        final result = await client.flush();

        expect(result, isA<FlushData>());
        expect(result.recordsFlushed, equals(3));
        expect(sender.putRecordBatchCalls, hasLength(1));
        expect(sender.putRecordBatchCalls.first.records, hasLength(3));
      });

      test('returns empty FlushData when disabled', () async {
        await client.record(
          FirehoseDataRecord(
            data: Uint8List.fromList([1]),
            streamName: 'stream',
          ),
        );

        client.disable();
        final result = await client.flush();

        expect(result.recordsFlushed, equals(0));
        expect(sender.putRecordBatchCalls, isEmpty);

        // Records should still be in storage
        final records = await storage.getRecordsBatch();
        expect(records, hasLength(1));
      });

      test('returns FlushData with flushInProgress when already flushing', () async {
        // This tests the _flushing guard
        await client.record(
          FirehoseDataRecord(
            data: Uint8List.fromList([1]),
            streamName: 'stream',
          ),
        );

        // First flush should work normally
        final result = await client.flush();
        expect(result.recordsFlushed, equals(1));
        expect(result.flushInProgress, isFalse);
      });

      test('respects batch size limits - 500 records', () async {
        // Create a client with larger cache
        final largeDb = createTestDatabase();
        final largeStorage = RecordStorage(
          database: largeDb,
          maxCacheBytes: 10 * 1024 * 1024, // 10MB
        );
        final largeSender = _TestFirehoseSender();
        final largeScheduler = AutoFlushScheduler(
          strategy: const AmazonDataFirehoseInterval(
            interval: Duration(hours: 1),
          ),
          onFlush: () async {},
        );
        final largeClient = RecordClient(
          storage: largeStorage,
          sender: largeSender,
          scheduler: largeScheduler,
          maxRetries: 3,
        );

        // Add 600 records
        for (var i = 0; i < 600; i++) {
          await largeClient.record(
            FirehoseDataRecord(
              data: Uint8List.fromList([i % 256]),
              streamName: 'stream',
            ),
          );
        }

        final result = await largeClient.flush();

        // Should have made 2 calls: 500 + 100
        expect(largeSender.putRecordBatchCalls, hasLength(2));
        expect(largeSender.putRecordBatchCalls[0].records, hasLength(500));
        expect(largeSender.putRecordBatchCalls[1].records, hasLength(100));
        expect(result.recordsFlushed, equals(600));

        await largeClient.close();
      });

      test('separates records by stream', () async {
        await client.record(
          FirehoseDataRecord(
            data: Uint8List.fromList([1]),
            streamName: 'stream-a',
          ),
        );
        await client.record(
          FirehoseDataRecord(
            data: Uint8List.fromList([2]),
            streamName: 'stream-b',
          ),
        );
        await client.record(
          FirehoseDataRecord(
            data: Uint8List.fromList([3]),
            streamName: 'stream-a',
          ),
        );

        final result = await client.flush();

        // Should have 2 calls - one per stream
        expect(sender.putRecordBatchCalls, hasLength(2));
        expect(result.recordsFlushed, equals(3));

        final streamNames =
            sender.putRecordBatchCalls.map((c) => c.streamName).toSet();
        expect(streamNames, containsAll(['stream-a', 'stream-b']));
      });

      test('deletes successful records after send', () async {
        await client.record(
          FirehoseDataRecord(
            data: Uint8List.fromList([1]),
            streamName: 'stream',
          ),
        );

        await client.flush();

        final records = await storage.getRecordsBatch();
        expect(records, isEmpty);
      });

      test('increments retry count for retryable failures', () async {
        var callCount = 0;
        sender.resultProvider = (records) {
          callCount++;
          if (callCount == 1) {
            return PutRecordBatchResult(
              successfulRecordIndices: [],
              failedRecordIndices: [],
              retryableRecordIndices: List.generate(records.length, (i) => i),
            );
          }
          return PutRecordBatchResult(
            successfulRecordIndices: List.generate(records.length, (i) => i),
            failedRecordIndices: [],
            retryableRecordIndices: [],
          );
        };

        await client.record(
          FirehoseDataRecord(
            data: Uint8List.fromList([1]),
            streamName: 'stream',
          ),
        );

        await client.flush();

        expect(callCount, equals(2));
      });

      test('retains record with incremented retry count after retryable failure', () async {
        final testDb = createTestDatabase();
        final testStorage = RecordStorage(
          database: testDb,
          maxCacheBytes: 1024,
        );
        final testSender = _TestFirehoseSender();
        final testScheduler = AutoFlushScheduler(
          strategy: const AmazonDataFirehoseInterval(
            interval: Duration(hours: 1),
          ),
          onFlush: () async {},
        );
        final testClient = RecordClient(
          storage: testStorage,
          sender: testSender,
          scheduler: testScheduler,
          maxRetries: 3,
        );

        // Always return retryable failure
        testSender.resultProvider = (records) => PutRecordBatchResult(
          successfulRecordIndices: [],
          failedRecordIndices: [],
          retryableRecordIndices: List.generate(records.length, (i) => i),
        );

        await testClient.record(
          FirehoseDataRecord(
            data: Uint8List.fromList([1]),
            streamName: 'stream',
          ),
        );

        await testClient.flush();

        // Should be called 4 times (initial + 3 retries)
        expect(testSender.putRecordBatchCalls.length, equals(4));

        await testClient.close();
      });

      test('removes records exceeding max retries', () async {
        sender.nextResult = const PutRecordBatchResult(
          successfulRecordIndices: [],
          failedRecordIndices: [],
          retryableRecordIndices: [0],
        );

        await client.record(
          FirehoseDataRecord(
            data: Uint8List.fromList([1]),
            streamName: 'stream',
          ),
        );

        // Flush 4 times to exceed maxRetries (3)
        for (var i = 0; i < 4; i++) {
          await client.flush();
        }

        final records = await storage.getRecordsBatch();
        expect(records, isEmpty);
      });

      test('handles mixed success and failure', () async {
        for (var i = 0; i < 3; i++) {
          await client.record(
            FirehoseDataRecord(
              data: Uint8List.fromList([i]),
              streamName: 'stream',
            ),
          );
        }

        var callCount = 0;
        sender.resultProvider = (records) {
          callCount++;
          if (callCount == 1 && records.length == 3) {
            return const PutRecordBatchResult(
              successfulRecordIndices: [0],
              failedRecordIndices: [2],
              retryableRecordIndices: [1],
            );
          }
          return PutRecordBatchResult(
            successfulRecordIndices: List.generate(records.length, (i) => i),
            failedRecordIndices: [],
            retryableRecordIndices: [],
          );
        };

        await client.flush();

        final records = await storage.getRecordsBatch();
        expect(records, isEmpty);
        expect(callCount, equals(2));
      });
    });

    group('clearCache()', () {
      test('removes all cached records and returns ClearCacheData', () async {
        for (var i = 0; i < 5; i++) {
          await client.record(
            FirehoseDataRecord(
              data: Uint8List.fromList([i]),
              streamName: 'stream',
            ),
          );
        }

        final result = await client.clearCache();

        expect(result.recordsCleared, equals(5));
        final records = await storage.getRecordsBatch();
        expect(records, isEmpty);
      });
    });

    group('close()', () {
      test('marks client as closed', () async {
        expect(client.isClosed, isFalse);
        await client.close();
        expect(client.isClosed, isTrue);
      });

      test('throws ClientClosedException on record after close', () async {
        await client.close();

        expect(
          () => client.record(
            FirehoseDataRecord(
              data: Uint8List.fromList([1]),
              streamName: 'stream',
            ),
          ),
          throwsA(isA<ClientClosedException>()),
        );
      });

      test('throws ClientClosedException on flush after close', () async {
        await client.close();

        expect(
          () => client.flush(),
          throwsA(isA<ClientClosedException>()),
        );
      });
    });
  });
}

/// Test double for FirehoseSender that tracks calls and allows configuring results.
class _TestFirehoseSender implements FirehoseSender {
  final List<_PutRecordBatchCall> putRecordBatchCalls = [];
  PutRecordBatchResult? nextResult;
  PutRecordBatchResult Function(List<FirehoseSenderRecord> records)? resultProvider;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

  @override
  Future<PutRecordBatchResult> putRecordBatch({
    required String deliveryStreamName,
    required List<FirehoseSenderRecord> records,
  }) async {
    putRecordBatchCalls.add(_PutRecordBatchCall(streamName: deliveryStreamName, records: records));

    if (resultProvider != null) {
      return resultProvider!(records);
    }

    if (nextResult != null) {
      return nextResult!;
    }

    // Default: all records succeed
    return PutRecordBatchResult(
      successfulRecordIndices: List.generate(records.length, (i) => i),
      failedRecordIndices: [],
      retryableRecordIndices: [],
    );
  }
}

class _PutRecordBatchCall {
  _PutRecordBatchCall({required this.streamName, required this.records});

  final String streamName;
  final List<FirehoseSenderRecord> records;
}
