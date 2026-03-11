// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

import 'package:aws_kinesis_datastreams_dart/src/exception/record_cache_exception.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/storage/record_storage.dart';
import 'package:aws_kinesis_datastreams_dart/src/kinesis_data_streams_options.dart'
    show kKinesisMaxBatchBytes, kKinesisMaxPartitionKeyLength,
         kKinesisMaxRecordBytes, kKinesisMaxRecordsPerBatch;

/// {@template aws_kinesis_datastreams.in_memory_record_storage}
/// In-memory [RecordStorage] fallback for web when IndexedDB is unavailable
/// (e.g. Firefox private browsing). Records are lost when the page closes.
/// {@endtemplate}
final class InMemoryRecordStorage extends RecordStorage {
  /// {@macro aws_kinesis_datastreams.in_memory_record_storage}
  InMemoryRecordStorage({
    required super.maxCacheBytes,
    int maxRecordsPerStream = kKinesisMaxRecordsPerBatch,
    int maxBytesPerStream = kKinesisMaxBatchBytes,
  }) : _maxRecordsPerStream = maxRecordsPerStream,
       _maxBytesPerStream = maxBytesPerStream;

  final int _maxRecordsPerStream;
  final int _maxBytesPerStream;
  int _nextId = 1;
  int _cachedSize = 0;
  final LinkedHashMap<int, Record> _records = LinkedHashMap<int, Record>();

  @override
  Future<void> addRecord(RecordInput record) async {
    // Validate partition key length
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

    final id = _nextId++;
    _records[id] = Record(
      id: id,
      streamName: record.streamName,
      partitionKey: record.partitionKey,
      data: record.data,
      dataSize: record.dataSize,
      retryCount: 0,
      createdAt: record.createdAt.millisecondsSinceEpoch,
    );
    _cachedSize += record.dataSize;
  }

  @override
  Future<Map<String, List<Record>>> getRecordsByStream() async {
    final sorted = _records.values.toList()
      ..sort((a, b) {
        final cmp = a.streamName.compareTo(b.streamName);
        if (cmp != 0) return cmp;
        return a.id.compareTo(b.id);
      });

    final result = <String, List<Record>>{};
    final streamSizes = <String, int>{};
    final streamCounts = <String, int>{};

    for (final record in sorted) {
      final stream = record.streamName;
      final count = streamCounts[stream] ?? 0;
      final size = streamSizes[stream] ?? 0;
      if (count >= _maxRecordsPerStream) continue;
      if (size + record.dataSize > _maxBytesPerStream) continue;

      result.putIfAbsent(stream, () => []).add(record);
      streamCounts[stream] = count + 1;
      streamSizes[stream] = size + record.dataSize;
    }
    return result;
  }

  @override
  Future<void> deleteRecords(Iterable<int> ids) async {
    for (final id in ids) {
      final record = _records.remove(id);
      if (record != null) _cachedSize -= record.dataSize;
    }
  }

  @override
  Future<void> incrementRetryCount(Iterable<int> ids) async {
    for (final id in ids) {
      final record = _records[id];
      if (record == null) continue;
      _records[id] = Record(
        id: record.id,
        streamName: record.streamName,
        partitionKey: record.partitionKey,
        data: record.data,
        dataSize: record.dataSize,
        retryCount: record.retryCount + 1,
        createdAt: record.createdAt,
      );
    }
  }

  @override
  Future<int> getRecordCount() async => _records.length;

  @override
  Future<void> clearRecords() async {
    _records.clear();
    _cachedSize = 0;
  }

  @override
  Future<void> close() async {
    _records.clear();
    _cachedSize = 0;
  }
}
