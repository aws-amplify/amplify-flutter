// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:aws_kinesis_datastreams_dart/src/amplify_kinesis_client.dart'
    show AmplifyKinesisClient;
import 'package:aws_kinesis_datastreams_dart/src/exception/amplify_kinesis_exception.dart'
    show ClientClosedException;
import 'package:aws_kinesis_datastreams_dart/src/exception/record_cache_exception.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/auto_flush_scheduler.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_sender.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/storage/record_storage.dart';
import 'package:aws_kinesis_datastreams_dart/src/kinesis_data_streams_options.dart';
import 'package:aws_kinesis_datastreams_dart/src/model/clear_cache_data.dart';
import 'package:aws_kinesis_datastreams_dart/src/model/flush_data.dart';
import 'package:smithy/smithy.dart' show SmithyHttpException;

/// {@template aws_kinesis_datastreams.record_client}
/// Orchestrates record operations, managing the flow between storage,
/// scheduling, and sending.
///
/// Not `final` to allow mocking in tests via [AmplifyKinesisClient.withRecordClient].
/// {@endtemplate}
class RecordClient {
  /// {@macro aws_kinesis_datastreams.record_client}
  RecordClient({
    required RecordStorage storage,
    required KinesisSender sender,
    required AutoFlushScheduler scheduler,
    required int maxRetries,
    int maxRecords = 500,
  }) : _storage = storage,
       _sender = sender,
       _scheduler = scheduler,
       _maxRetries = maxRetries,
       _maxRecords = maxRecords;

  final RecordStorage _storage;
  final KinesisSender _sender;
  final AutoFlushScheduler _scheduler;
  final int _maxRetries;
  final int _maxRecords;
  final Logger _logger = AmplifyLogging.logger('RecordClient');

  bool _enabled = true;
  bool _closed = false;
  bool _flushing = false;

  /// In-memory cache size tracker to avoid a DB query on every record() call.
  /// Recalculated from DB after deletes (flush/clearCache).
  int _cachedSize = 0;
  bool _cacheSizeInitialized = false;

  /// Async mutex for serializing record() calls that touch _cachedSize.
  Future<void> _pendingRecord = Future.value();

  /// Maximum batch size in bytes (10 MiB Kinesis PutRecords limit).
  static const int maxBatchSizeBytes = kKinesisMaxBatchBytes;

  /// Whether the client is currently enabled.
  bool get isEnabled => _enabled;

  /// Whether the client has been closed.
  bool get isClosed => _closed;

  /// Ensures the in-memory cache size is initialized from the database.
  Future<void> _ensureCacheSizeInitialized() async {
    if (!_cacheSizeInitialized) {
      _cachedSize = await _storage.getCurrentCacheSize();
      _cacheSizeInitialized = true;
    }
  }

  /// Records data to the local cache.
  ///
  /// Throws [ClientClosedException] if the client has been closed.
  /// Throws [RecordCacheValidationException] if the partition key is
  /// invalid or the record exceeds the per-record size limit.
  /// Throws [RecordCacheLimitExceededException] if the cache is full.
  Future<void> record(RecordInput record) async {
    if (_closed) throw ClientClosedException();
    if (!_enabled) return;

    // Validate partition key length (Kinesis requires 1-256 Unicode code points).
    final partitionKeyCodePointCount = record.partitionKey.runes.length;
    if (partitionKeyCodePointCount == 0 ||
        partitionKeyCodePointCount > kKinesisMaxPartitionKeyLength) {
      throw RecordCacheValidationException(
        'Partition key length ($partitionKeyCodePointCount) is invalid. '
            'Kinesis requires partition keys to be between 1 and '
            '$kKinesisMaxPartitionKeyLength characters.',
        'Use a partition key between 1 and '
            '$kKinesisMaxPartitionKeyLength characters.',
      );
    }

    if (record.dataSize > kKinesisMaxRecordBytes) {
      throw RecordCacheValidationException(
        'Record size (${record.dataSize} bytes) exceeds the Kinesis '
            'per-record limit ($kKinesisMaxRecordBytes bytes). The limit applies '
            'to the total size of the partition key and data blob.',
        'Reduce the record payload size or use a shorter partition key.',
      );
    }

    // Serialize cache size check + write to prevent concurrent races.
    final completer = Completer<void>();
    final previous = _pendingRecord;
    _pendingRecord = completer.future;

    try {
      await previous;
      await _ensureCacheSizeInitialized();

      if (_cachedSize + record.dataSize > _storage.maxCacheBytes) {
        throw RecordCacheLimitExceededException(
          'Cache size limit exceeded: '
              '${_cachedSize + record.dataSize} bytes > '
              '${_storage.maxCacheBytes} bytes',
          'Call flush() to send cached records or increase cache size limit.',
        );
      }

      await _storage.saveRecord(record);
      _cachedSize += record.dataSize;
    } finally {
      completer.complete();
    }
  }

  /// Flushes all cached records to Kinesis.
  ///
  /// Each flush processes all pending records in batches per stream. Records
  /// that fail or are retryable within a flush cycle are skipped via an
  /// exclusion set and will be picked up in the next flush cycle.
  ///
  /// SDK Kinesis errors (throttling, invalid stream, etc.) are logged and
  /// skipped so other streams can still flush. Non-SDK errors (e.g. network,
  /// storage) abort the flush and propagate to the caller.
  Future<FlushData> flush() async {
    if (_closed) throw ClientClosedException();
    if (!_enabled) return const FlushData();

    if (_flushing) return const FlushData(flushInProgress: true);
    _flushing = true;

    var totalFlushed = 0;
    final attemptedIds = <int>{};

    try {
      var recordsByStream = await _storage.getRecordsByStream(
        excludingIds: attemptedIds,
        maxCount: _maxRecords,
        maxBytes: maxBatchSizeBytes,
      );

      while (recordsByStream.isNotEmpty) {
        _logger.debug(
          'Retrieved ${recordsByStream.length} stream(s) with records to flush',
        );
        for (final entry in recordsByStream.entries) {
          final streamName = entry.key;
          final records = entry.value;
          _logger.verbose(
            'Flushing ${records.length} records to stream: $streamName',
          );

          // Track all attempted record IDs so they are excluded from the
          // next batch, matching Android's exclusion-set approach.
          attemptedIds.addAll(records.map((r) => r.id));

          try {
            final flushed = await _sendStreamBatch(streamName, records);
            totalFlushed += flushed;
          } on SmithyHttpException catch (e) {
            // SDK Kinesis exceptions (ResourceNotFoundException, throttling,
            // etc.) are logged but not thrown — other streams can still flush.
            _logger.warn(
              'Kinesis SDK error flushing stream $streamName: ${e.message}. '
              'Skipping',
            );
            await _handleFailedRequest(records);
          } catch (e) {
            // Network errors, storage errors, and unexpected errors — abort.
            _logger.warn(
              'Error flushing stream $streamName: $e. Aborting flush',
            );
            await _handleFailedRequest(records);
            rethrow;
          }
        }

        recordsByStream = await _storage.getRecordsByStream(
          excludingIds: attemptedIds,
          maxCount: _maxRecords,
          maxBytes: maxBatchSizeBytes,
        );
      }

      // Recalculate in-memory cache size from DB after deletes.
      _cachedSize = await _storage.getCurrentCacheSize();
    } finally {
      _flushing = false;
    }

    return FlushData(recordsFlushed: totalFlushed);
  }

  /// Sends a batch of records for a single stream.
  ///
  /// Returns the number of successfully flushed records.
  /// Throws on SDK or network errors (caller handles the distinction).
  Future<int> _sendStreamBatch(String streamName, List<Record> records) async {
    final result = await _sender.putRecords(
      streamName: streamName,
      records: records,
    );

    final successfulIds = <int>[];
    final retryableIds = <int>[];
    final failedIds = <int>[];

    for (final i in result.successfulRecordIndices) {
      successfulIds.add(records[i].id);
    }
    for (final i in result.retryableRecordIndices) {
      final record = records[i];
      if (record.retryCount >= _maxRetries) {
        failedIds.add(record.id);
      } else {
        retryableIds.add(record.id);
      }
    }
    for (final i in result.failedRecordIndices) {
      failedIds.add(records[i].id);
    }

    await _storage.deleteRecords(successfulIds);
    await _storage.deleteRecords(failedIds);
    await _storage.incrementRetryCount(retryableIds);

    return successfulIds.length;
  }

  /// Handles a fully failed request by partitioning records into those that
  /// can be retried and those that have exceeded the retry limit.
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
    } catch (e) {
      // Storage errors during cleanup are swallowed to avoid masking the
      // original error, matching Android's handleFailedRequest behavior.
      _logger.error('Failed to update records for failed request: $e', e);
    }
  }

  /// Clears all cached records.
  Future<ClearCacheData> clearCache() async {
    final count = await _storage.getRecordCount();
    await _storage.clear();
    // Reset in-memory cache size after clearing.
    _cachedSize = 0;
    return ClearCacheData(recordsCleared: count);
  }

  /// Enables the client to accept and flush records.
  void enable() {
    _enabled = true;
    _scheduler.enable();
  }

  /// Disables the client from accepting and flushing records.
  void disable() {
    _enabled = false;
    _scheduler.disable();
  }

  /// Closes the client and releases all resources.
  Future<void> close() async {
    _closed = true;
    await _scheduler.close();
    await _storage.close();
  }
}
