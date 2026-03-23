// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

import 'package:amplify_firehose_dart/src/impl/firehose_record.dart';
import 'package:amplify_firehose_dart/src/impl/storage/record_storage.dart';

/// {@template amplify_firehose_dart.in_memory_record_storage}
/// In-memory [RecordStorage] fallback for web when IndexedDB is unavailable.
/// Records are not persisted.
/// {@endtemplate}
final class InMemoryRecordStorage extends RecordStorage {
  /// {@macro amplify_firehose_dart.in_memory_record_storage}
  InMemoryRecordStorage({
    required super.maxCacheBytes,
    super.maxRecordsPerBatch,
    super.maxBatchSizeBytes,
    super.maxRecordSizeBytes,
  });

  int _nextId = 1;
  final LinkedHashMap<int, Record> _records = LinkedHashMap<int, Record>();

  @override
  Future<void> writeRecord(RecordInput record) async {
    final id = _nextId++;
    _records[id] = Record(
      id: id,
      streamName: record.streamName,
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
    var totalCount = 0;
    var totalSize = 0;

    for (final record in sorted) {
      if (totalCount >= maxRecordsPerBatch) break;
      if (totalSize + record.dataSize > maxBatchSizeBytes &&
          totalCount > 0) break;

      result.putIfAbsent(record.streamName, () => []).add(record);
      totalCount++;
      totalSize += record.dataSize;
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
