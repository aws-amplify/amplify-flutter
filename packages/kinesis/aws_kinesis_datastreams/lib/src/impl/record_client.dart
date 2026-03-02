// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

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
/// {@endtemplate}
class RecordClient {
  /// {@macro aws_kinesis_datastreams.record_client}
  RecordClient({
    required RecordStorage storage,
    required KinesisSender sender,
    required AutoFlushScheduler scheduler,
    required int maxRetries,
    int maxRecords = 500,
  })  : _storage = storage,
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

  /// Maximum batch size in bytes (10 MiB Kinesis PutRecords limit).
  static const int maxBatchSizeBytes = 10 * 1024 * 1024;

  /// Whether the client is currently enabled.
  bool get isEnabled => _enabled;

  /// Whether the client has been closed.
  bool get isClosed => _closed;

  /// Records data to the local cache.
  ///
  /// Throws [ClientClosedException] if the client has been closed.
  /// Throws [KinesisRecordTooLargeException] if the record exceeds the
  /// per-record size limit (10 MiB, partition key + data blob).
  /// Throws [KinesisLimitExceededException] if the cache is full.
  Future<void> record(KinesisRecord record) async {
    if (_closed) throw ClientClosedException();
    if (!_enabled) return;

    if (record.dataSize > kKinesisMaxRecordBytes) {
      throw KinesisRecordTooLargeException(
        recordBytes: record.dataSize,
        maxBytes: kKinesisMaxRecordBytes,
      );
    }

    final currentSize = await _storage.getCurrentCacheSize();
    if (currentSize + record.dataSize > _storage.maxCacheBytes) {
      throw KinesisLimitExceededException();
    }

    await _storage.saveRecord(record);
  }

  /// Flushes all cached records to Kinesis.
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

        final recordsByStream = <String, List<StoredRecord>>{};
        for (final record in batch) {
          recordsByStream.putIfAbsent(record.streamName, () => []).add(record);
        }

        for (final entry in recordsByStream.entries) {
          final flushed = await _sendStreamBatch(entry.key, entry.value);
          totalFlushed += flushed;
        }

        await _storage.deleteRecordsExceedingRetries(_maxRetries);
      }
    } finally {
      _flushing = false;
    }

    return FlushData(recordsFlushed: totalFlushed);
  }

  Future<int> _sendStreamBatch(String streamName, List<StoredRecord> records) async {
    final senderRecords = records
        .map((r) => KinesisSenderRecord(data: r.data, partitionKey: r.partitionKey))
        .toList();

    try {
      final result = await _sender.putRecords(streamName: streamName, records: senderRecords);

      await _storage.deleteRecords(result.successfulRecordIndices.map((i) => records[i].id));
      await _storage.incrementRetryCount(result.retryableRecordIndices.map((i) => records[i].id));
      await _storage.deleteRecords(result.failedRecordIndices.map((i) => records[i].id));

      return result.successfulRecordIndices.length;
    } on Exception {
      await _storage.incrementRetryCount(records.map((r) => r.id));
      return 0;
    }
  }

  /// Clears all cached records.
  Future<ClearCacheData> clearCache() async {
    final batch = await _storage.getRecordsBatch();
    final count = batch.length;
    await _storage.clear();
    return ClearCacheData(recordsCleared: count);
  }

  void enable() { _enabled = true; _scheduler.enable(); }
  void disable() { _enabled = false; _scheduler.disable(); }
  void enableAutoFlush() { _scheduler.enable(); }
  void disableAutoFlush() { _scheduler.disable(); }

  Future<void> close() async {
    _closed = true;
    await _scheduler.close();
    await _storage.close();
  }
}
