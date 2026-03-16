// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_kinesis_dart/src/exception/amplify_kinesis_exception.dart'
    show defaultRecoverySuggestion;
import 'package:amplify_kinesis_dart/src/exception/record_cache_exception.dart';
import 'package:amplify_kinesis_dart/src/impl/kinesis_record.dart';
import 'package:amplify_kinesis_dart/src/kinesis_limits.dart' as limits;
import 'package:amplify_kinesis_dart/src/model/record.dart';
import 'package:meta/meta.dart';

export 'package:amplify_kinesis_dart/src/model/record.dart';

/// {@template amplify_kinesis.record_storage}
/// Abstract base class for record persistence.
///
/// Implementations provide platform-specific storage (SQLite on VM,
/// IndexedDB on web, in-memory fallback). Validation of partition key
/// length, record size, and cache limits is handled here in [addRecord];
/// subclasses implement [writeRecord] for the actual write.
///
/// All public methods wrap unexpected errors as
/// [RecordCacheDatabaseException]. Subclasses throw
/// [RecordCacheException] subtypes for known errors; anything else is
/// caught and wrapped automatically.
/// {@endtemplate}
abstract class RecordStorage {
  /// {@macro amplify_kinesis.record_storage}
  RecordStorage({
    required int maxCacheBytes,
    int maxRecordsPerStream = limits.maxRecordsPerStream,
    int maxBytesPerStream = limits.maxPutRecordsSizeBytes,
    int maxRecordSizeBytes = limits.maxRecordSizeBytes,
    int maxPartitionKeyLength = limits.maxPartitionKeyLength,
    int initialCachedSize = 0,
  }) : _maxCacheBytes = maxCacheBytes,
       _maxRecordsPerStream = maxRecordsPerStream,
       _maxBytesPerStream = maxBytesPerStream,
       _maxRecordSizeBytes = maxRecordSizeBytes,
       _maxPartitionKeyLength = maxPartitionKeyLength,
       cachedSize = initialCachedSize;

  final int _maxCacheBytes;
  final int _maxRecordsPerStream;
  final int _maxBytesPerStream;
  final int _maxRecordSizeBytes;
  final int _maxPartitionKeyLength;

  /// The current total cached size in bytes.
  @protected
  int cachedSize;

  /// The maximum cache size in bytes.
  int get maxCacheBytes => _maxCacheBytes;

  /// Maximum number of records per stream in a single batch.
  int get maxRecordsPerStream => _maxRecordsPerStream;

  /// Maximum total bytes per stream in a single batch.
  int get maxBytesPerStream => _maxBytesPerStream;

  /// Validates and saves a record to storage.
  /// Throws [RecordCacheValidationException] on invalid input.
  /// Throws [RecordCacheLimitExceededException] if the cache is full.
  /// Throws [RecordCacheDatabaseException] on storage errors.
  Future<void> addRecord(RecordInput record) =>
      _wrap('Failed to add record to cache', () async {
        final codePoints = record.partitionKey.runes.length;
        if (codePoints == 0 || codePoints > _maxPartitionKeyLength) {
          throw RecordCacheValidationException(
            'Partition key length ($codePoints) is outside the allowed '
                'range of 1-$_maxPartitionKeyLength characters.',
            'Use a partition key between 1 and '
                '$_maxPartitionKeyLength characters.',
          );
        }
        if (record.dataSize > _maxRecordSizeBytes) {
          throw RecordCacheValidationException(
            'Record size (${record.dataSize} bytes) exceeds the maximum '
                'of $_maxRecordSizeBytes bytes (partition key + data blob).',
            'Reduce the record payload size or use a shorter partition key.',
          );
        }
        if (cachedSize + record.dataSize > _maxCacheBytes) {
          throw RecordCacheLimitExceededException(
            'Cache size limit exceeded: '
                '${cachedSize + record.dataSize} bytes > $_maxCacheBytes bytes',
            'Call flush() to send cached records or increase cache size limit.',
          );
        }
        await writeRecord(record);
        cachedSize += record.dataSize;
      });

  /// Retrieves records grouped by stream.
  Future<Map<String, List<Record>>> getRecordsByStream() =>
      _wrap('Could not retrieve records from storage', doGetRecordsByStream);

  /// Deletes records by their IDs and refreshes [cachedSize].
  Future<void> deleteRecords(Iterable<int> ids) =>
      _wrap('Failed to delete records from cache', () async {
        await doDeleteRecords(ids);
        cachedSize = await doQueryCacheSize();
      });

  /// Increments the retry count for the specified records.
  Future<void> incrementRetryCount(Iterable<int> ids) => _wrap(
    'Failed to increment retry count',
    () => doIncrementRetryCount(ids),
  );

  /// Returns the total number of cached records.
  Future<int> getRecordCount() =>
      _wrap('Failed to get record count', doGetRecordCount);

  /// Deletes all records and resets [cachedSize] to 0.
  Future<void> clearRecords() => _wrap('Failed to clear cache', () async {
    await doClearRecords();
    cachedSize = 0;
  });

  /// Closes the storage and releases resources.
  Future<void> close() => _wrap('Failed to close storage', doClose);

  /// Writes a validated record to the underlying storage.
  @protected
  Future<void> writeRecord(RecordInput record);

  /// Retrieves records grouped by stream name.
  @protected
  Future<Map<String, List<Record>>> doGetRecordsByStream();

  /// Deletes records by their IDs.
  @protected
  Future<void> doDeleteRecords(Iterable<int> ids);

  /// Increments the retry count for the specified records.
  @protected
  Future<void> doIncrementRetryCount(Iterable<int> ids);

  /// Returns the total number of cached records.
  @protected
  Future<int> doGetRecordCount();

  /// Deletes all records (without updating [cachedSize] — the base class
  /// resets it to 0).
  @protected
  Future<void> doClearRecords();

  /// Returns the current total cache size in bytes from the underlying
  /// storage. Called by the base class after deletions.
  @protected
  Future<int> doQueryCacheSize();

  /// Closes the storage and releases resources.
  @protected
  Future<void> doClose();

  Future<T> _wrap<T>(String message, Future<T> Function() operation) async {
    try {
      return await operation();
    } on RecordCacheException {
      rethrow;
    } on Object catch (e) {
      throw RecordCacheDatabaseException(message, defaultRecoverySuggestion, e);
    }
  }
}
