// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_kinesis_datastreams_dart/src/db/kinesis_record_database.dart';
import 'package:aws_kinesis_datastreams_dart/src/exception/amplify_kinesis_exception.dart'
    show defaultRecoverySuggestion;
import 'package:aws_kinesis_datastreams_dart/src/exception/record_cache_exception.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams_dart/src/kinesis_data_streams_options.dart'
    show kKinesisMaxBatchBytes, kKinesisMaxRecordsPerBatch;
import 'package:drift/drift.dart';

/// {@template aws_kinesis_datastreams.record_storage}
/// Manages SQLite database operations for record persistence.
/// {@endtemplate}
final class RecordStorage {
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
  Future<void> saveRecord(KinesisRecord record) => _wrapDbError(
    'Failed to add record to cache',
    () async {
      await _db.into(_db.kinesisRecords).insert(
        KinesisRecordsCompanion.insert(
          streamName: record.streamName,
          partitionKey: record.partitionKey,
          data: record.data,
          dataSize: record.dataSize,
          createdAt: record.createdAt.millisecondsSinceEpoch,
        ),
      );
    },
  );

  /// Retrieves a batch of records sorted by stream_name, partition_key, id.
  ///
  /// Returns records up to [maxCount] records and [maxBytes] total size.
  /// Uses window functions to efficiently limit at the database level.
  Future<List<StoredRecord>> getRecordsBatch({
    int maxCount = kKinesisMaxRecordsPerBatch,
    int maxBytes = kKinesisMaxBatchBytes,
  }) => _wrapDbError(
    'Could not retrieve records from storage',
    () async {
      final results = await _db
          .customSelect(
            '''
      SELECT id, stream_name, partition_key, data, data_size, retry_count, created_at
      FROM (
        SELECT *,
          ROW_NUMBER() OVER (ORDER BY stream_name, partition_key, id) as rn,
          SUM(data_size) OVER (ORDER BY stream_name, partition_key, id) as running_size
        FROM kinesis_records
      )
      WHERE rn <= ?1 AND (running_size <= ?2 OR rn = 1)
      ORDER BY stream_name, partition_key, id
      ''',
            variables: [Variable.withInt(maxCount), Variable.withInt(maxBytes)],
            readsFrom: {_db.kinesisRecords},
          )
          .get();

      return results.map((row) {
        return StoredRecord(
          id: row.read<int>('id'),
          streamName: row.read<String>('stream_name'),
          partitionKey: row.read<String>('partition_key'),
          data: row.read<Uint8List>('data'),
          dataSize: row.read<int>('data_size'),
          retryCount: row.read<int>('retry_count'),
          createdAt: row.read<int>('created_at'),
        );
      }).toList();
    },
  );

  /// Deletes records by their IDs.
  Future<void> deleteRecords(Iterable<int> ids) => _wrapDbError(
    'Failed to delete records from cache',
    () async {
      if (ids.isEmpty) return;
      await (_db.delete(_db.kinesisRecords)..where((t) => t.id.isIn(ids)))
          .go();
    },
  );

  /// Increments the retry count for the specified records.
  Future<void> incrementRetryCount(Iterable<int> ids) => _wrapDbError(
    'Failed to increment retry count',
    () async {
      if (ids.isEmpty) return;
      await (_db.update(_db.kinesisRecords)..where((t) => t.id.isIn(ids)))
          .write(
        KinesisRecordsCompanion.custom(
          retryCount: _db.kinesisRecords.retryCount + const Constant(1),
        ),
      );
    },
  );

  /// Retrieves records grouped by stream, excluding the given IDs.
  ///
  /// Each stream's records are limited by [maxCount] and [maxBytes].
  /// Returns a map from stream name to the list of records for that stream.
  Future<Map<String, List<StoredRecord>>> getRecordsByStream({
    Set<int> excludingIds = const {},
    int maxCount = kKinesisMaxRecordsPerBatch,
    int maxBytes = kKinesisMaxBatchBytes,
  }) => _wrapDbError(
    'Could not retrieve records from storage',
    () async {
      final excludeClause = excludingIds.isNotEmpty
          ? 'WHERE id NOT IN (${excludingIds.join(',')})'
          : '';

      final results = await _db
          .customSelect(
            '''
      SELECT id, stream_name, partition_key, data, data_size, retry_count, created_at
      FROM (
        SELECT *,
          ROW_NUMBER() OVER (PARTITION BY stream_name ORDER BY id) as rn,
          SUM(data_size) OVER (PARTITION BY stream_name ORDER BY id) as running_size
        FROM kinesis_records
        $excludeClause
      )
      WHERE rn <= ?1 AND running_size <= ?2
      ORDER BY stream_name, id
      ''',
            variables: [Variable.withInt(maxCount), Variable.withInt(maxBytes)],
            readsFrom: {_db.kinesisRecords},
          )
          .get();

      final recordsByStream = <String, List<StoredRecord>>{};
      for (final row in results) {
        final record = StoredRecord(
          id: row.read<int>('id'),
          streamName: row.read<String>('stream_name'),
          partitionKey: row.read<String>('partition_key'),
          data: row.read<Uint8List>('data'),
          dataSize: row.read<int>('data_size'),
          retryCount: row.read<int>('retry_count'),
          createdAt: row.read<int>('created_at'),
        );
        recordsByStream
            .putIfAbsent(record.streamName, () => [])
            .add(record);
      }
      return recordsByStream;
    },
  );

  /// Returns the current total size of cached data in bytes.
  Future<int> getCurrentCacheSize() => _wrapDbError(
    'Failed to get cache size',
    () async {
      final query = _db.selectOnly(_db.kinesisRecords)
        ..addColumns([_db.kinesisRecords.dataSize.sum()]);
      final result = await query.getSingleOrNull();
      if (result == null) return 0;
      return result.read(_db.kinesisRecords.dataSize.sum()) ?? 0;
    },
  );

  /// Returns the total number of cached records.
  Future<int> getRecordCount() => _wrapDbError(
    'Failed to get record count',
    () async {
      final query = _db.selectOnly(_db.kinesisRecords)
        ..addColumns([_db.kinesisRecords.id.count()]);
      final result = await query.getSingleOrNull();
      if (result == null) return 0;
      return result.read(_db.kinesisRecords.id.count()) ?? 0;
    },
  );

  /// Deletes all records from the database.
  Future<void> clear() => _wrapDbError(
    'Failed to clear cache',
    () async {
      await _db.delete(_db.kinesisRecords).go();
    },
  );

  /// Closes the database connection.
  Future<void> close() async {
    await _db.close();
  }

  /// Wraps a database operation, converting non-[RecordCacheException] errors
  /// to [RecordCacheDatabaseException].
  Future<T> _wrapDbError<T>(
    String message,
    Future<T> Function() operation,
  ) async {
    try {
      return await operation();
    } on RecordCacheException {
      rethrow;
    } on Object catch (e) {
      throw RecordCacheDatabaseException(
        message,
        defaultRecoverySuggestion,
        e,
      );
    }
  }
}
