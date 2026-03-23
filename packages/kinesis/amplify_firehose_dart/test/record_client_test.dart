// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:amplify_firehose_dart/src/exception/record_cache_exception.dart';
import 'package:amplify_firehose_dart/src/impl/firehose_record.dart';
import 'package:amplify_firehose_dart/src/impl/firehose_sender.dart';
import 'package:amplify_firehose_dart/src/impl/record_client.dart';
import 'package:amplify_firehose_dart/src/impl/storage/record_storage_sqlite.dart';
import 'package:amplify_firehose_dart/src/model/flush_data.dart';
import 'package:test/test.dart';

import 'helpers/test_database.dart';

void main() {
  group('RecordClient', () {
    late SqliteRecordStorage storage;
    late _TestFirehoseSender sender;
    late RecordClient client;

    setUp(() {
      final db = createTestDatabase();
      storage = SqliteRecordStorage(
        database: db,
        maxCacheBytes: 1024, // 1KB for testing
      );
      sender = _TestFirehoseSender();
      client = RecordClient(
        storage: storage,
        sender: sender,
        maxRetries: 3,
      );
    });

    tearDown(() async {
      await client.close();
    });

    group('record()', () {
      test('accepts records and stores them', () async {
        await client.record(RecordInput.now(
          data: Uint8List.fromList([1, 2, 3]),
          streamName: 'stream',
        ));

        final recordsByStream = await storage.getRecordsByStream();
        expect(recordsByStream['stream'], hasLength(1));
      });

      test('rejects oversized records via storage validation', () async {
        expect(
          () => client.record(RecordInput.now(
            data: Uint8List(1000 * 1024 + 1),
            streamName: 'stream',
          )),
          throwsA(isA<RecordCacheValidationException>()),
        );
      });

      test('rejects when cache is full', () async {
        await client.record(RecordInput.now(
          data: Uint8List(900),
          streamName: 'stream',
        ));

        // 900 + 200 > 1024
        expect(
          () => client.record(RecordInput.now(
            data: Uint8List(200),
            streamName: 'stream',
          )),
          throwsA(isA<RecordCacheLimitExceededException>()),
        );
      });

      test('accepts record exactly at 1000 KB limit', () async {
        final largeStorage = SqliteRecordStorage(
          database: createTestDatabase(),
          maxCacheBytes: 2 * 1024 * 1024,
        );
        final largeClient = RecordClient(
          storage: largeStorage,
          sender: _TestFirehoseSender(),
          maxRetries: 3,
        );

        await largeClient.record(RecordInput.now(
          data: Uint8List(1000 * 1024),
          streamName: 'stream',
        ));

        final recordsByStream = await largeStorage.getRecordsByStream();
        expect(recordsByStream['stream'], hasLength(1));

        await largeClient.close();
      });
    });

    group('flush()', () {
      test('sends all cached records and returns FlushData', () async {
        for (var i = 0; i < 3; i++) {
          await client.record(RecordInput.now(
            data: Uint8List.fromList([i]),
            streamName: 'stream',
          ));
        }

        final result = await client.flush();

        expect(result, isA<FlushData>());
        expect(result.recordsFlushed, equals(3));
        expect(sender.putRecordBatchCalls, hasLength(1));
        expect(sender.putRecordBatchCalls.first.records, hasLength(3));
      });

      test('returns FlushData with flushInProgress when already flushing',
          () async {
        await client.record(RecordInput.now(
          data: Uint8List.fromList([1]),
          streamName: 'stream',
        ));

        final result = await client.flush();
        expect(result.recordsFlushed, equals(1));
        expect(result.flushInProgress, isFalse);
      });

      test('separates records by stream', () async {
        await client.record(RecordInput.now(
          data: Uint8List.fromList([1]),
          streamName: 'stream-a',
        ));
        await client.record(RecordInput.now(
          data: Uint8List.fromList([2]),
          streamName: 'stream-b',
        ));
        await client.record(RecordInput.now(
          data: Uint8List.fromList([3]),
          streamName: 'stream-a',
        ));

        final result = await client.flush();

        // Should have 2 calls - one per stream
        expect(sender.putRecordBatchCalls, hasLength(2));
        expect(result.recordsFlushed, equals(3));

        final streamNames =
            sender.putRecordBatchCalls.map((c) => c.streamName).toSet();
        expect(streamNames, containsAll(['stream-a', 'stream-b']));
      });

      test('deletes successful records after send', () async {
        await client.record(RecordInput.now(
          data: Uint8List.fromList([1]),
          streamName: 'stream',
        ));

        await client.flush();

        final recordsByStream = await storage.getRecordsByStream();
        expect(recordsByStream, isEmpty);
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

        await client.record(RecordInput.now(
          data: Uint8List.fromList([1]),
          streamName: 'stream',
        ));

        // First flush: retryable failure
        await client.flush();
        // Second flush: success
        await client.flush();

        expect(callCount, equals(2));
        final recordsByStream = await storage.getRecordsByStream();
        expect(recordsByStream, isEmpty);
      });

      test('handles mixed success and failure', () async {
        for (var i = 0; i < 3; i++) {
          await client.record(RecordInput.now(
            data: Uint8List.fromList([i]),
            streamName: 'stream',
          ));
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

        // First flush: 1 success, 1 failed (deleted), 1 retryable
        await client.flush();
        // Second flush: retryable record succeeds
        await client.flush();

        final recordsByStream = await storage.getRecordsByStream();
        expect(recordsByStream, isEmpty);
        expect(callCount, equals(2));
      });

      test('invalid stream records do not block valid stream flushes',
          () async {
        final testStorage = SqliteRecordStorage(
          database: createTestDatabase(),
          maxCacheBytes: 1024,
        );
        final testSender = _TestFirehoseSender();
        final testClient = RecordClient(
          storage: testStorage,
          sender: testSender,
          maxRetries: 3,
        );

        testSender.streamResultProvider = (streamName, records) {
          if (streamName == 'invalid-stream') {
            throw Exception('ResourceNotFoundException');
          }
          return PutRecordBatchResult(
            successfulRecordIndices: List.generate(records.length, (i) => i),
            failedRecordIndices: [],
            retryableRecordIndices: [],
          );
        };

        await testClient.record(RecordInput.now(
          data: Uint8List.fromList([1, 2, 3]),
          streamName: 'invalid-stream',
        ));

        // First flush — invalid record fails, retry count incremented
        final firstFlush = await testClient.flush();
        expect(firstFlush.recordsFlushed, equals(0));

        await testClient.record(RecordInput.now(
          data: Uint8List.fromList([4, 5, 6]),
          streamName: 'valid-stream',
        ));

        // Second flush — valid record should succeed
        final secondFlush = await testClient.flush();
        expect(secondFlush.recordsFlushed, equals(1));

        final validCalls = testSender.putRecordBatchCalls
            .where((c) => c.streamName == 'valid-stream')
            .toList();
        expect(validCalls, hasLength(1));
        expect(validCalls.first.records, hasLength(1));

        await testClient.close();
      });
    });

    group('clearCache()', () {
      test('removes all cached records and returns ClearCacheData', () async {
        for (var i = 0; i < 5; i++) {
          await client.record(RecordInput.now(
            data: Uint8List.fromList([i]),
            streamName: 'stream',
          ));
        }

        final result = await client.clearCache();

        expect(result.recordsCleared, equals(5));
        final recordsByStream = await storage.getRecordsByStream();
        expect(recordsByStream, isEmpty);
      });
    });
  });
}

/// Test double for FirehoseSender that tracks calls and allows configuring results.
class _TestFirehoseSender implements FirehoseSender {
  final List<_PutRecordBatchCall> putRecordBatchCalls = [];
  PutRecordBatchResult? nextResult;
  PutRecordBatchResult Function(List<FirehoseSenderRecord> records)?
      resultProvider;
  PutRecordBatchResult Function(
          String streamName, List<FirehoseSenderRecord> records)?
      streamResultProvider;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

  @override
  Future<PutRecordBatchResult> putRecordBatch({
    required String deliveryStreamName,
    required List<FirehoseSenderRecord> records,
  }) async {
    putRecordBatchCalls.add(
      _PutRecordBatchCall(streamName: deliveryStreamName, records: records),
    );

    if (streamResultProvider != null) {
      return streamResultProvider!(deliveryStreamName, records);
    }

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
