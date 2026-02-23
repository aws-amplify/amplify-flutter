// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_amazon_firehose/src/db/firehose_record_database.dart';
import 'package:aws_amazon_firehose/src/impl/firehose_record.dart';
import 'package:drift/drift.dart';

/// {@template aws_amazon_firehose.record_storage}
/// Manages SQLite database operations for record persistence.
/// {@endtemplate}
class RecordStorage {
  /// {@macro aws_amazon_firehose.record_storage}
  RecordStorage({
    required FirehoseRecordDatabase database,
    required int maxCacheBytes,
  })  : _db = database,
        _maxCacheBytes = maxCacheBytes;

  final FirehoseRecordDatabase _db;
  final int _maxCacheBytes;

  /// The maximum cache size in bytes.
  int get maxCacheBytes => _maxCacheBytes;

  /// Saves a record to the database using parameterized queries.
  Future<void> saveRecord(FirehoseDataRecord record) async {
    await _db.into(_db.firehoseRecords).insert(
          FirehoseRecordsCompanion.insert(
            streamName: record.streamName,
            data: record.data,
            dataSize: record.dataSize,
            createdAt: record.createdAt.millisecondsSinceEpoch,
          ),
        );
  }

  /// Retrieves a batch of records sorted by stream_name, id.
  ///
  /// Returns records up to [maxCount] records and [maxBytes] total size.
  /// Uses window functions to efficiently limit at the database level.
  ///
  /// Note: Firehose has a 4MB batch limit (vs 5MB for Kinesis Data Streams).
  Future<List<StoredRecord>> getRecordsBatch({
    int maxCount = 500,
    int maxBytes = 4 * 1024 * 1024, // 4MB for Firehose
  }) async {
    // Use window functions to compute row number and running size,
    // then filter to get records within both limits.
    // Include record if: running_size <= maxBytes OR it's the first record (rn = 1)
    // Note: No partition_key sorting for Firehose (unlike Kinesis Data Streams)
    final results = await _db.customSelect(
      '''
      SELECT id, stream_name, data, data_size, retry_count, created_at
      FROM (
        SELECT *,
          ROW_NUMBER() OVER (ORDER BY stream_name, id) as rn,
          SUM(data_size) OVER (ORDER BY stream_name, id) as running_size
        FROM firehose_records
      )
      WHERE rn <= ?1 AND (running_size <= ?2 OR rn = 1)
      ORDER BY stream_name, id
      ''',
      variables: [Variable.withInt(maxCount), Variable.withInt(maxBytes)],
      readsFrom: {_db.firehoseRecords},
    ).get();

    return results.map((row) {
      return StoredRecord(
        id: row.read<int>('id'),
        streamName: row.read<String>('stream_name'),
        data: row.read<Uint8List>('data'),
        dataSize: row.read<int>('data_size'),
        retryCount: row.read<int>('retry_count'),
        createdAt: row.read<int>('created_at'),
      );
    }).toList();
  }

  /// Deletes records by their IDs.
  Future<void> deleteRecords(Iterable<int> ids) async {
    if (ids.isEmpty) return;

    await (_db.delete(_db.firehoseRecords)..where((t) => t.id.isIn(ids))).go();
  }

  /// Increments the retry count for the specified records.
  Future<void> incrementRetryCount(Iterable<int> ids) async {
    if (ids.isEmpty) return;

    for (final id in ids) {
      await (_db.update(_db.firehoseRecords)..where((t) => t.id.equals(id)))
          .write(
        FirehoseRecordsCompanion.custom(
          retryCount: _db.firehoseRecords.retryCount + const Constant(1),
        ),
      );
    }
  }

  /// Deletes records that have exceeded the maximum retry count.
  Future<void> deleteRecordsExceedingRetries(int maxRetries) async {
    await (_db.delete(_db.firehoseRecords)
          ..where((t) => t.retryCount.isBiggerThanValue(maxRetries)))
        .go();
  }

  /// Returns the current total size of cached data in bytes.
  Future<int> getCurrentCacheSize() async {
    final query = _db.selectOnly(_db.firehoseRecords)
      ..addColumns([_db.firehoseRecords.dataSize.sum()]);

    final result = await query.getSingleOrNull();
    if (result == null) return 0;

    final sum = result.read(_db.firehoseRecords.dataSize.sum());
    return sum ?? 0;
  }

  /// Deletes all records from the database.
  Future<void> clear() async {
    await _db.delete(_db.firehoseRecords).go();
  }

  /// Closes the database connection.
  Future<void> close() async {
    await _db.close();
  }
}
