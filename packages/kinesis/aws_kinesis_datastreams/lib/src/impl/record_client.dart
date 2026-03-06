// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_kinesis_datastreams/src/amplify_kinesis_client.dart'
    show AmplifyKinesisClient;
import 'package:aws_kinesis_datastreams/src/db/kinesis_record_database.dart';
import 'package:aws_kinesis_datastreams/src/exception/amplify_kinesis_exception.dart';
import 'package:aws_kinesis_datastreams/src/impl/auto_flush_scheduler.dart';
import 'package:aws_kinesis_datastreams/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams/src/impl/kinesis_sender.dart';
import 'package:aws_kinesis_datastreams/src/impl/record_storage.dart';
import 'package:aws_kinesis_datastreams/src/kinesis_data_streams_options.dart';
import 'package:aws_kinesis_datastreams/src/model/clear_cache_data.dart';
import 'package:aws_kinesis_datastreams/src/model/flush_data.dart';

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

  bool _enabled = true;
  bool _closed = false;
  bool _flushing = false;

  /// In-memory cache size tracker to avoid a DB query on every record() call.
  /// Recalculated from DB after deletes (flush/clearCache).
  int _cachedSize = 0;
  bool _cacheSizeInitialized = false;

  /// Simple async lock to prevent concurrent record() calls from
  /// racing on cache size checks.
  Completer<void>? _recordLock;

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
  /// Throws [KinesisPartitionKeyInvalidException] if the partition key is
  /// empty or exceeds 256 characters.
  /// Throws [KinesisRecordTooLargeException] if the record exceeds the
  /// per-record size limit (10 MiB, partition key + data blob).
  /// Throws [KinesisLimitExceededException] if the cache is full.
  Future<void> record(KinesisRecord record) async {
    if (_closed) throw ClientClosedException();
    if (!_enabled) return;

    // Validate partition key length (Kinesis requires 1-256 characters).
    if (record.partitionKey.isEmpty ||
        record.partitionKey.length > kKinesisMaxPartitionKeyLength) {
      throw KinesisPartitionKeyInvalidException(
        keyLength: record.partitionKey.length,
      );
    }

    if (record.dataSize > kKinesisMaxRecordBytes) {
      throw KinesisRecordTooLargeException(
        recordBytes: record.dataSize,
        maxBytes: kKinesisMaxRecordBytes,
      );
    }

    // Acquire async lock to prevent concurrent cache size races.
    while (_recordLock != null) {
      await _recordLock!.future;
    }
    _recordLock = Completer<void>();

    try {
      await _ensureCacheSizeInitialized();

      if (_cachedSize + record.dataSize > _storage.maxCacheBytes) {
        throw KinesisLimitExceededException();
      }

      await _storage.saveRecord(record);
      _cachedSize += record.dataSize;
    } finally {
      final lock = _recordLock!;
      _recordLock = null;
      lock.complete();
    }
  }

  /// Flushes all cached records to Kinesis.
  Future<FlushData> flush() async {
    if (_closed) throw ClientClosedException();
    if (!_enabled) return const FlushData();

    if (_flushing) return const FlushData(flushInProgress: true);
    _flushing = true;

    var totalFlushed = 0;

    try {
      // Safety bound: limit iterations to prevent infinite loops if records
      // keep failing but never exceed retries within a single flush cycle.
      var iterations = 0;
      const maxIterations = 100;

      var consecutiveNoProgress = 0;
      // Allow enough no-progress iterations for records to exhaust their
      // retries before considering the batch stuck.
      final maxConsecutiveNoProgress = _maxRetries + 2;

      while (iterations < maxIterations) {
        iterations++;

        List<StoredRecord> batch;
        try {
          batch = await _storage.getRecordsBatch(
            maxCount: _maxRecords,
            maxBytes: maxBatchSizeBytes,
          );
        } on Exception catch (e) {
          throw KinesisStorageException(
            'Failed to retrieve records batch',
            cause: e,
          );
        }

        if (batch.isEmpty) break;

        final countBefore = await _storage.getRecordCount();

        final recordsByStream = <String, List<StoredRecord>>{};
        for (final record in batch) {
          recordsByStream.putIfAbsent(record.streamName, () => []).add(record);
        }

        for (final entry in recordsByStream.entries) {
          final flushed = await _sendStreamBatch(entry.key, entry.value);
          totalFlushed += flushed;
        }

        await _storage.deleteRecordsExceedingRetries(_maxRetries);

        // Track whether the batch is making progress. If the record count
        // hasn't decreased for several consecutive iterations, the batch
        // is stuck (e.g. all records are retryable but haven't exceeded
        // max retries yet) — break to avoid spinning.
        final countAfter = await _storage.getRecordCount();
        if (countAfter < countBefore) {
          consecutiveNoProgress = 0;
        } else {
          consecutiveNoProgress++;
          if (consecutiveNoProgress >= maxConsecutiveNoProgress) break;
        }
      }

      // Recalculate in-memory cache size from DB after deletes.
      _cachedSize = await _storage.getCurrentCacheSize();
    } finally {
      _flushing = false;
    }

    return FlushData(recordsFlushed: totalFlushed);
  }

  Future<int> _sendStreamBatch(
    String streamName,
    List<StoredRecord> records,
  ) async {
    final senderRecords = records
        .map(
          (r) =>
              KinesisSenderRecord(data: r.data, partitionKey: r.partitionKey),
        )
        .toList();

    PutRecordsResult result;
    try {
      result = await _sender.putRecords(
        streamName: streamName,
        records: senderRecords,
      );
    } on Exception {
      // Sender/SDK errors — increment retry count and continue.
      // Non-SDK exceptions (e.g. storage errors) are not caught here
      // because they originate from _storage calls below, not _sender.
      await _storage.incrementRetryCount(records.map((r) => r.id));
      return 0;
    }

    // Storage operations after a successful send propagate errors to caller.
    await _storage.deleteRecords(
      result.successfulRecordIndices.map((i) => records[i].id),
    );
    await _storage.incrementRetryCount(
      result.retryableRecordIndices.map((i) => records[i].id),
    );
    await _storage.deleteRecords(
      result.failedRecordIndices.map((i) => records[i].id),
    );

    return result.successfulRecordIndices.length;
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
