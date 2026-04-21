// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:amplify_record_cache_dart/src/model/clear_cache_data.dart';
import 'package:amplify_record_cache_dart/src/model/flush_data.dart';
import 'package:amplify_record_cache_dart/src/model/record_data.dart';
import 'package:amplify_record_cache_dart/src/model/record_input.dart';
import 'package:amplify_record_cache_dart/src/sender/sender.dart';
import 'package:amplify_record_cache_dart/src/storage/record_storage.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart'
    show SmithyHttpException, UnknownSmithyHttpException;

/// {@template amplify_record_cache.record_client}
/// Orchestrates record operations: storage, sending, and retry logic.
///
/// - `record()` delegates directly to `storage.addRecord()` (validation
///   and cache limit checks happen inside the storage layer).
/// - `flush()` is a single-pass operation that retrieves one batch per
///   stream and sends it.
/// {@endtemplate}
class RecordClient {
  /// {@macro amplify_record_cache.record_client}
  RecordClient({
    required RecordStorage storage,
    required Sender sender,
    required int maxRetries,
  }) : _storage = storage,
       _sender = sender,
       _maxRetries = maxRetries;

  final RecordStorage _storage;
  final Sender _sender;
  final int _maxRetries;
  final Logger _logger = AmplifyLogging.logger('RecordClient');

  bool _flushing = false;

  /// Provides access to the underlying storage (for testing).
  @visibleForTesting
  RecordStorage get storage => _storage;

  /// Records data to the local cache.
  ///
  /// Delegates to [RecordStorage.addRecord] which handles validation
  /// and cache limit checks.
  ///
  /// Returns [RecordData] with the size of the recorded entry.
  Future<RecordData> record(RecordInput record) async {
    await _storage.addRecord(record);
    return const RecordData();
  }

  /// Flushes cached records to the streaming service.
  ///
  /// Single-pass: retrieves one batch of records per stream, sends each
  /// batch, and returns. Records beyond the per-stream limit are picked
  /// up in the next flush cycle.
  ///
  /// ## Error handling
  ///
  /// When `Sender.sendBatch` (e.g. `PutRecordBatch` / `PutRecords`)
  /// succeeds at the HTTP level, the response may contain per-record
  /// errors. These are categorized by [splitResults]:
  /// - Successful records are deleted from the cache.
  /// - Retryable records (retry count < maxRetries) have their retry
  ///   count incremented and remain in the cache for the next flush.
  /// - Failed records (retry count >= maxRetries) are deleted.
  ///
  /// When the entire SDK call fails with a [SmithyHttpException]
  /// (e.g. throttling, invalid stream, auth error), the error is
  /// logged and that stream is skipped — other streams can still
  /// flush. All records in the failed batch have their retry count
  /// incremented (or are deleted if they've exceeded maxRetries).
  ///
  /// Non-SDK errors (e.g. network failure, storage error) abort the
  /// flush entirely and are rethrown to the caller.
  Future<FlushData> flush() async {
    if (_flushing) return const FlushData(flushInProgress: true);
    _flushing = true;

    try {
      final recordsByStream = await _storage.getRecordsByStream();
      _logger.debug(
        'Retrieved ${recordsByStream.length} stream(s) with records to flush',
      );

      var totalFlushed = 0;
      for (final entry in recordsByStream.entries) {
        final streamName = entry.key;
        final records = entry.value;
        _logger.verbose(
          'Flushing ${records.length} records to stream: $streamName',
        );

        try {
          final flushed = await _sendStreamBatch(streamName, records);
          totalFlushed += flushed;
        } on SmithyHttpException catch (e) {
          final details = e is UnknownSmithyHttpException
              ? 'HTTP ${e.statusCode}: ${e.body}'
              : e.message;
          _logger.warn(
            'SDK error flushing stream $streamName: $details. Skipping',
          );
          await _handleFailedRequest(records);
        } catch (e) {
          _logger.warn('Error flushing stream $streamName: $e. Aborting flush');
          await _handleFailedRequest(records);
          rethrow;
        }
      }

      return FlushData(recordsFlushed: totalFlushed);
    } finally {
      _flushing = false;
    }
  }

  Future<int> _sendStreamBatch(String streamName, List<Record> records) async {
    final result = await _sender.sendBatch(
      streamName: streamName,
      records: records,
    );

    await _storage.deleteRecords(result.successfulIds);
    await _storage.deleteRecords(result.failedIds);
    await _storage.incrementRetryCount(result.retryableIds);

    _logger.debug(
      'Stream $streamName: ${result.successfulIds.length} succeeded, '
      '${result.retryableIds.length} retryable, '
      '${result.failedIds.length} failed',
    );

    return result.successfulIds.length;
  }

  Future<void> _handleFailedRequest(List<Record> records) async {
    try {
      final idsToRetry = <int>[];
      final idsToDelete = <int>[];

      for (final record in records) {
        if (record.retryCount < _maxRetries) {
          idsToRetry.add(record.id);
        } else {
          idsToDelete.add(record.id);
        }
      }

      await _storage.incrementRetryCount(idsToRetry);
      await _storage.deleteRecords(idsToDelete);

      if (idsToDelete.isNotEmpty) {
        _logger.warn(
          'Deleted ${idsToDelete.length} records that exceeded retry limit '
          'of $_maxRetries',
        );
      }
    } on Object catch (e) {
      _logger.error('Failed to update records for failed request: $e', e);
    }
  }

  /// Clears all cached records.
  Future<ClearCacheData> clearCache() async {
    final count = await _storage.getRecordCount();
    await _storage.clearRecords();
    return ClearCacheData(recordsCleared: count);
  }

  /// Closes the storage and releases resources.
  Future<void> close() async {
    await _storage.close();
  }
}
