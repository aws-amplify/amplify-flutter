// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Property tests for RecordStorage class.
// **Feature: kinesis-data-streams**

import 'package:aws_kinesis_datastreams/src/impl/record_storage.dart';
import 'package:test/test.dart';

import '../helpers/test_database.dart';
import 'generators.dart';

void main() {
  group('RecordStorage Property Tests', () {
    const iterations = 100;

    group('Property 1: Record persistence when enabled', () {
      // **Feature: kinesis-data-streams, Property 1: Record persistence when enabled**
      // **Validates: Requirements 2.1, 2.3**
      //
      // *For any* valid record (data, partitionKey, streamName) and an enabled
      // KinesisDataStreams client, calling record() SHALL result in the record
      // being persisted to the database with correct metadata.

      test(
        'records are stored with correct metadata',
        () async {
          final generators = Generators(42);

          for (var i = 0; i < iterations; i++) {
            final db = createTestDatabase();
            final storage = RecordStorage(
              database: db,
              maxCacheBytes: 10 * 1024 * 1024,
            );

            try {
              final record = generators.randomRecord();

              await storage.saveRecord(record);

              final retrieved = await storage.getRecordsBatch(maxCount: 1);

              expect(retrieved, hasLength(1));
              expect(retrieved.first.streamName, equals(record.streamName));
              expect(retrieved.first.partitionKey, equals(record.partitionKey));
              expect(retrieved.first.data, equals(record.data));
              expect(retrieved.first.dataSize, equals(record.dataSize));
              expect(retrieved.first.retryCount, equals(0));
              expect(
                retrieved.first.createdAt,
                equals(record.createdAt.millisecondsSinceEpoch),
              );
            } finally {
              await storage.close();
            }
          }
        },
      );
    });

    group('Property 9: Batch ordering', () {
      // **Feature: kinesis-data-streams, Property 9: Batch ordering**
      // **Validates: Requirements 5.1**
      //
      // *For any* flush operation, records within a batch SHALL be sorted by
      // stream name, then by partition key, then by record ID (insertion order).

      test(
        'records are sorted by stream_name, partition_key, id',
        () async {
          final generators = Generators(42);

          for (var i = 0; i < iterations; i++) {
            final db = createTestDatabase();
            final storage = RecordStorage(
              database: db,
              maxCacheBytes: 10 * 1024 * 1024,
            );

            try {
              // Generate records with varying stream names and partition keys
              final streamNames = ['stream-a', 'stream-b', 'stream-c'];
              final partitionKeys = ['pk-1', 'pk-2', 'pk-3'];

              // Insert records in random order
              for (var j = 0; j < 15; j++) {
                final record = generators.randomRecord(
                  streamName: streamNames[j % 3],
                  partitionKey: partitionKeys[(j ~/ 3) % 3],
                );
                await storage.saveRecord(record);
              }

              final retrieved = await storage.getRecordsBatch(maxCount: 100);

              // Verify ordering
              for (var j = 1; j < retrieved.length; j++) {
                final prev = retrieved[j - 1];
                final curr = retrieved[j];

                final streamCompare = prev.streamName.compareTo(curr.streamName);
                if (streamCompare == 0) {
                  final pkCompare = prev.partitionKey.compareTo(curr.partitionKey);
                  if (pkCompare == 0) {
                    expect(
                      prev.id,
                      lessThan(curr.id),
                      reason: 'Records with same stream and partition key should be ordered by id',
                    );
                  } else {
                    expect(
                      pkCompare,
                      lessThan(0),
                      reason: 'Records with same stream should be ordered by partition key',
                    );
                  }
                } else {
                  expect(
                    streamCompare,
                    lessThan(0),
                    reason: 'Records should be ordered by stream name first',
                  );
                }
              }
            } finally {
              await storage.close();
            }
          }
        },
      );
    });

    group('Property 13: Clear cache removes all records', () {
      // **Feature: kinesis-data-streams, Property 13: Clear cache removes all records**
      // **Validates: Requirements 8.1**
      //
      // *For any* KinesisDataStreams client with cached records, calling
      // clearCache() SHALL result in an empty database with zero records.

      test(
        'clear() empties the database',
        () async {
          final generators = Generators(42);

          for (var i = 0; i < iterations; i++) {
            final db = createTestDatabase();
            final storage = RecordStorage(
              database: db,
              maxCacheBytes: 10 * 1024 * 1024,
            );

            try {
              // Insert random number of records (1-20)
              final recordCount = (i % 20) + 1;
              for (var j = 0; j < recordCount; j++) {
                await storage.saveRecord(generators.randomRecord());
              }

              // Verify records exist
              final beforeClear = await storage.getRecordsBatch(maxCount: 100);
              expect(beforeClear, hasLength(recordCount));

              // Clear the cache
              await storage.clear();

              // Verify database is empty
              final afterClear = await storage.getRecordsBatch(maxCount: 100);
              expect(afterClear, isEmpty);

              // Verify cache size is zero
              final cacheSize = await storage.getCurrentCacheSize();
              expect(cacheSize, equals(0));
            } finally {
              await storage.close();
            }
          }
        },
      );
    });
  });
}
