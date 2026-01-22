// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_kinesis_datastreams/src/db/kinesis_record_database.dart';
import 'package:aws_kinesis_datastreams/src/impl/kinesis_record.dart';
import 'package:drift/drift.dart';

/// {@template aws_kinesis_datastreams.record_storage}
/// Manages SQLite database operations for record persistence.
/// {@endtemplate}
class RecordStorage {
  /// {@macro aws_kinesis_datastreams.record_storage}
  RecordStorage({
    required KinesisRecordDatabase database,
    required int maxCacheBytes,
  }) : _db = database,
       _maxCacheBytes = maxCacheBytes;

  final KinesisRecordDatabase _db;
  final int _maxCacheBytes;

  /// The maximum cache size in bytes.
  int get maxCacheBytes => _maxCacheBytes;

  /// Saves a record to the database using parameterized queries.
  Future<void> saveRecord(KinesisRecord record) async {
    await _db.into(_db.kinesisRecords).insert(
      KinesisRecordsCompanion.insert(
        streamName: record.streamName,
        partitionKey: record.partitionKey,
        data: record.data,
        dataSize: record.dataSize,
        createdAt: record.createdAt.millisecondsSinceEpoch,
      ),
    );
  }

  /// Retrieves a batch of records sorted by stream_name, partition_key, id.
  ///
  /// Returns records up to [maxCount] records and [maxBytes] total size.
  Future<List<StoredRecord>> getRecordsBatch({
    int maxCount = 500,
    int maxBytes = 5 * 1024 * 1024,
  }) async {
    // Query records sorted by stream_name, partition_key, id
    final query = _db.select(_db.kinesisRecords)
      ..orderBy([
        (t) => OrderingTerm.asc(t.streamName),
        (t) => OrderingTerm.asc(t.partitionKey),
        (t) => OrderingTerm.asc(t.id),
      ]);

    final allRecords = await query.get();

    // Apply count and size limits
    final result = <StoredRecord>[];
    var totalBytes = 0;

    for (final record in allRecords) {
      if (result.length >= maxCount) break;
      if (totalBytes + record.dataSize > maxBytes && result.isNotEmpty) break;

      result.add(record);
      totalBytes += record.dataSize;
    }

    return result;
  }

  /// Deletes records by their IDs.
  Future<void> deleteRecords(Iterable<int> ids) async {
    if (ids.isEmpty) return;

    await (_db.delete(_db.kinesisRecords)
      ..where((t) => t.id.isIn(ids)))
      .go();
  }

  /// Increments the retry count for the specified records.
  Future<void> incrementRetryCount(Iterable<int> ids) async {
    if (ids.isEmpty) return;

    for (final id in ids) {
      await (_db.update(_db.kinesisRecords)
        ..where((t) => t.id.equals(id)))
        .write(
          KinesisRecordsCompanion.custom(
            retryCount: _db.kinesisRecords.retryCount + const Constant(1),
          ),
        );
    }
  }

  /// Deletes records that have exceeded the maximum retry count.
  Future<void> deleteRecordsExceedingRetries(int maxRetries) async {
    await (_db.delete(_db.kinesisRecords)
      ..where((t) => t.retryCount.isBiggerThanValue(maxRetries)))
      .go();
  }

  /// Returns the current total size of cached data in bytes.
  Future<int> getCurrentCacheSize() async {
    final query = _db.selectOnly(_db.kinesisRecords)
      ..addColumns([_db.kinesisRecords.dataSize.sum()]);

    final result = await query.getSingleOrNull();
    if (result == null) return 0;

    final sum = result.read(_db.kinesisRecords.dataSize.sum());
    return sum ?? 0;
  }

  /// Deletes all records from the database.
  Future<void> clear() async {
    await _db.delete(_db.kinesisRecords).go();
  }

  /// Closes the database connection.
  Future<void> close() async {
    await _db.close();
  }
}
