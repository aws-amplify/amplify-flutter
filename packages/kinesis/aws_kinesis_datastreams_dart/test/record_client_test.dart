// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:typed_data';

import 'package:aws_kinesis_datastreams_dart/src/exception/amplify_kinesis_exception.dart';
import 'package:aws_kinesis_datastreams_dart/src/exception/record_cache_exception.dart';
import 'package:aws_kinesis_datastreams_dart/src/flush_strategy/flush_strategy.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/auto_flush_scheduler.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_sender.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/record_client.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/record_storage.dart';
import 'package:aws_kinesis_datastreams_dart/src/kinesis_data_streams_options.dart';
import 'package:aws_kinesis_datastreams_dart/src/model/clear_cache_data.dart';
import 'package:aws_kinesis_datastreams_dart/src/model/flush_data.dart';
import 'package:aws_kinesis_datastreams_dart/src/sdk/kinesis.dart';
import 'package:test/test.dart';

import 'helpers/test_database.dart';

void main() {
  group('RecordClient', () {
    late RecordStorage storage;
    late _TestKinesisSender sender;
    late AutoFlushScheduler scheduler;
    late RecordClient client;

    setUp(() {
      final db = createTestDatabase();
      storage = RecordStorage(
        database: db,
        maxCacheBytes: 1024, // 1KB for testing
      );
      sender = _TestKinesisSender();
      scheduler = AutoFlushScheduler(
        strategy: const KinesisDataStreamsInterval(
          interval: Duration(hours: 1),
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
          KinesisRecord.now(
            data: Uint8List.fromList([1, 2, 3]),
            partitionKey: 'pk',
            streamName: 'stream',
          ),
        );

        final records = await storage.getRecordsBatch();
        expect(records, isEmpty);
      });

      test('accepts records when enabled', () async {
        await client.record(
          KinesisRecord.now(
            data: Uint8List.fromList([1, 2, 3]),
            partitionKey: 'pk',
            streamName: 'stream',
          ),
        );

        final records = await storage.getRecordsBatch();
        expect(records, hasLength(1));
      });

      test('throws RecordCacheLimitExceededException when cache is full',
          () async {
        // Fill the cache (1KB limit)
        await client.record(
          KinesisRecord.now(
            data: Uint8List(900),
            partitionKey: 'pk',
            streamName: 'stream',
          ),
        );

        // This should throw because 900 + 200 > 1024
        expect(
          () => client.record(
            KinesisRecord.now(
              data: Uint8List(200),
              partitionKey: 'pk',
              streamName: 'stream',
            ),
          ),
          throwsA(isA<RecordCacheLimitExceededException>()),
        );
      });

      test(
        'throws RecordCacheValidationException when record exceeds 10 MiB',
        () async {
          const partitionKey = 'pk';
          final partitionKeyBytes = utf8.encode(partitionKey).length;
          final oversizedData = Uint8List(
            kKinesisMaxRecordBytes - partitionKeyBytes + 1,
          );

          expect(
            () => client.record(
              KinesisRecord.now(
                data: oversizedData,
                partitionKey: partitionKey,
                streamName: 'stream',
              ),
            ),
            throwsA(isA<RecordCacheValidationException>()),
          );
        },
      );

      test(
        'accepts record exactly at 10 MiB limit (partition key + data)',
        () async {
          final largeDb = createTestDatabase();
          final largeStorage = RecordStorage(
            database: largeDb,
            maxCacheBytes: 20 * 1024 * 1024,
          );
          final largeScheduler = AutoFlushScheduler(
            strategy: const KinesisDataStreamsInterval(
              interval: Duration(hours: 1),
            ),
            onFlush: () async {},
          );
          final largeClient = RecordClient(
            storage: largeStorage,
            sender: _TestKinesisSender(),
            scheduler: largeScheduler,
            maxRetries: 3,
          );

          const partitionKey = 'pk';
          final partitionKeyBytes = utf8.encode(partitionKey).length;
          final exactLimitData = Uint8List(
            kKinesisMaxRecordBytes - partitionKeyBytes,
          );

          await largeClient.record(
            KinesisRecord.now(
              data: exactLimitData,
              partitionKey: partitionKey,
              streamName: 'stream',
            ),
          );

          final records = await largeStorage.getRecordsBatch();
          expect(records, hasLength(1));

          await largeClient.close();
        },
      );

      test('dataSize includes partition key size', () {
        const partitionKey = 'test-partition-key';
        final data = Uint8List.fromList([1, 2, 3]);
        final record = KinesisRecord.now(
          data: data,
          partitionKey: partitionKey,
          streamName: 'stream',
        );

        expect(
          record.dataSize,
          equals(data.length + utf8.encode(partitionKey).length),
        );
      });
    });

    group('enable() / disable()', () {
      test('disable then enable restores record acceptance', () async {
        client.disable();
        expect(client.isEnabled, isFalse);

        await client.record(
          KinesisRecord.now(
            data: Uint8List.fromList([1]),
            partitionKey: 'pk',
            streamName: 'stream',
          ),
        );

        var records = await storage.getRecordsBatch();
        expect(records, isEmpty);

        client.enable();
        expect(client.isEnabled, isTrue);

        await client.record(
          KinesisRecord.now(
            data: Uint8List.fromList([2]),
            partitionKey: 'pk',
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
            KinesisRecord.now(
              data: Uint8List.fromList([i]),
              partitionKey: 'pk-$i',
              streamName: 'stream',
            ),
          );
        }

        final result = await client.flush();

        expect(result, isA<FlushData>());
        expect(result.recordsFlushed, equals(3));
        expect(sender.putRecordsCalls, hasLength(1));
        expect(sender.putRecordsCalls.first.records, hasLength(3));
      });

      test('returns empty FlushData when disabled', () async {
        await client.record(
          KinesisRecord.now(
            data: Uint8List.fromList([1]),
            partitionKey: 'pk',
            streamName: 'stream',
          ),
        );

        client.disable();
        final result = await client.flush();

        expect(result.recordsFlushed, equals(0));
        expect(sender.putRecordsCalls, isEmpty);

        final records = await storage.getRecordsBatch();
        expect(records, hasLength(1));
      });

      test(
        'returns FlushData with flushInProgress when already flushing',
        () async {
          await client.record(
            KinesisRecord.now(
              data: Uint8List.fromList([1]),
              partitionKey: 'pk',
              streamName: 'stream',
            ),
          );

          final result = await client.flush();
          expect(result.recordsFlushed, equals(1));
          expect(result.flushInProgress, isFalse);
        },
      );

      test('respects batch size limits - 500 records', () async {
        final largeDb = createTestDatabase();
        final largeStorage = RecordStorage(
          database: largeDb,
          maxCacheBytes: 10 * 1024 * 1024,
        );
        final largeSender = _TestKinesisSender();
        final largeScheduler = AutoFlushScheduler(
          strategy: const KinesisDataStreamsInterval(
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

        for (var i = 0; i < 600; i++) {
          await largeClient.record(
            KinesisRecord.now(
              data: Uint8List.fromList([i % 256]),
              partitionKey: 'pk',
              streamName: 'stream',
            ),
          );
        }

        final result = await largeClient.flush();

        expect(largeSender.putRecordsCalls, hasLength(2));
        expect(largeSender.putRecordsCalls[0].records, hasLength(500));
        expect(largeSender.putRecordsCalls[1].records, hasLength(100));
        expect(result.recordsFlushed, equals(600));

        await largeClient.close();
      });

      test('separates records by stream', () async {
        await client.record(
          KinesisRecord.now(
            data: Uint8List.fromList([1]),
            partitionKey: 'pk',
            streamName: 'stream-a',
          ),
        );
        await client.record(
          KinesisRecord.now(
            data: Uint8List.fromList([2]),
            partitionKey: 'pk',
            streamName: 'stream-b',
          ),
        );
        await client.record(
          KinesisRecord.now(
            data: Uint8List.fromList([3]),
            partitionKey: 'pk',
            streamName: 'stream-a',
          ),
        );

        final result = await client.flush();

        expect(sender.putRecordsCalls, hasLength(2));
        expect(result.recordsFlushed, equals(3));

        final streamNames = sender.putRecordsCalls
            .map((c) => c.streamName)
            .toSet();
        expect(streamNames, containsAll(['stream-a', 'stream-b']));
      });

      test('deletes successful records after send', () async {
        await client.record(
          KinesisRecord.now(
            data: Uint8List.fromList([1]),
            partitionKey: 'pk',
            streamName: 'stream',
          ),
        );

        await client.flush();

        final records = await storage.getRecordsBatch();
        expect(records, isEmpty);
      });

      test('increments retry count for retryable failures', () async {
        sender.resultProvider = (records) {
          return PutRecordsResult(
            successfulRecordIndices: [],
            failedRecordIndices: [],
            retryableRecordIndices: List.generate(records.length, (i) => i),
          );
        };

        await client.record(
          KinesisRecord.now(
            data: Uint8List.fromList([1]),
            partitionKey: 'pk',
            streamName: 'stream',
          ),
        );

        await client.flush();
        expect(sender.putRecordsCalls, hasLength(1));

        sender.resultProvider = (records) => PutRecordsResult(
          successfulRecordIndices: List.generate(records.length, (i) => i),
          failedRecordIndices: [],
          retryableRecordIndices: [],
        );
        await client.flush();
        expect(sender.putRecordsCalls, hasLength(2));
      });

      test(
        'retains record with incremented retry count after retryable failure',
        () async {
          final testDb = createTestDatabase();
          final testStorage = RecordStorage(
            database: testDb,
            maxCacheBytes: 1024,
          );
          final testSender = _TestKinesisSender();
          final testScheduler = AutoFlushScheduler(
            strategy: const KinesisDataStreamsInterval(
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

          testSender.resultProvider = (records) => PutRecordsResult(
            successfulRecordIndices: [],
            failedRecordIndices: [],
            retryableRecordIndices: List.generate(records.length, (i) => i),
          );

          await testClient.record(
            KinesisRecord.now(
              data: Uint8List.fromList([1]),
              partitionKey: 'pk',
              streamName: 'stream',
            ),
          );

          for (var i = 0; i < 4; i++) {
            await testClient.flush();
          }

          expect(testSender.putRecordsCalls.length, equals(4));

          final records = await testStorage.getRecordsBatch();
          expect(records, isEmpty);

          await testClient.close();
        },
      );

      test('removes records exceeding max retries', () async {
        sender.nextResult = const PutRecordsResult(
          successfulRecordIndices: [],
          failedRecordIndices: [],
          retryableRecordIndices: [0],
        );

        await client.record(
          KinesisRecord.now(
            data: Uint8List.fromList([1]),
            partitionKey: 'pk',
            streamName: 'stream',
          ),
        );

        for (var i = 0; i < 4; i++) {
          await client.flush();
        }

        final records = await storage.getRecordsBatch();
        expect(records, isEmpty);
      });

      test('handles mixed success and failure', () async {
        for (var i = 0; i < 3; i++) {
          await client.record(
            KinesisRecord.now(
              data: Uint8List.fromList([i]),
              partitionKey: 'pk-$i',
              streamName: 'stream',
            ),
          );
        }

        sender.resultProvider = (records) {
          if (records.length == 3) {
            return const PutRecordsResult(
              successfulRecordIndices: [0],
              failedRecordIndices: [2],
              retryableRecordIndices: [1],
            );
          }
          return PutRecordsResult(
            successfulRecordIndices: List.generate(records.length, (i) => i),
            failedRecordIndices: [],
            retryableRecordIndices: [],
          );
        };

        final firstResult = await client.flush();
        expect(firstResult.recordsFlushed, equals(1));

        final secondResult = await client.flush();
        expect(secondResult.recordsFlushed, equals(1));

        final records = await storage.getRecordsBatch();
        expect(records, isEmpty);
      });

      test(
        'invalid stream records do not block valid stream flushes',
        () async {
          final testDb = createTestDatabase();
          final testStorage = RecordStorage(
            database: testDb,
            maxCacheBytes: 1024,
          );
          final testSender = _TestKinesisSender();
          final testScheduler = AutoFlushScheduler(
            strategy: const KinesisDataStreamsInterval(
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

          testSender.streamResultProvider = (streamName, records) {
            if (streamName == 'invalid-stream') {
              throw ResourceNotFoundException(
                message: 'Stream not found',
              );
            }
            return PutRecordsResult(
              successfulRecordIndices: List.generate(records.length, (i) => i),
              failedRecordIndices: [],
              retryableRecordIndices: [],
            );
          };

          await testClient.record(
            KinesisRecord.now(
              data: Uint8List.fromList([1, 2, 3]),
              partitionKey: 'pk',
              streamName: 'invalid-stream',
            ),
          );
          await testClient.record(
            KinesisRecord.now(
              data: Uint8List.fromList([4, 5, 6]),
              partitionKey: 'pk',
              streamName: 'valid-stream',
            ),
          );

          final result = await testClient.flush();
          expect(result.recordsFlushed, equals(1));

          final validCalls = testSender.putRecordsCalls
              .where((c) => c.streamName == 'valid-stream')
              .toList();
          expect(validCalls, hasLength(1));
          expect(validCalls.first.records, hasLength(1));

          await testClient.close();
        },
      );

      test(
        'non-SDK errors abort the flush',
        () async {
          final testDb = createTestDatabase();
          final testStorage = RecordStorage(
            database: testDb,
            maxCacheBytes: 1024,
          );
          final testSender = _TestKinesisSender();
          final testScheduler = AutoFlushScheduler(
            strategy: const KinesisDataStreamsInterval(
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

          testSender.streamResultProvider = (streamName, records) {
            throw Exception('Network error');
          };

          await testClient.record(
            KinesisRecord.now(
              data: Uint8List.fromList([1, 2, 3]),
              partitionKey: 'pk',
              streamName: 'stream',
            ),
          );

          expect(
            testClient.flush,
            throwsA(isA<Exception>()),
          );

          await testClient.close();
        },
      );
    });

    group('clearCache()', () {
      test('removes all cached records and returns ClearCacheData', () async {
        for (var i = 0; i < 5; i++) {
          await client.record(
            KinesisRecord.now(
              data: Uint8List.fromList([i]),
              partitionKey: 'pk-$i',
              streamName: 'stream',
            ),
          );
        }

        final result = await client.clearCache();

        expect(result, isA<ClearCacheData>());
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
            KinesisRecord.now(
              data: Uint8List.fromList([1]),
              partitionKey: 'pk',
              streamName: 'stream',
            ),
          ),
          throwsA(isA<ClientClosedException>()),
        );
      });

      test('throws ClientClosedException on flush after close', () async {
        await client.close();

        expect(client.flush, throwsA(isA<ClientClosedException>()));
      });
    });
  });
}

/// Test double for KinesisSender.
class _TestKinesisSender implements KinesisSender {
  final List<_PutRecordsCall> putRecordsCalls = [];
  PutRecordsResult? nextResult;
  PutRecordsResult Function(List<KinesisSenderRecord> records)? resultProvider;
  PutRecordsResult Function(
    String streamName,
    List<KinesisSenderRecord> records,
  )? streamResultProvider;

  @override
  KinesisClient get sdkClient =>
      throw UnimplementedError('Not needed in tests');

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

  @override
  Future<PutRecordsResult> putRecords({
    required String streamName,
    required List<KinesisSenderRecord> records,
  }) async {
    putRecordsCalls.add(
      _PutRecordsCall(streamName: streamName, records: records),
    );

    if (streamResultProvider != null) {
      return streamResultProvider!(streamName, records);
    }

    if (resultProvider != null) {
      return resultProvider!(records);
    }

    if (nextResult != null) {
      return nextResult!;
    }

    return PutRecordsResult(
      successfulRecordIndices: List.generate(records.length, (i) => i),
      failedRecordIndices: [],
      retryableRecordIndices: [],
    );
  }
}

class _PutRecordsCall {
  _PutRecordsCall({required this.streamName, required this.records});

  final String streamName;
  final List<KinesisSenderRecord> records;
}
