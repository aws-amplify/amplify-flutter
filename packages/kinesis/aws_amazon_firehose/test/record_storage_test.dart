// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:aws_amazon_firehose/src/impl/firehose_record.dart';
import 'package:aws_amazon_firehose/src/impl/record_storage.dart';
import 'package:test/test.dart';

import 'helpers/test_database.dart';

void main() {
  group('RecordStorage', () {
    late RecordStorage storage;

    setUp(() {
      final db = createTestDatabase();
      storage = RecordStorage(
        database: db,
        maxCacheBytes: 10 * 1024 * 1024,
      );
    });

    tearDown(() async {
      await storage.close();
    });

    group('saveRecord', () {
      test('saves record with valid data', () async {
        final record = FirehoseDataRecord(
          data: Uint8List.fromList([1, 2, 3, 4, 5]),
          streamName: 'test-stream',
        );

        await storage.saveRecord(record);

        final retrieved = await storage.getRecordsBatch(maxCount: 1);
        expect(retrieved, hasLength(1));
        expect(retrieved.first.streamName, equals('test-stream'));
        expect(retrieved.first.data, equals(Uint8List.fromList([1, 2, 3, 4, 5])));
        expect(retrieved.first.dataSize, equals(5));
        expect(retrieved.first.retryCount, equals(0));
      });
    });

    group('getRecordsBatch', () {
      test('respects maxCount limit', () async {
        for (var i = 0; i < 10; i++) {
          await storage.saveRecord(
            FirehoseDataRecord(
              data: Uint8List.fromList([i]),
              streamName: 'stream',
            ),
          );
        }

        final batch = await storage.getRecordsBatch(maxCount: 5);
        expect(batch, hasLength(5));
      });

      test('respects maxBytes limit', () async {
        for (var i = 0; i < 10; i++) {
          await storage.saveRecord(
            FirehoseDataRecord(
              data: Uint8List(100),
              streamName: 'stream',
            ),
          );
        }

        final batch = await storage.getRecordsBatch(maxBytes: 350);
        expect(batch, hasLength(3));
      });

      test('returns records sorted by stream_name, id (no partition_key)', () async {
        await storage.saveRecord(
          FirehoseDataRecord(
            data: Uint8List.fromList([1]),
            streamName: 'stream-b',
          ),
        );
        await storage.saveRecord(
          FirehoseDataRecord(
            data: Uint8List.fromList([2]),
            streamName: 'stream-a',
          ),
        );
        await storage.saveRecord(
          FirehoseDataRecord(
            data: Uint8List.fromList([3]),
            streamName: 'stream-b',
          ),
        );

        final batch = await storage.getRecordsBatch();

        // Should be sorted by stream_name, then id
        expect(batch[0].streamName, equals('stream-a'));
        expect(batch[1].streamName, equals('stream-b'));
        expect(batch[2].streamName, equals('stream-b'));
      });
    });

    group('deleteRecords', () {
      test('removes correct records by ID', () async {
        for (var i = 0; i < 5; i++) {
          await storage.saveRecord(
            FirehoseDataRecord(
              data: Uint8List.fromList([i]),
              streamName: 'stream',
            ),
          );
        }

        final allRecords = await storage.getRecordsBatch();
        expect(allRecords, hasLength(5));

        final idsToDelete = [allRecords[1].id, allRecords[3].id];
        await storage.deleteRecords(idsToDelete);

        final remaining = await storage.getRecordsBatch();
        expect(remaining, hasLength(3));
        expect(remaining.map((r) => r.id), isNot(contains(idsToDelete[0])));
        expect(remaining.map((r) => r.id), isNot(contains(idsToDelete[1])));
      });

      test('handles empty ID list gracefully', () async {
        await storage.saveRecord(
          FirehoseDataRecord(
            data: Uint8List.fromList([1]),
            streamName: 'stream',
          ),
        );

        await storage.deleteRecords([]);

        final records = await storage.getRecordsBatch();
        expect(records, hasLength(1));
      });
    });

    group('incrementRetryCount', () {
      test('increments retry count correctly', () async {
        await storage.saveRecord(
          FirehoseDataRecord(
            data: Uint8List.fromList([1]),
            streamName: 'stream',
          ),
        );

        final records = await storage.getRecordsBatch();
        expect(records.first.retryCount, equals(0));

        await storage.incrementRetryCount([records.first.id]);

        final updated = await storage.getRecordsBatch();
        expect(updated.first.retryCount, equals(1));

        await storage.incrementRetryCount([updated.first.id]);

        final updatedAgain = await storage.getRecordsBatch();
        expect(updatedAgain.first.retryCount, equals(2));
      });
    });

    group('deleteRecordsExceedingRetries', () {
      test('removes records over max retry limit', () async {
        for (var i = 0; i < 3; i++) {
          await storage.saveRecord(
            FirehoseDataRecord(
              data: Uint8List.fromList([i]),
              streamName: 'stream',
            ),
          );
        }

        final records = await storage.getRecordsBatch();

        for (var i = 0; i < 6; i++) {
          await storage.incrementRetryCount([records[0].id]);
        }

        await storage.deleteRecordsExceedingRetries(5);

        final remaining = await storage.getRecordsBatch();
        expect(remaining, hasLength(2));
        expect(remaining.map((r) => r.id), isNot(contains(records[0].id)));
      });
    });

    group('getCurrentCacheSize', () {
      test('returns accurate sum of data sizes', () async {
        await storage.saveRecord(
          FirehoseDataRecord(
            data: Uint8List(100),
            streamName: 'stream',
          ),
        );
        await storage.saveRecord(
          FirehoseDataRecord(
            data: Uint8List(200),
            streamName: 'stream',
          ),
        );
        await storage.saveRecord(
          FirehoseDataRecord(
            data: Uint8List(50),
            streamName: 'stream',
          ),
        );

        final size = await storage.getCurrentCacheSize();
        expect(size, equals(350));
      });

      test('returns 0 for empty database', () async {
        final size = await storage.getCurrentCacheSize();
        expect(size, equals(0));
      });
    });

    group('clear', () {
      test('removes all records', () async {
        for (var i = 0; i < 5; i++) {
          await storage.saveRecord(
            FirehoseDataRecord(
              data: Uint8List.fromList([i]),
              streamName: 'stream',
            ),
          );
        }

        final before = await storage.getRecordsBatch();
        expect(before, hasLength(5));

        await storage.clear();

        final after = await storage.getRecordsBatch();
        expect(after, isEmpty);

        final size = await storage.getCurrentCacheSize();
        expect(size, equals(0));
      });
    });
  });
}
