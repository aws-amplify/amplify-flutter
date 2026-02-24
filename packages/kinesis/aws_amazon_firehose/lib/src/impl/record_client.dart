// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_amazon_firehose/src/db/firehose_record_database.dart';
import 'package:aws_amazon_firehose/src/exception/amplify_firehose_exception.dart';
import 'package:aws_amazon_firehose/src/impl/auto_flush_scheduler.dart';
import 'package:aws_amazon_firehose/src/impl/firehose_record.dart';
import 'package:aws_amazon_firehose/src/impl/firehose_sender.dart';
import 'package:aws_amazon_firehose/src/impl/record_storage.dart';
import 'package:aws_amazon_firehose/src/model/clear_cache_data.dart';
import 'package:aws_amazon_firehose/src/model/flush_data.dart';

/// {@template aws_amazon_firehose.record_client}
/// Orchestrates record operations, managing the flow between storage,
/// scheduling, and sending.
/// {@endtemplate}
class RecordClient {
  /// {@macro aws_amazon_firehose.record_client}
  RecordClient({
    required RecordStorage storage,
    required FirehoseSender sender,
    required AutoFlushScheduler scheduler,
    required int maxRetries,
    int maxRecords = 500,
  })  : _storage = storage,
        _sender = sender,
        _scheduler = scheduler,
        _maxRetries = maxRetries,
        _maxRecords = maxRecords;

  final RecordStorage _storage;
  final FirehoseSender _sender;
  final AutoFlushScheduler _scheduler;
  final int _maxRetries;
  final int _maxRecords;

  bool _enabled = true;
  bool _closed = false;
  bool _flushing = false;

  /// Maximum batch size in bytes (4MB Firehose limit).
  static const int maxBatchSizeBytes = 4 * 1024 * 1024;

  /// Whether the client is currently enabled.
  bool get isEnabled => _enabled;

  /// Whether the client has been closed.
  bool get isClosed => _closed;

  /// Records data to the local cache.
  ///
  /// Throws [ClientClosedException] if the client has been closed.
  /// Throws [FirehoseLimitExceededException] if the cache is full.
  Future<void> record(FirehoseDataRecord record) async {
    if (_closed) throw ClientClosedException();
    if (!_enabled) return;

    final currentSize = await _storage.getCurrentCacheSize();
    if (currentSize + record.dataSize > _storage.maxCacheBytes) {
      throw FirehoseLimitExceededException();
    }

    await _storage.saveRecord(record);
  }

  /// Flushes all cached records to Firehose.
  ///
  /// Returns [FlushData] with the count of records successfully flushed.
  ///
  /// Throws [ClientClosedException] if the client has been closed.
  Future<FlushData> flush() async {
    if (_closed) throw ClientClosedException();
    if (!_enabled) return const FlushData();

    if (_flushing) return const FlushData(flushInProgress: true);
    _flushing = true;

    var totalFlushed = 0;

    try {
      while (true) {
        final batch = await _storage.getRecordsBatch(
          maxCount: _maxRecords,
          maxBytes: maxBatchSizeBytes,
        );

        if (batch.isEmpty) break;

        // Group records by stream name
        final recordsByStream = <String, List<StoredRecord>>{};
        for (final record in batch) {
          recordsByStream
              .putIfAbsent(record.streamName, () => [])
              .add(record);
        }

        // Send each stream's records separately
        for (final entry in recordsByStream.entries) {
          final flushed = await _sendStreamBatch(entry.key, entry.value);
          totalFlushed += flushed;
        }

        // Clean up records that exceeded max retries
        await _storage.deleteRecordsExceedingRetries(_maxRetries);
      }
    } finally {
      _flushing = false;
    }

    return FlushData(recordsFlushed: totalFlushed);
  }

  /// Sends a batch of records for a single stream.
  /// Returns the number of successfully sent records.
  Future<int> _sendStreamBatch(
    String streamName,
    List<StoredRecord> records,
  ) async {
    final senderRecords = records
        .map(
          (r) => FirehoseSenderRecord(data: r.data),
        )
        .toList();

    try {
      final result = await _sender.putRecordBatch(
        deliveryStreamName: streamName,
        records: senderRecords,
      );

      // Delete successful records
      final successfulIds =
          result.successfulRecordIndices.map((i) => records[i].id);
      await _storage.deleteRecords(successfulIds);

      // Increment retry count for retryable failures
      final retryableIds =
          result.retryableRecordIndices.map((i) => records[i].id);
      await _storage.incrementRetryCount(retryableIds);

      // Delete non-retryable failed records
      final failedIds = result.failedRecordIndices.map((i) => records[i].id);
      await _storage.deleteRecords(failedIds);

      return result.successfulRecordIndices.length;
    } on Exception {
      // On network/other errors, increment retry count for all records
      final allIds = records.map((r) => r.id);
      await _storage.incrementRetryCount(allIds);
      return 0;
    }
  }

  /// Clears all cached records.
  ///
  /// Returns [ClearCacheData] with the count of records cleared.
  Future<ClearCacheData> clearCache() async {
    final batch = await _storage.getRecordsBatch();
    final count = batch.length;
    await _storage.clear();
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

  /// Enables automatic flush operations.
  void enableAutoFlush() {
    _scheduler.enable();
  }

  /// Disables automatic flush operations.
  void disableAutoFlush() {
    _scheduler.disable();
  }

  /// Closes the client and releases all resources.
  Future<void> close() async {
    _closed = true;
    await _scheduler.close();
    await _storage.close();
  }
}
