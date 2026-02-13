// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_kinesis_datastreams/src/db/kinesis_record_database.dart';
import 'package:aws_kinesis_datastreams/src/exception/kinesis_exception.dart';
import 'package:aws_kinesis_datastreams/src/impl/auto_flush_scheduler.dart';
import 'package:aws_kinesis_datastreams/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams/src/impl/kinesis_sender.dart';
import 'package:aws_kinesis_datastreams/src/impl/record_storage.dart';

/// {@template aws_kinesis_datastreams.record_client}
/// Orchestrates record operations, managing the flow between storage,
/// scheduling, and sending.
///
/// This class coordinates:
/// - Recording data to local storage
/// - Flushing records to Kinesis in batches
/// - Managing enabled/disabled state
/// - Handling retry logic for failed records
/// {@endtemplate}
class RecordClient {
  /// {@macro aws_kinesis_datastreams.record_client}
  RecordClient({
    required RecordStorage storage,
    required KinesisSender sender,
    required AutoFlushScheduler scheduler,
    required int maxRetries,
  })  : _storage = storage,
        _sender = sender,
        _scheduler = scheduler,
        _maxRetries = maxRetries;

  final RecordStorage _storage;
  final KinesisSender _sender;
  final AutoFlushScheduler _scheduler;
  final int _maxRetries;

  bool _enabled = true;
  bool _closed = false;

  /// Maximum number of records per batch (Kinesis limit).
  static const int maxBatchRecordCount = 500;

  /// Maximum batch size in bytes (5MB Kinesis limit).
  static const int maxBatchSizeBytes = 5 * 1024 * 1024;

  /// Whether the client is currently enabled.
  bool get isEnabled => _enabled;

  /// Whether the client has been closed.
  bool get isClosed => _closed;

  /// Records data to the local cache.
  ///
  /// The record is persisted to SQLite storage if the client is enabled
  /// and there is sufficient cache space.
  ///
  /// Throws [ClientClosedException] if the client has been closed.
  /// Throws [CacheFullException] if the cache is full.
  Future<void> record(KinesisRecord record) async {
    if (_closed) throw const ClientClosedException();
    if (!_enabled) return;

    // Check cache size before saving
    final currentSize = await _storage.getCurrentCacheSize();
    if (currentSize + record.dataSize > _storage.maxCacheBytes) {
      throw const CacheFullException();
    }

    await _storage.saveRecord(record);
  }

  /// Flushes all cached records to Kinesis.
  ///
  /// Records are batched by stream name and sent in batches respecting
  /// Kinesis limits (500 records, 5MB per batch).
  ///
  /// Successful records are deleted from the cache.
  /// Failed records with retryable errors have their retry count incremented.
  /// Records exceeding max retries are removed from the cache.
  ///
  /// Throws [ClientClosedException] if the client has been closed.
  Future<void> flush() async {
    if (_closed) throw const ClientClosedException();
    if (!_enabled) return;

    // Process records in batches until no more remain
    while (true) {
      final batch = await _storage.getRecordsBatch(
        maxCount: maxBatchRecordCount,
        maxBytes: maxBatchSizeBytes,
      );

      if (batch.isEmpty) break;

      // Group records by stream name
      final recordsByStream = <String, List<StoredRecord>>{};
      for (final record in batch) {
        recordsByStream.putIfAbsent(record.streamName, () => []).add(record);
      }

      // Send each stream's records separately
      for (final entry in recordsByStream.entries) {
        await _sendStreamBatch(entry.key, entry.value);
      }

      // Clean up records that exceeded max retries
      await _storage.deleteRecordsExceedingRetries(_maxRetries);
    }
  }

  /// Sends a batch of records for a single stream.
  Future<void> _sendStreamBatch(
    String streamName,
    List<StoredRecord> records,
  ) async {
    final senderRecords = records
        .map(
          (r) => KinesisSenderRecord(
            data: r.data,
            partitionKey: r.partitionKey,
          ),
        )
        .toList();

    try {
      final result = await _sender.putRecords(
        streamName: streamName,
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

      // Delete non-retryable failed records (they won't succeed on retry)
      final failedIds = result.failedRecordIndices.map((i) => records[i].id);
      await _storage.deleteRecords(failedIds);
    } on Exception {
      // On network/other errors, increment retry count for all records
      final allIds = records.map((r) => r.id);
      await _storage.incrementRetryCount(allIds);
    }
  }

  /// Clears all cached records.
  Future<void> clearCache() async {
    await _storage.clear();
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
