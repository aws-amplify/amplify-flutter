// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_kinesis_datastreams_dart/src/db/kinesis_record_database.dart';
import 'package:aws_kinesis_datastreams_dart/src/exception/amplify_kinesis_exception.dart'
    show defaultRecoverySuggestion;
import 'package:aws_kinesis_datastreams_dart/src/exception/record_cache_exception.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/storage/record_storage.dart';
import 'package:aws_kinesis_datastreams_dart/src/kinesis_data_streams_options.dart'
    show kKinesisMaxBatchBytes, kKinesisMaxPartitionKeyLength,
         kKinesisMaxRecordBytes, kKinesisMaxRecordsPerBatch;
import 'package:drift/drift.dart';
import 'package:meta/meta.dart';

/// {@template aws_kinesis_datastreams.sqlite_record_storage}
/// SQLite-backed [RecordStorage] implementation using Drift.
///
/// Used on VM (iOS, Android, macOS, Linux, Windows) platforms.
///
/// Matches Android's `SQLiteRecordStorage`:
/// - Limits are baked in at construction time (`maxRecordsPerStream`,
///   `maxBytesPerStream`) and applied in the SQL query.
/// - Maintains an in-memory cache size tracker (`_cachedSize`) that is
///   incremented on writes and recalculated from DB after deletes.
/// - `getCurrentCacheSize()` returns the cached value (O(1), no DB query).
///
/// ## Limitations vs Android
///
/// - Android uses a `Mutex` to serialize all DB operations. Drift handles
///   concurrency internally, so no explicit mutex is needed. The in-memory
///   cache size is not mutex-protected — concurrent `saveRecord` calls
///   could race on the increment. This is mitigated by
///   `RecordClient._recordLock` which serializes `record()` calls.
///
/// - Android uses explicit `BEGIN IMMEDIATE TRANSACTION` for
///   `getRecordsByStream` and `clearRecords`. Drift wraps individual
///   operations in implicit transactions.
/// {@endtemplate}
final class SqliteRecordStorage extends RecordStorage {
  /// {@macro aws_kinesis_datastreams.sqlite_record_storage}
  SqliteRecordStorage({
    required KinesisRecordDatabase database,
    required super.maxCacheBytes,
    int maxRecordsPerStream = kKinesisMaxRecordsPerBatch,
    int maxBytesPerStream = kKinesisMaxBatchBytes,
  }) : _db = database,
       _maxRecordsPerStream = maxRecordsPerStream,
       _maxBytesPerStream = maxBytesPerStream;

  final KinesisRecordDatabase _db;
  final int _maxRecordsPerStream;
  final int _maxBytesPerStream;

  /// In-memory cache size tracker, matching Android's `cachedSize`.
  /// Initialized lazily, then maintained incrementally.
  int _cachedSize = 0;
  bool _cacheSizeInitialized = false;

  /// Provides access to the underlying database (for testing).
  KinesisRecordDatabase get database => _db;

  /// Ensures the in-memory cache size is initialized from the database.
  Future<void> _ensureCacheSizeInitialized() async {
    if (!_cacheSizeInitialized) {
      _cachedSize = await _queryCacheSize();
      _cacheSizeInitialized = true;
    }
  }

  /// Recalculates the cache size from the database.
  /// Matches Android's `resetCacheSizeFromDb()`.
  Future<int> _queryCacheSize() async {
    final query = _db.selectOnly(_db.kinesisRecords)
      ..addColumns([_db.kinesisRecords.dataSize.sum()]);
    final result = await query.getSingleOrNull();
    if (result == null) return 0;
    return result.read(_db.kinesisRecords.dataSize.sum()) ?? 0;
  }

  @override
  Future<void> addRecord(RecordInput record) =>
      _wrapDbError('Failed to add record to cache', () async {
        await _ensureCacheSizeInitialized();

        // Validate partition key length (1–256 Unicode code points)
        final codePoints = record.partitionKey.runes.length;
        if (codePoints == 0 || codePoints > kKinesisMaxPartitionKeyLength) {
          throw RecordCacheValidationException(
            'Partition key length ($codePoints) is outside the allowed '
                'range of 1–$kKinesisMaxPartitionKeyLength characters.',
            'Use a partition key between 1 and '
                '$kKinesisMaxPartitionKeyLength characters.',
          );
        }

        // Validate per-record size limit
        if (record.dataSize > kKinesisMaxRecordBytes) {
          throw RecordCacheValidationException(
            'Record size (${record.dataSize} bytes) exceeds the maximum '
                'of $kKinesisMaxRecordBytes bytes (partition key + data blob).',
            'Reduce the record payload size or use a shorter partition key.',
          );
        }

        // Check cache size limit
        if (_cachedSize + record.dataSize > maxCacheBytes) {
          throw RecordCacheLimitExceededException(
            'Cache size limit exceeded: '
                '${_cachedSize + record.dataSize} bytes > $maxCacheBytes bytes',
            'Call flush() to send cached records or increase cache size limit.',
          );
        }

        await _db
            .into(_db.kinesisRecords)
            .insert(
              KinesisRecordsCompanion.insert(
                streamName: record.streamName,
                partitionKey: record.partitionKey,
                data: record.data,
                dataSize: record.dataSize,
                createdAt: record.createdAt.millisecondsSinceEpoch,
              ),
            );
        _cachedSize += record.dataSize;
      });

  /// Retrieves a batch of records sorted by stream_name, partition_key, id.
  ///
  /// Not part of the [RecordStorage] interface — used only in tests to
  /// inspect storage state.
  @visibleForTesting
  Future<List<Record>> getRecordsBatch({
    int maxCount = kKinesisMaxRecordsPerBatch,
    int maxBytes = kKinesisMaxBatchBytes,
  }) => _wrapDbError('Could not retrieve records from storage', () async {
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

    return results.map(_rowToRecord).toList();
  });

  @override
  Future<void> deleteRecords(Iterable<int> ids) => _wrapDbError(
    'Failed to delete records from cache',
    () async {
      if (ids.isEmpty) return;
      await (_db.delete(_db.kinesisRecords)..where((t) => t.id.isIn(ids))).go();
      // Recalculate from DB after deletes, matching Android's
      // resetCacheSizeFromDb() call in deleteRecords().
      _cachedSize = await _queryCacheSize();
    },
  );

  @override
  Future<void> incrementRetryCount(Iterable<int> ids) =>
      _wrapDbError('Failed to increment retry count', () async {
        if (ids.isEmpty) return;
        await (_db.update(
          _db.kinesisRecords,
        )..where((t) => t.id.isIn(ids))).write(
          KinesisRecordsCompanion.custom(
            retryCount: _db.kinesisRecords.retryCount + const Constant(1),
          ),
        );
      });

  @override
  Future<Map<String, List<Record>>> getRecordsByStream() =>
      _wrapDbError('Could not retrieve records from storage', () async {
    final results = await _db
        .customSelect(
          '''
      SELECT id, stream_name, partition_key, data, data_size, retry_count, created_at
      FROM (
        SELECT *,
          ROW_NUMBER() OVER (PARTITION BY stream_name ORDER BY id) as rn,
          SUM(data_size) OVER (PARTITION BY stream_name ORDER BY id) as running_size
        FROM kinesis_records
      )
      WHERE rn <= ?1 AND running_size <= ?2
      ORDER BY stream_name, id
      ''',
          variables: [
            Variable.withInt(_maxRecordsPerStream),
            Variable.withInt(_maxBytesPerStream),
          ],
          readsFrom: {_db.kinesisRecords},
        )
        .get();

    final recordsByStream = <String, List<Record>>{};
    for (final row in results) {
      final record = _rowToRecord(row);
      recordsByStream.putIfAbsent(record.streamName, () => []).add(record);
    }
    return recordsByStream;
  });

  /// Returns the in-memory cached size directly (O(1), no DB query).
  @visibleForTesting
  Future<int> getCurrentCacheSize() async {
    await _ensureCacheSizeInitialized();
    return _cachedSize;
  }

  @override
  Future<int> getRecordCount() =>
      _wrapDbError('Failed to get record count', () async {
        final query = _db.selectOnly(_db.kinesisRecords)
          ..addColumns([_db.kinesisRecords.id.count()]);
        final result = await query.getSingleOrNull();
        if (result == null) return 0;
        return result.read(_db.kinesisRecords.id.count()) ?? 0;
      });

  @override
  Future<void> clearRecords() => _wrapDbError('Failed to clear cache', () async {
    await _db.delete(_db.kinesisRecords).go();
    _cachedSize = 0;
  });

  @override
  Future<void> close() async {
    await _db.close();
  }

  /// Maps a Drift query row to a plain [Record].
  Record _rowToRecord(QueryRow row) {
    return Record(
      id: row.read<int>('id'),
      streamName: row.read<String>('stream_name'),
      partitionKey: row.read<String>('partition_key'),
      data: row.read<Uint8List>('data'),
      dataSize: row.read<int>('data_size'),
      retryCount: row.read<int>('retry_count'),
      createdAt: row.read<int>('created_at'),
    );
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
      throw RecordCacheDatabaseException(message, defaultRecoverySuggestion, e);
    }
  }
}
