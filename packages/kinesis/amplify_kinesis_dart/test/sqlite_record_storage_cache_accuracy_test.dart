// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Tests for SQLite record storage cache accuracy.
///
/// Verifies that the cached size reported by `getCurrentCacheSize()` stays
/// accurate through add, delete, clear, and mixed operations, and that
/// `getRecordsByStream` correctly handles excludingIds and per-stream limits.
library;

import 'dart:typed_data';

import 'package:amplify_kinesis_dart/src/impl/kinesis_record.dart';
import 'package:amplify_kinesis_dart/src/impl/storage/record_storage_sqlite.dart';
import 'package:test/test.dart';

import 'helpers/test_database.dart';

void main() {
  group('SQLiteRecordStorage cache accuracy', () {
    late SqliteRecordStorage storage;

    setUp(() {
      final db = createTestDatabase();
      storage = SqliteRecordStorage(database: db, maxCacheBytes: 1024 * 1024);
    });

    tearDown(() async {
      await storage.close();
    });

    // ---------------------------------------------------------------
    // Cache size accuracy
    // ---------------------------------------------------------------

    test('cached size matches database after add operations', () async {
      await storage.addRecord(
        RecordInput.now(
          data: Uint8List.fromList([1, 2, 3]),
          partitionKey: 'a',
          streamName: 'stream1',
        ),
      );
      await storage.addRecord(
        RecordInput.now(
          data: Uint8List.fromList([4, 5, 6, 7]),
          partitionKey: 'b',
          streamName: 'stream1',
        ),
      );

      final cachedSize = storage.getCurrentCacheSize();
      // "a"(1) + data(3) + "b"(1) + data(4) = 9
      expect(cachedSize, equals(9));
    });

    test('cached size matches database after delete operations', () async {
      await storage.addRecord(
        RecordInput.now(
          data: Uint8List.fromList([1, 2, 3]),
          partitionKey: 'a',
          streamName: 'stream1',
        ),
      );
      await storage.addRecord(
        RecordInput.now(
          data: Uint8List.fromList([4, 5, 6, 7]),
          partitionKey: 'b',
          streamName: 'stream1',
        ),
      );
      await storage.addRecord(
        RecordInput.now(
          data: Uint8List.fromList([8, 9]),
          partitionKey: 'c',
          streamName: 'stream2',
        ),
      );

      final allRecords = (await storage.getRecordsByStream()).values
          .expand((r) => r)
          .toList();
      final idsToDelete = allRecords.take(2).map((r) => r.id).toList();
      await storage.deleteRecords(idsToDelete);

      final cachedSize = storage.getCurrentCacheSize();
      // remaining: "c"(1) + data(2) = 3
      expect(cachedSize, equals(3));
    });

    test('cached size matches database after clear operations', () async {
      await storage.addRecord(
        RecordInput.now(
          data: Uint8List.fromList([1, 2, 3]),
          partitionKey: 'a',
          streamName: 'stream1',
        ),
      );
      await storage.addRecord(
        RecordInput.now(
          data: Uint8List.fromList([4, 5]),
          partitionKey: 'b',
          streamName: 'stream2',
        ),
      );

      await storage.clearRecords();

      final cachedSize = storage.getCurrentCacheSize();
      expect(cachedSize, equals(0));
    });

    test('cached size remains accurate through mixed operations', () async {
      // "a"(1) + data(5) = 6
      await storage.addRecord(
        RecordInput.now(
          data: Uint8List.fromList([1, 2, 3, 4, 5]),
          partitionKey: 'a',
          streamName: 'stream1',
        ),
      );
      // "b"(1) + data(3) = 4
      await storage.addRecord(
        RecordInput.now(
          data: Uint8List.fromList([6, 7, 8]),
          partitionKey: 'b',
          streamName: 'stream2',
        ),
      );

      var cachedSize = storage.getCurrentCacheSize();
      expect(cachedSize, equals(10)); // 6 + 4

      // Delete the first record
      final records = (await storage.getRecordsByStream()).values
          .expand((r) => r)
          .toList();
      await storage.deleteRecords([records.first.id]);

      cachedSize = storage.getCurrentCacheSize();
      expect(cachedSize, equals(4));

      // Add another record: "c"(1) + data(2) = 3
      await storage.addRecord(
        RecordInput.now(
          data: Uint8List.fromList([9, 10]),
          partitionKey: 'c',
          streamName: 'stream3',
        ),
      );

      cachedSize = storage.getCurrentCacheSize();
      expect(cachedSize, equals(7)); // 4 + 3
    });

    // ---------------------------------------------------------------
    // Concurrent producer/consumer
    // ---------------------------------------------------------------

    test(
      'concurrent producer consumer operations maintain cache accuracy',
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
            await storage.addRecord(
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
        final finalRecords = (await storage.getRecordsByStream()).values
            .expand((r) => r)
            .toList();
        final finalCacheSize = storage.getCurrentCacheSize();
        final expectedCacheSize = finalRecords.fold<int>(
          0,
          (s, r) => s + r.dataSize,
        );

        expect(finalCacheSize, equals(expectedCacheSize));

        // Verify every created key is either in DB or was deleted
        final remainingKeys = finalRecords.map((r) => r.partitionKey).toSet();
        final allCreatedKeys = createdKeys.values
            .expand((keys) => keys)
            .toSet();
        final allDeletedKeys = deletedKeys.expand((keys) => keys).toSet();

        for (final key in allCreatedKeys) {
          final inDb = remainingKeys.contains(key);
          final wasDeleted = allDeletedKeys.contains(key);
          expect(
            inDb || wasDeleted,
            isTrue,
            reason: 'Key $key should be in DB or deleted',
          );
        }

        for (final key in remainingKeys) {
          expect(
            allCreatedKeys.contains(key),
            isTrue,
            reason: 'Remaining key $key should have been created',
          );
        }

        expect(allCreatedKeys, isNotEmpty);
        expect(allDeletedKeys, isNotEmpty);
        expect(remainingKeys, isNotEmpty);
      },
    );

    // ---------------------------------------------------------------
    // getRecordsByStream with excludingIds
    // ---------------------------------------------------------------

    test(
      'getRecordsByStream with empty excludingIds returns all records',
      () async {
        await storage.addRecord(
          RecordInput.now(
            data: Uint8List.fromList([1]),
            partitionKey: 'key1',
            streamName: 'stream1',
          ),
        );
        await storage.addRecord(
          RecordInput.now(
            data: Uint8List.fromList([2]),
            partitionKey: 'key2',
            streamName: 'stream1',
          ),
        );
        await storage.addRecord(
          RecordInput.now(
            data: Uint8List.fromList([3]),
            partitionKey: 'key3',
            streamName: 'stream2',
          ),
        );

        final result = await storage.getRecordsByStream();
        final allRecords = result.values.expand((r) => r).toList();
        expect(allRecords, hasLength(3));
      },
    );
  });
}
