// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:typed_data';

import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/storage/record_storage.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/storage/record_storage_memory.dart';
import 'package:test/test.dart';

void main() {
  group('InMemoryRecordStorage', () {
    late InMemoryRecordStorage storage;

    setUp(() {
      storage = InMemoryRecordStorage(maxCacheBytes: 10 * 1024 * 1024);
    });

    tearDown(() async {
      await storage.close();
    });

    /// Helper to get all records as a flat list.
    Future<List<Record>> getAllRecords() async {
      final byStream = await storage.getRecordsByStream();
      return byStream.values.expand((r) => r).toList();
    }

    group('saveRecord', () {
      test('saves and retrieves a record', () async {
        await storage.saveRecord(
          RecordInput.now(
            data: Uint8List.fromList([1, 2, 3, 4, 5]),
            partitionKey: 'test-partition',
            streamName: 'test-stream',
          ),
        );

        final retrieved = await getAllRecords();
        expect(retrieved, hasLength(1));
        expect(retrieved.first.streamName, equals('test-stream'));
        expect(retrieved.first.partitionKey, equals('test-partition'));
        expect(
          retrieved.first.data,
          equals(Uint8List.fromList([1, 2, 3, 4, 5])),
        );
        expect(retrieved.first.retryCount, equals(0));
      });
    });

    group('deleteRecords', () {
      test('removes correct records by ID', () async {
        for (var i = 0; i < 5; i++) {
          await storage.saveRecord(
            RecordInput.now(
              data: Uint8List.fromList([i]),
              partitionKey: 'pk-$i',
              streamName: 'stream',
            ),
          );
        }

        final allRecords = await getAllRecords();
        expect(allRecords, hasLength(5));

        final idsToDelete = [allRecords[1].id, allRecords[3].id];
        await storage.deleteRecords(idsToDelete);

        final remaining = await getAllRecords();
        expect(remaining, hasLength(3));
        expect(remaining.map((r) => r.id), isNot(contains(idsToDelete[0])));
        expect(remaining.map((r) => r.id), isNot(contains(idsToDelete[1])));
      });

      test('handles empty ID list gracefully', () async {
        await storage.saveRecord(
          RecordInput.now(
            data: Uint8List.fromList([1]),
            partitionKey: 'pk',
            streamName: 'stream',
          ),
        );

        await storage.deleteRecords([]);
        expect(await getAllRecords(), hasLength(1));
      });
    });

    group('incrementRetryCount', () {
      test('increments retry count correctly', () async {
        await storage.saveRecord(
          RecordInput.now(
            data: Uint8List.fromList([1]),
            partitionKey: 'pk',
            streamName: 'stream',
          ),
        );

        var records = await getAllRecords();
        expect(records.first.retryCount, equals(0));

        await storage.incrementRetryCount([records.first.id]);
        records = await getAllRecords();
        expect(records.first.retryCount, equals(1));

        await storage.incrementRetryCount([records.first.id]);
        records = await getAllRecords();
        expect(records.first.retryCount, equals(2));
      });
    });

    group('getRecordsByStream', () {
      test('returns records grouped by stream name', () async {
        await storage.saveRecord(RecordInput.now(data: Uint8List.fromList([1]), partitionKey: 'pk', streamName: 'stream-a'));
        await storage.saveRecord(RecordInput.now(data: Uint8List.fromList([2]), partitionKey: 'pk', streamName: 'stream-b'));
        await storage.saveRecord(RecordInput.now(data: Uint8List.fromList([3]), partitionKey: 'pk', streamName: 'stream-a'));

        final result = await storage.getRecordsByStream();
        expect(result.keys, containsAll(['stream-a', 'stream-b']));
        expect(result['stream-a'], hasLength(2));
        expect(result['stream-b'], hasLength(1));
      });

      test('excludes specified IDs', () async {
        await storage.saveRecord(RecordInput.now(data: Uint8List.fromList([1]), partitionKey: 'pk', streamName: 'stream'));
        await storage.saveRecord(RecordInput.now(data: Uint8List.fromList([2]), partitionKey: 'pk', streamName: 'stream'));

        final allRecords = await getAllRecords();
        final result = await storage.getRecordsByStream(excludingIds: {allRecords.first.id});
        expect(result['stream'], hasLength(1));
        expect(result['stream']!.first.id, equals(allRecords.last.id));
      });

      test('returns empty map when no records', () async {
        final result = await storage.getRecordsByStream();
        expect(result, isEmpty);
      });

      test('respects maxCount per stream', () async {
        for (var i = 0; i < 5; i++) {
          await storage.saveRecord(RecordInput.now(data: Uint8List.fromList([i]), partitionKey: 'pk-$i', streamName: 'stream'));
        }
        final result = await storage.getRecordsByStream(maxCount: 3);
        expect(result['stream'], hasLength(3));
      });
    });

    group('getCurrentCacheSize', () {
      test('returns accurate sum of data sizes', () async {
        await storage.saveRecord(RecordInput.now(data: Uint8List(100), partitionKey: 'pk-1', streamName: 'stream'));
        await storage.saveRecord(RecordInput.now(data: Uint8List(200), partitionKey: 'pk-2', streamName: 'stream'));
        await storage.saveRecord(RecordInput.now(data: Uint8List(50), partitionKey: 'pk-3', streamName: 'stream'));

        final size = await storage.getCurrentCacheSize();
        // dataSize includes partition key: (100+4) + (200+4) + (50+4) = 362
        expect(size, equals(362));
      });

      test('returns 0 for empty storage', () async {
        expect(await storage.getCurrentCacheSize(), equals(0));
      });
    });

    group('clearRecords', () {
      test('removes all records', () async {
        for (var i = 0; i < 5; i++) {
          await storage.saveRecord(RecordInput.now(data: Uint8List.fromList([i]), partitionKey: 'pk-$i', streamName: 'stream'));
        }
        expect(await getAllRecords(), hasLength(5));

        await storage.clearRecords();

        expect(await getAllRecords(), isEmpty);
        expect(await storage.getCurrentCacheSize(), equals(0));
      });
    });

    group('getRecordCount', () {
      test('returns correct count', () async {
        expect(await storage.getRecordCount(), equals(0));
        for (var i = 0; i < 3; i++) {
          await storage.saveRecord(RecordInput.now(data: Uint8List.fromList([i]), partitionKey: 'pk-$i', streamName: 'stream'));
        }
        expect(await storage.getRecordCount(), equals(3));
      });
    });
  });
}
