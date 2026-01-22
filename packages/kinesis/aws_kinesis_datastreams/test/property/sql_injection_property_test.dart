// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// **Feature: kinesis-data-streams, Property 15: SQL injection prevention**
// **Validates: Requirements 9.3**
//
// *For any* record with malicious SQL characters in streamName, partitionKey,
// or data, the record SHALL be stored and retrieved correctly without SQL
// injection occurring.

import 'package:aws_kinesis_datastreams/src/impl/record_storage.dart';
import 'package:test/test.dart';

import '../helpers/test_database.dart';
import 'generators.dart';

void main() {
  group('Property 15: SQL injection prevention', () {
    const iterations = 100;

    test(
      'records with SQL injection characters are stored and retrieved correctly',
      () async {
        final generators = Generators(42); // Fixed seed for reproducibility

        for (var i = 0; i < iterations; i++) {
          // Create a fresh database for each iteration
          final db = createTestDatabase();
          final storage = RecordStorage(
            database: db,
            maxCacheBytes: 10 * 1024 * 1024,
          );

          try {
            // Generate a record with SQL injection characters
            final record = generators.sqlInjectionRecord();

            // Save the record - this should not cause SQL injection
            await storage.saveRecord(record);

            // Retrieve the record
            final retrieved = await storage.getRecordsBatch(maxCount: 1);

            // Verify the record was stored and retrieved correctly
            expect(retrieved, hasLength(1));
            expect(retrieved.first.streamName, equals(record.streamName));
            expect(retrieved.first.partitionKey, equals(record.partitionKey));
            expect(retrieved.first.data, equals(record.data));
            expect(retrieved.first.retryCount, equals(0));

            // Verify the database still works (wasn't corrupted by injection)
            final cacheSize = await storage.getCurrentCacheSize();
            expect(cacheSize, equals(record.dataSize));

            // Clear should still work
            await storage.clear();
            final afterClear = await storage.getRecordsBatch();
            expect(afterClear, isEmpty);
          } finally {
            await storage.close();
          }
        }
      },
    );

    test(
      'multiple records with SQL injection characters maintain data integrity',
      () async {
        final generators = Generators(123);
        final db = createTestDatabase();
        final storage = RecordStorage(
          database: db,
          maxCacheBytes: 10 * 1024 * 1024,
        );

        try {
          final records = <({String streamName, String partitionKey})>[];

          // Insert multiple records with injection characters
          for (var i = 0; i < 20; i++) {
            final record = generators.sqlInjectionRecord();
            await storage.saveRecord(record);
            records.add((
              streamName: record.streamName,
              partitionKey: record.partitionKey,
            ));
          }

          // Retrieve all records
          final retrieved = await storage.getRecordsBatch(maxCount: 100);

          // Verify count matches
          expect(retrieved, hasLength(20));

          // Verify each record's data is intact
          for (final stored in retrieved) {
            final matchingRecord = records.any(
              (r) =>
                  r.streamName == stored.streamName &&
                  r.partitionKey == stored.partitionKey,
            );
            expect(
              matchingRecord,
              isTrue,
              reason:
                  'Record with streamName=${stored.streamName} and partitionKey=${stored.partitionKey} should exist',
            );
          }
        } finally {
          await storage.close();
        }
      },
    );
  });
}
