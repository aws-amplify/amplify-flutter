// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Unit tests for PutRecords record-level validation.
///
/// Uses a small cache and maxRetries to keep allocations tiny while
/// exercising the same boundary logic that applies to the real limits.
///
/// Per the Kinesis PutRecords API spec:
/// - Each record's total size (partition key bytes + data blob bytes) must
///   not exceed 10 MiB
/// - Partition key: 1–256 Unicode code points
/// - dataSize should account for both partition key bytes (UTF-8) and data blob
///
/// See: https://docs.aws.amazon.com/kinesis/latest/APIReference/API_PutRecordsRequestEntry.html
library;

import 'dart:convert';
import 'dart:typed_data';

import 'package:amplify_kinesis_dart/src/exception/record_cache_exception.dart';
import 'package:amplify_kinesis_dart/src/impl/kinesis_record.dart';
import 'package:amplify_kinesis_dart/src/impl/kinesis_sender.dart';
import 'package:amplify_kinesis_dart/src/impl/record_client.dart';
import 'package:amplify_kinesis_dart/src/impl/storage/record_storage.dart';
import 'package:amplify_kinesis_dart/src/impl/storage/record_storage_sqlite.dart';
import 'package:amplify_kinesis_dart/src/kinesis_limits.dart' as limits;
import 'package:test/test.dart';

import 'helpers/test_database.dart';

void main() {
  group('RecordValidation', () {
    late SqliteRecordStorage storage;
    late RecordClient client;

    RecordClient createClient({
      required RecordStorage storage,
      int maxRetries = 3,
    }) {
      final sender = _NoOpSender();
      return RecordClient(
        storage: storage,
        sender: sender,
        maxRetries: maxRetries,
      );
    }

    setUp(() {
      final db = createTestDatabase();
      storage = SqliteRecordStorage(database: db, maxCacheBytes: 10000);
      client = createClient(storage: storage);
    });

    tearDown(() async {
      await client.close();
    });

    // ---------------------------------------------------------------
    // Per-record size limit (partition key + data blob)
    // ---------------------------------------------------------------

    group('per-record size limit', () {
      test('record exactly at max size is accepted', () async {
        // RecordClient validates against limits.maxRecordSizeBytes (10 MiB).
        // Use a large-cache client so the cache limit doesn't interfere.
        final largeDb = createTestDatabase();
        final largeStorage = SqliteRecordStorage(
          database: largeDb,
          maxCacheBytes: 20 * 1024 * 1024,
        );
        final largeClient = createClient(storage: largeStorage);

        const partitionKey = 'pk';
        final partitionKeyBytes = utf8.encode(partitionKey).length;
        final exactLimitData = Uint8List(
          limits.maxRecordSizeBytes - partitionKeyBytes,
        );

        await largeClient.record(
          RecordInput.now(
            data: exactLimitData,
            partitionKey: partitionKey,
            streamName: 'stream',
          ),
        );

        final records = (await largeStorage.getRecordsByStream()).values
            .expand((r) => r)
            .toList();
        expect(records, hasLength(1));

        await largeClient.close();
      });

      test('record exceeding max size by one byte is rejected', () async {
        const partitionKey = 'pk';
        final partitionKeyBytes = utf8.encode(partitionKey).length;
        final oversizedData = Uint8List(
          limits.maxRecordSizeBytes - partitionKeyBytes + 1,
        );

        expect(
          () => client.record(
            RecordInput.now(
              data: oversizedData,
              partitionKey: partitionKey,
              streamName: 'stream',
            ),
          ),
          throwsA(isA<RecordCacheValidationException>()),
        );
      });
    });

    // ---------------------------------------------------------------
    // dataSize includes partition key
    // ---------------------------------------------------------------

    group('dataSize includes partition key', () {
      test('dataSize accounts for partition key bytes', () {
        final partitionKey = 'k' * 10; // 10 bytes UTF-8
        final data = Uint8List(50);
        final record = RecordInput.now(
          data: data,
          partitionKey: partitionKey,
          streamName: 'stream',
        );

        expect(record.dataSize, equals(60)); // 50 + 10
      });

      test('dataSize with multi-byte unicode partition key', () {
        // Each emoji is 4 bytes in UTF-8, 2 emojis = 8 bytes
        const partitionKey = '😀😀';
        final data = Uint8List(10);
        final record = RecordInput.now(
          data: data,
          partitionKey: partitionKey,
          streamName: 'stream',
        );

        expect(record.dataSize, equals(18)); // 10 + 8
      });
    });

    // ---------------------------------------------------------------
    // Cache size limit respects full record size
    // ---------------------------------------------------------------

    group('cache size limit', () {
      test(
        'cache limit accounts for partition key in cumulative size',
        () async {
          final tightDb = createTestDatabase();
          final tightStorage = SqliteRecordStorage(
            database: tightDb,
            maxCacheBytes: 80,
          );
          final tightClient = createClient(storage: tightStorage);

          final partitionKey = 'k' * 10; // 10 bytes
          final data = Uint8List(30); // 30 bytes
          // Total per record = 40 bytes

          // First record: 40 bytes — fits in 80-byte cache
          await tightClient.record(
            RecordInput.now(
              data: data,
              partitionKey: partitionKey,
              streamName: 'stream',
            ),
          );

          // Second record: 40 more → total 80 — still fits
          await tightClient.record(
            RecordInput.now(
              data: data,
              partitionKey: partitionKey,
              streamName: 'stream',
            ),
          );

          // Third record: 40 more → total 120 > 80 limit
          expect(
            () => tightClient.record(
              RecordInput.now(
                data: data,
                partitionKey: partitionKey,
                streamName: 'stream',
              ),
            ),
            throwsA(isA<RecordCacheLimitExceededException>()),
          );

          await tightClient.close();
        },
      );
    });

    // ---------------------------------------------------------------
    // Partition key validation (1–256 Unicode code points)
    // ---------------------------------------------------------------

    group('partition key validation', () {
      test('empty partition key is rejected', () async {
        expect(
          () => client.record(
            RecordInput.now(
              data: Uint8List.fromList([1, 2, 3]),
              partitionKey: '',
              streamName: 'stream',
            ),
          ),
          throwsA(isA<RecordCacheValidationException>()),
        );
      });

      test('partition key at max length 256 code points is accepted', () async {
        await client.record(
          RecordInput.now(
            data: Uint8List.fromList([1]),
            partitionKey: 'k' * 256,
            streamName: 'stream',
          ),
        );

        final records = (await storage.getRecordsByStream()).values
            .expand((r) => r)
            .toList();
        expect(records, hasLength(1));
      });

      test('partition key exceeding 256 code points is rejected', () async {
        expect(
          () => client.record(
            RecordInput.now(
              data: Uint8List.fromList([1]),
              partitionKey: 'k' * 257,
              streamName: 'stream',
            ),
          ),
          throwsA(isA<RecordCacheValidationException>()),
        );
      });

      test('partition key with emoji counts code points correctly', () async {
        // Each emoji (😀) is 1 code point but 4 bytes in UTF-8.
        // 10 emoji = 10 code points (within 256 limit).
        final partitionKey = '😀' * 10;
        await client.record(
          RecordInput.now(
            data: Uint8List.fromList([1]),
            partitionKey: partitionKey,
            streamName: 'stream',
          ),
        );

        final records = (await storage.getRecordsByStream()).values
            .expand((r) => r)
            .toList();
        expect(records, hasLength(1));
      });

      test(
        'partition key exceeding 256 code points with emoji is rejected',
        () async {
          // 257 emoji = 257 code points > 256 limit
          final partitionKey = '😀' * 257;
          expect(
            () => client.record(
              RecordInput.now(
                data: Uint8List.fromList([1]),
                partitionKey: partitionKey,
                streamName: 'stream',
              ),
            ),
            throwsA(isA<RecordCacheValidationException>()),
          );
        },
      );
    });

    // ---------------------------------------------------------------
    // Recovery after rejection
    // ---------------------------------------------------------------

    group('recovery after rejection', () {
      test(
        'storage accepts valid records after rejecting oversized one',
        () async {
          // Oversized record should be rejected
          expect(
            () => client.record(
              RecordInput.now(
                data: Uint8List(limits.maxRecordSizeBytes),
                partitionKey: 'k' * 20,
                streamName: 'stream',
              ),
            ),
            throwsA(isA<RecordCacheValidationException>()),
          );

          // Valid record should still work
          await client.record(
            RecordInput.now(
              data: Uint8List.fromList([1, 2, 3]),
              partitionKey: 'a',
              streamName: 'stream',
            ),
          );

          final size = storage.getCurrentCacheSize();
          // "a" (1) + data (3) = 4
          expect(size, equals(4));
        },
      );
    });
  });
}

/// No-op sender for validation tests that don't need to send records.
class _NoOpSender implements KinesisSender {
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

  @override
  Future<PutRecordsResult> putRecords({
    required String streamName,
    required List<Record> records,
  }) async {
    return PutRecordsResult(
      successfulIds: records.map((r) => r.id).toList(),
      failedIds: const [],
      retryableIds: const [],
    );
  }
}
