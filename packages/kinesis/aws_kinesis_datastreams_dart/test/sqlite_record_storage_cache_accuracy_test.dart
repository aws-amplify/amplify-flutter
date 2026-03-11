// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Tests for SQLite record storage cache accuracy.
///
/// Mirrors Android's `SQLiteRecordStorageCacheAccuracyTest.kt` and Swift's
/// `SQLiteRecordStorageCacheAccuracyTests.swift`.
///
/// Verifies that the cached size reported by `getCurrentCacheSize()` stays
/// accurate through add, delete, clear, and mixed operations, and that
/// `getRecordsByStream` correctly handles excludingIds and per-stream limits.
library;

import 'dart:typed_data';

import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/storage/record_storage_sqlite.dart';
import 'package:test/test.dart';

import 'helpers/test_database.dart';

void main() {
  group('SQLiteRecordStorage cache accuracy', () {
    late SqliteRecordStorage storage;

    setUp(() {
      final db = createTestDatabase();
      storage = SqliteRecordStorage(
        database: db,
        maxCacheBytes: 1024 * 1024,
      );
    });

    tearDown(() async {
      await storage.close();
    });

    // ---------------------------------------------------------------
    // Cache size accuracy
    // ---------------------------------------------------------------

    test('cached size matches database after add operations', () async {
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([1, 2, 3]),
          partitionKey: 'a',
          streamName: 'stream1',
        ),
      );
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([4, 5, 6, 7]),
          partitionKey: 'b',
          streamName: 'stream1',
        ),
      );

      final cachedSize = await storage.getCurrentCacheSize();
      // "a"(1) + data(3) + "b"(1) + data(4) = 9
      expect(cachedSize, equals(9));
    });

    test('cached size matches database after delete operations', () async {
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([1, 2, 3]),
          partitionKey: 'a',
          streamName: 'stream1',
        ),
      );
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([4, 5, 6, 7]),
          partitionKey: 'b',
          streamName: 'stream1',
        ),
      );
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([8, 9]),
          partitionKey: 'c',
          streamName: 'stream2',
        ),
      );

      final allRecords = await storage.getRecordsBatch();
      final idsToDelete = allRecords.take(2).map((r) => r.id).toList();
      await storage.deleteRecords(idsToDelete);

      final cachedSize = await storage.getCurrentCacheSize();
      // remaining: "c"(1) + data(2) = 3
      expect(cachedSize, equals(3));
    });

    test('cached size matches database after clear operations', () async {
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([1, 2, 3]),
          partitionKey: 'a',
          streamName: 'stream1',
        ),
      );
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([4, 5]),
          partitionKey: 'b',
          streamName: 'stream2',
        ),
      );

      await storage.clearRecords();

      final cachedSize = await storage.getCurrentCacheSize();
      expect(cachedSize, equals(0));
    });

    test('cached size remains accurate through mixed operations', () async {
      // "a"(1) + data(5) = 6
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([1, 2, 3, 4, 5]),
          partitionKey: 'a',
          streamName: 'stream1',
        ),
      );
      // "b"(1) + data(3) = 4
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([6, 7, 8]),
          partitionKey: 'b',
          streamName: 'stream2',
        ),
      );

      var cachedSize = await storage.getCurrentCacheSize();
      expect(cachedSize, equals(10)); // 6 + 4

      // Delete the first record
      final records = await storage.getRecordsBatch();
      await storage.deleteRecords([records.first.id]);

      cachedSize = await storage.getCurrentCacheSize();
      expect(cachedSize, equals(4));

      // Add another record: "c"(1) + data(2) = 3
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([9, 10]),
          partitionKey: 'c',
          streamName: 'stream3',
        ),
      );

      cachedSize = await storage.getCurrentCacheSize();
      expect(cachedSize, equals(7)); // 4 + 3
    });

    // ---------------------------------------------------------------
    // Concurrent producer/consumer
    // ---------------------------------------------------------------

    test('concurrent producer consumer operations maintain cache accuracy',
        () async {
      const recordSize = 10;
      const producerCount = 4;
      const recordsPerProducer = 100;
      const consumerDeletions = 50;

      final createdKeys = <String, Set<String>>{};
      final deletedKeys = <Set<String>>{};

      // Producers: each writes records concurrently
      final producers = List.generate(producerCount, (p) async {
        final keys = <String>{};
        for (var i = 0; i < recordsPerProducer; i++) {
          final key = 'producer${p}_record$i';
          await storage.saveRecord(
            RecordInput.now(
              data: Uint8List(recordSize),
              partitionKey: key,
              streamName: 'stream$p',
            ),
          );
          keys.add(key);
        }
        createdKeys['producer$p'] = keys;
      });

      // Consumers: delete records concurrently with producers
      final consumers = List.generate(2, (c) async {
        final deleted = <String>{};
        for (var i = 0; i < consumerDeletions; i++) {
          final byStream = await storage.getRecordsByStream();
          final records = byStream.values.expand((r) => r).toList();
          if (records.isNotEmpty) {
            final toDelete = records.first;
            await storage.deleteRecords([toDelete.id]);
            deleted.add(toDelete.partitionKey);
          }
        }
        deletedKeys.add(deleted);
      });

      await Future.wait([...producers, ...consumers]);

      // Verify cache size matches actual DB contents
      final finalRecords = (await storage.getRecordsByStream())
          .values
          .expand((r) => r)
          .toList();
      final finalCacheSize = await storage.getCurrentCacheSize();
      final expectedCacheSize =
          finalRecords.fold<int>(0, (s, r) => s + r.dataSize);

      expect(finalCacheSize, equals(expectedCacheSize));

      // Verify every created key is either in DB or was deleted
      final remainingKeys = finalRecords.map((r) => r.partitionKey).toSet();
      final allCreatedKeys =
          createdKeys.values.expand((keys) => keys).toSet();
      final allDeletedKeys = deletedKeys.expand((keys) => keys).toSet();

      for (final key in allCreatedKeys) {
        final inDb = remainingKeys.contains(key);
        final wasDeleted = allDeletedKeys.contains(key);
        expect(inDb || wasDeleted, isTrue,
            reason: 'Key $key should be in DB or deleted');
      }

      for (final key in remainingKeys) {
        expect(allCreatedKeys.contains(key), isTrue,
            reason: 'Remaining key $key should have been created');
      }

      expect(allCreatedKeys, isNotEmpty);
      expect(allDeletedKeys, isNotEmpty);
      expect(remainingKeys, isNotEmpty);
    });

    // ---------------------------------------------------------------
    // getRecordsByStream with excludingIds
    // ---------------------------------------------------------------

    test('getRecordsByStream with empty excludingIds returns all records',
        () async {
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([1]),
          partitionKey: 'key1',
          streamName: 'stream1',
        ),
      );
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([2]),
          partitionKey: 'key2',
          streamName: 'stream1',
        ),
      );
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([3]),
          partitionKey: 'key3',
          streamName: 'stream2',
        ),
      );

      final result = await storage.getRecordsByStream();
      final allRecords = result.values.expand((r) => r).toList();
      expect(allRecords, hasLength(3));
    });

    test('getRecordsByStream excludes specified record ids', () async {
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([1]),
          partitionKey: 'key1',
          streamName: 'stream1',
        ),
      );
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([2]),
          partitionKey: 'key2',
          streamName: 'stream1',
        ),
      );
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([3]),
          partitionKey: 'key3',
          streamName: 'stream1',
        ),
      );

      final allRecords =
          (await storage.getRecordsByStream()).values.expand((r) => r).toList();
      expect(allRecords, hasLength(3));

      final excludeIds = {allRecords[0].id, allRecords[2].id};
      final filtered = await storage.getRecordsByStream(
        excludingIds: excludeIds,
      );
      final filteredRecords = filtered.values.expand((r) => r).toList();

      expect(filteredRecords, hasLength(1));
      expect(filteredRecords[0].id, equals(allRecords[1].id));
    });

    test('getRecordsByStream with all ids excluded returns empty', () async {
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([1]),
          partitionKey: 'key1',
          streamName: 'stream1',
        ),
      );
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([2]),
          partitionKey: 'key2',
          streamName: 'stream1',
        ),
      );

      final allRecords =
          (await storage.getRecordsByStream()).values.expand((r) => r).toList();
      final excludeAll = allRecords.map((r) => r.id).toSet();

      final result = await storage.getRecordsByStream(
        excludingIds: excludeAll,
      );
      expect(result, isEmpty);
    });

    test('getRecordsByStream excludes ids across multiple streams', () async {
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([1]),
          partitionKey: 'key1',
          streamName: 'stream1',
        ),
      );
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([2]),
          partitionKey: 'key2',
          streamName: 'stream1',
        ),
      );
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([3]),
          partitionKey: 'key3',
          streamName: 'stream2',
        ),
      );
      await storage.saveRecord(
        RecordInput.now(
          data: Uint8List.fromList([4]),
          partitionKey: 'key4',
          streamName: 'stream2',
        ),
      );

      final allRecords =
          (await storage.getRecordsByStream()).values.expand((r) => r).toList();
      final stream1Record =
          allRecords.firstWhere((r) => r.streamName == 'stream1');
      final stream2Record =
          allRecords.firstWhere((r) => r.streamName == 'stream2');

      final filtered = await storage.getRecordsByStream(
        excludingIds: {stream1Record.id, stream2Record.id},
      );
      final remaining = filtered.values.expand((r) => r).toList();

      expect(remaining, hasLength(2));
      expect(remaining.every((r) => r.id != stream1Record.id), isTrue);
      expect(remaining.every((r) => r.id != stream2Record.id), isTrue);
    });

    // ---------------------------------------------------------------
    // Per-stream byte limit
    // ---------------------------------------------------------------

    test('getRecordsByStream respects per-stream byte limit', () async {
      // Default maxBytes is 10 MiB. Use a smaller maxBytes to test the limit.
      // Each record: "a" (1 byte key) + 50 bytes data = 51 bytes dataSize
      for (var i = 0; i < 6; i++) {
        await storage.saveRecord(
          RecordInput.now(
            data: Uint8List(50),
            partitionKey: 'a',
            streamName: 'stream-A',
          ),
        );
      }
      for (var i = 0; i < 6; i++) {
        await storage.saveRecord(
          RecordInput.now(
            data: Uint8List(50),
            partitionKey: 'b',
            streamName: 'stream-B',
          ),
        );
      }

      // 200 / 51 = 3.9 → at most 3 records per stream (3 × 51 = 153 ≤ 200)
      final result = await storage.getRecordsByStream(maxBytes: 200);
      expect(result.length, equals(2));

      for (final entry in result.entries) {
        expect(entry.value, hasLength(3));
        final totalSize = entry.value.fold<int>(0, (s, r) => s + r.dataSize);
        expect(totalSize, equals(153));
      }
    });

    // ---------------------------------------------------------------
    // Batch limit with excludingIds pagination
    // ---------------------------------------------------------------

    test('getRecordsByStream respects batch limit after excluding ids',
        () async {
      // Add 4 records to one stream
      for (var i = 0; i < 4; i++) {
        await storage.saveRecord(
          RecordInput.now(
            data: Uint8List.fromList([i]),
            partitionKey: 'key$i',
            streamName: 'stream1',
          ),
        );
      }

      // First batch: 2 records (batch limit)
      final batch1 = (await storage.getRecordsByStream(maxCount: 2))
          .values
          .expand((r) => r)
          .toList();
      expect(batch1, hasLength(2));

      // Second batch: exclude first 2, get next 2
      final excludeIds = batch1.map((r) => r.id).toSet();
      final batch2 = (await storage.getRecordsByStream(
        excludingIds: excludeIds,
        maxCount: 2,
      ))
          .values
          .expand((r) => r)
          .toList();
      expect(batch2, hasLength(2));
      expect(batch2.every((r) => !excludeIds.contains(r.id)), isTrue);

      // Third batch: exclude all 4, get nothing
      final allIds = {...excludeIds, ...batch2.map((r) => r.id)};
      final batch3 = await storage.getRecordsByStream(
        excludingIds: allIds,
        maxCount: 2,
      );
      expect(batch3, isEmpty);
    });
  });
}
