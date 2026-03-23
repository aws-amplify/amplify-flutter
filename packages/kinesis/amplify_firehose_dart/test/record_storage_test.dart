// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:amplify_firehose_dart/src/exception/record_cache_exception.dart';
import 'package:amplify_firehose_dart/src/impl/firehose_record.dart';
import 'package:amplify_firehose_dart/src/impl/storage/record_storage_sqlite.dart';
import 'package:test/test.dart';

import 'helpers/test_database.dart';

void main() {
  group('SqliteRecordStorage', () {
    late SqliteRecordStorage storage;

    setUp(() {
      final db = createTestDatabase();
      storage = SqliteRecordStorage(
        database: db,
        maxCacheBytes: 10 * 1024 * 1024,
      );
    });

    tearDown(() async {
      await storage.close();
    });

    group('addRecord', () {
      test('saves record with valid data', () async {
        final record = RecordInput.now(
          data: Uint8List.fromList([1, 2, 3, 4, 5]),
          streamName: 'test-stream',
        );

        await storage.addRecord(record);

        final recordsByStream = await storage.getRecordsByStream();
        expect(recordsByStream, hasLength(1));
        final records = recordsByStream['test-stream']!;
        expect(records, hasLength(1));
        expect(records.first.streamName, equals('test-stream'));
        expect(records.first.data, equals(Uint8List.fromList([1, 2, 3, 4, 5])));
        expect(records.first.dataSize, equals(5));
        expect(records.first.retryCount, equals(0));
      });

      test('rejects oversized records', () async {
        final oversized = RecordInput.now(
          data: Uint8List(1000 * 1024 + 1),
          streamName: 'stream',
        );

        expect(
          () => storage.addRecord(oversized),
          throwsA(isA<RecordCacheValidationException>()),
        );
      });

      test('rejects when cache is full', () async {
        final smallStorage = SqliteRecordStorage(
          database: createTestDatabase(),
          maxCacheBytes: 100,
        );

        await smallStorage.addRecord(RecordInput.now(
          data: Uint8List(80),
          streamName: 'stream',
        ));

        expect(
          () => smallStorage.addRecord(RecordInput.now(
            data: Uint8List(30),
            streamName: 'stream',
          )),
          throwsA(isA<RecordCacheLimitExceededException>()),
        );

        await smallStorage.close();
      });

      test('tracks cachedSize in memory', () async {
        expect(storage.getCurrentCacheSize(), equals(0));

        await storage.addRecord(RecordInput.now(
          data: Uint8List(100),
          streamName: 'stream',
        ));
        expect(storage.getCurrentCacheSize(), equals(100));

        await storage.addRecord(RecordInput.now(
          data: Uint8List(200),
          streamName: 'stream',
        ));
        expect(storage.getCurrentCacheSize(), equals(300));
      });
    });

    group('getRecordsByStream', () {
      test('respects maxRecordsPerBatch limit', () async {
        final limitedStorage = SqliteRecordStorage(
          database: createTestDatabase(),
          maxCacheBytes: 10 * 1024 * 1024,
          maxRecordsPerBatch: 5,
        );

        for (var i = 0; i < 10; i++) {
          await limitedStorage.addRecord(RecordInput.now(
            data: Uint8List.fromList([i]),
            streamName: 'stream',
          ));
        }

        final recordsByStream = await limitedStorage.getRecordsByStream();
        final total = recordsByStream.values.fold<int>(
          0,
          (sum, list) => sum + list.length,
        );
        expect(total, equals(5));

        await limitedStorage.close();
      });

      test('respects maxBatchSizeBytes limit', () async {
        for (var i = 0; i < 10; i++) {
          await storage.addRecord(RecordInput.now(
            data: Uint8List(100),
            streamName: 'stream',
          ));
        }

        final limitedStorage = SqliteRecordStorage(
          database: storage.database,
          maxCacheBytes: 10 * 1024 * 1024,
          maxBatchSizeBytes: 350,
          initialCachedSize: 1000,
        );

        final recordsByStream = await limitedStorage.getRecordsByStream();
        final total = recordsByStream.values.fold<int>(
          0,
          (sum, list) => sum + list.length,
        );
        expect(total, equals(3));
      });

      test('returns records sorted by stream_name, id', () async {
        await storage.addRecord(RecordInput.now(
          data: Uint8List.fromList([1]),
          streamName: 'stream-b',
        ));
        await storage.addRecord(RecordInput.now(
          data: Uint8List.fromList([2]),
          streamName: 'stream-a',
        ));
        await storage.addRecord(RecordInput.now(
          data: Uint8List.fromList([3]),
          streamName: 'stream-b',
        ));

        final recordsByStream = await storage.getRecordsByStream();

        expect(recordsByStream.keys.toList(), equals(['stream-a', 'stream-b']));
        expect(recordsByStream['stream-a'], hasLength(1));
        expect(recordsByStream['stream-b'], hasLength(2));
      });
    });

    group('deleteRecords', () {
      test('removes correct records by ID', () async {
        for (var i = 0; i < 5; i++) {
          await storage.addRecord(RecordInput.now(
            data: Uint8List.fromList([i]),
            streamName: 'stream',
          ));
        }

        final allRecords =
            (await storage.getRecordsByStream())['stream']!;
        expect(allRecords, hasLength(5));

        final idsToDelete = [allRecords[1].id, allRecords[3].id];
        await storage.deleteRecords(idsToDelete);

        final remaining =
            (await storage.getRecordsByStream())['stream']!;
        expect(remaining, hasLength(3));
        expect(remaining.map((r) => r.id), isNot(contains(idsToDelete[0])));
        expect(remaining.map((r) => r.id), isNot(contains(idsToDelete[1])));
      });

      test('handles empty ID list gracefully', () async {
        await storage.addRecord(RecordInput.now(
          data: Uint8List.fromList([1]),
          streamName: 'stream',
        ));

        await storage.deleteRecords([]);

        final recordsByStream = await storage.getRecordsByStream();
        expect(recordsByStream['stream'], hasLength(1));
      });

      test('updates cachedSize after deletion', () async {
        await storage.addRecord(RecordInput.now(
          data: Uint8List(100),
          streamName: 'stream',
        ));
        await storage.addRecord(RecordInput.now(
          data: Uint8List(200),
          streamName: 'stream',
        ));
        expect(storage.getCurrentCacheSize(), equals(300));

        final records = (await storage.getRecordsByStream())['stream']!;
        await storage.deleteRecords([records.first.id]);

        expect(storage.getCurrentCacheSize(), equals(200));
      });
    });

    group('incrementRetryCount', () {
      test('increments retry count correctly', () async {
        await storage.addRecord(RecordInput.now(
          data: Uint8List.fromList([1]),
          streamName: 'stream',
        ));

        var records = (await storage.getRecordsByStream())['stream']!;
        expect(records.first.retryCount, equals(0));

        await storage.incrementRetryCount([records.first.id]);

        records = (await storage.getRecordsByStream())['stream']!;
        expect(records.first.retryCount, equals(1));

        await storage.incrementRetryCount([records.first.id]);

        records = (await storage.getRecordsByStream())['stream']!;
        expect(records.first.retryCount, equals(2));
      });
    });

    group('getRecordCount', () {
      test('returns correct count', () async {
        expect(await storage.getRecordCount(), equals(0));

        for (var i = 0; i < 3; i++) {
          await storage.addRecord(RecordInput.now(
            data: Uint8List.fromList([i]),
            streamName: 'stream',
          ));
        }

        expect(await storage.getRecordCount(), equals(3));
      });
    });

    group('clearRecords', () {
      test('removes all records and resets cachedSize', () async {
        for (var i = 0; i < 5; i++) {
          await storage.addRecord(RecordInput.now(
            data: Uint8List.fromList([i]),
            streamName: 'stream',
          ));
        }

        expect(storage.getCurrentCacheSize(), greaterThan(0));

        await storage.clearRecords();

        final recordsByStream = await storage.getRecordsByStream();
        expect(recordsByStream, isEmpty);
        expect(storage.getCurrentCacheSize(), equals(0));
      });
    });
  });
}
