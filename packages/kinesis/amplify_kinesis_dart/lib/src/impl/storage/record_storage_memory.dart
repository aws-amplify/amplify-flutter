// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

import 'package:amplify_kinesis_dart/src/impl/kinesis_record.dart';
import 'package:amplify_kinesis_dart/src/impl/storage/record_storage.dart';

/// {@template amplify_kinesis.in_memory_record_storage}
/// In-memory [RecordStorage] fallback for web when IndexedDB is unavailable.
/// Records are not persisted.
/// {@endtemplate}
final class InMemoryRecordStorage extends RecordStorage {
  /// {@macro amplify_kinesis.in_memory_record_storage}
  InMemoryRecordStorage({
    required super.maxCacheBytes,
    super.maxRecordsPerStream,
    super.maxBytesPerStream,
    super.maxRecordSizeBytes,
    super.maxPartitionKeyLength,
  });

  int _nextId = 1;
  final LinkedHashMap<int, Record> _records = LinkedHashMap<int, Record>();

  @override
  Future<void> writeRecord(RecordInput record) async {
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
  }

  @override
  Future<Map<String, List<Record>>> doGetRecordsByStream() async {
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
      if (count >= maxRecordsPerStream) continue;
      if (size + record.dataSize > maxBytesPerStream) continue;

      result.putIfAbsent(stream, () => []).add(record);
      streamCounts[stream] = count + 1;
      streamSizes[stream] = size + record.dataSize;
    }
    return result;
  }

  @override
  Future<void> doDeleteRecords(Iterable<int> ids) async {
    for (final id in ids) {
      _records.remove(id);
    }
  }

  @override
  Future<int> doQueryCacheSize() async {
    var total = 0;
    for (final record in _records.values) {
      total += record.dataSize;
    }
    return total;
  }

  @override
  Future<void> doIncrementRetryCount(Iterable<int> ids) async {
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
  Future<int> doGetRecordCount() async => _records.length;

  @override
  Future<void> doClearRecords() async {
    _records.clear();
  }

  @override
  Future<void> doClose() async {
    await clearRecords();
  }
}
