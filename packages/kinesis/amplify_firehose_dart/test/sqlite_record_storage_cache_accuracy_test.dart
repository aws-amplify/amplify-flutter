// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Tests for SQLite record storage cache accuracy.
///
/// Verifies that the cached size reported by `getCurrentCacheSize()` stays
/// accurate through add, delete, clear, and mixed operations, and that
/// `getRecordsByStream` correctly handles per-batch limits.
library;

import 'dart:typed_data';

import 'package:amplify_firehose_dart/src/impl/firehose_record.dart';
import 'package:amplify_firehose_dart/src/impl/storage/record_storage_sqlite.dart';
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

    test('cached size matches database after add operations', () async {
      await storage.addRecord(
        RecordInput.now(data: Uint8List.fromList([1, 2, 3]), streamName: 's1'),
      );
      await storage.addRecord(
        RecordInput.now(
          data: Uint8List.fromList([4, 5, 6, 7]),
          streamName: 's1',
        ),
      );

      final cachedSize = storage.getCurrentCacheSize();
      // data(3) + data(4) = 7
      expect(cachedSize, equals(7));
    });

    test('cached size matches database after delete operations', () async {
      await storage.addRecord(
        RecordInput.now(data: Uint8List.fromList([1, 2, 3]), streamName: 's1'),
      );
      await storage.addRecord(
        RecordInput.now(
          data: Uint8List.fromList([4, 5, 6, 7]),
          streamName: 's1',
        ),
      );
      await storage.addRecord(
        RecordInput.now(data: Uint8List.fromList([8, 9]), streamName: 's2'),
      );

      final allRecords = (await storage.getRecordsByStream()).values
          .expand((r) => r)
          .toList();
      final idsToDelete = allRecords.take(2).map((r) => r.id).toList();
      await storage.deleteRecords(idsToDelete);

      final cachedSize = storage.getCurrentCacheSize();
      // remaining: data(2) = 2
      expect(cachedSize, equals(2));
    });

    test('cached size matches database after clear operations', () async {
      await storage.addRecord(
        RecordInput.now(data: Uint8List.fromList([1, 2, 3]), streamName: 's1'),
      );
      await storage.addRecord(
        RecordInput.now(data: Uint8List.fromList([4, 5]), streamName: 's2'),
      );

      await storage.clearRecords();

      final cachedSize = storage.getCurrentCacheSize();
      expect(cachedSize, equals(0));
    });

    test('cached size remains accurate through mixed operations', () async {
      // data(5) = 5
      await storage.addRecord(
        RecordInput.now(
          data: Uint8List.fromList([1, 2, 3, 4, 5]),
          streamName: 's1',
        ),
      );
      // data(3) = 3
      await storage.addRecord(
        RecordInput.now(data: Uint8List.fromList([6, 7, 8]), streamName: 's2'),
      );

      var cachedSize = storage.getCurrentCacheSize();
      expect(cachedSize, equals(8)); // 5 + 3

      // Delete the first record
      final records = (await storage.getRecordsByStream()).values
          .expand((r) => r)
          .toList();
      await storage.deleteRecords([records.first.id]);

      cachedSize = storage.getCurrentCacheSize();
      expect(cachedSize, equals(3));

      // Add another record: data(2) = 2
      await storage.addRecord(
        RecordInput.now(data: Uint8List.fromList([9, 10]), streamName: 's3'),
      );

      cachedSize = storage.getCurrentCacheSize();
      expect(cachedSize, equals(5)); // 3 + 2
    });

    test(
      'concurrent producer consumer operations maintain cache accuracy',
      () async {
        const recordSize = 10;
        const producerCount = 4;
        const recordsPerProducer = 100;
        const consumerDeletions = 50;

        // Producers: each writes records concurrently
        final producers = List.generate(producerCount, (p) async {
          for (var i = 0; i < recordsPerProducer; i++) {
            await storage.addRecord(
              RecordInput.now(
                data: Uint8List(recordSize),
                streamName: 'stream$p',
              ),
            );
          }
        });

        // Consumers: delete records concurrently with producers
        final consumers = List.generate(2, (c) async {
          for (var i = 0; i < consumerDeletions; i++) {
            final byStream = await storage.getRecordsByStream();
            final records = byStream.values.expand((r) => r).toList();
            if (records.isNotEmpty) {
              await storage.deleteRecords([records.first.id]);
            }
          }
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
      },
    );

    test('getRecordsByStream returns all records with empty store', () async {
      await storage.addRecord(
        RecordInput.now(data: Uint8List.fromList([1]), streamName: 'stream1'),
      );
      await storage.addRecord(
        RecordInput.now(data: Uint8List.fromList([2]), streamName: 'stream1'),
      );
      await storage.addRecord(
        RecordInput.now(data: Uint8List.fromList([3]), streamName: 'stream2'),
      );

      final result = await storage.getRecordsByStream();
      final allRecords = result.values.expand((r) => r).toList();
      expect(allRecords, hasLength(3));
    });
  });
}
