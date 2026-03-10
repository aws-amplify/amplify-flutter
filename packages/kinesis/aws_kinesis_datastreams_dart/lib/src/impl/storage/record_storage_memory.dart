// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/storage/record_storage.dart';
import 'package:aws_kinesis_datastreams_dart/src/kinesis_data_streams_options.dart'
    show kKinesisMaxBatchBytes, kKinesisMaxRecordsPerBatch;

/// {@template aws_kinesis_datastreams.in_memory_record_storage}
/// In-memory [RecordStorage] fallback for web when IndexedDB is unavailable
/// (e.g. Firefox private browsing). Records are lost when the page closes.
/// {@endtemplate}
final class InMemoryRecordStorage extends RecordStorage {
  /// {@macro aws_kinesis_datastreams.in_memory_record_storage}
  InMemoryRecordStorage({required super.maxCacheBytes});

  int _nextId = 1;
  final LinkedHashMap<int, Record> _records = LinkedHashMap<int, Record>();

  @override
  Future<void> saveRecord(RecordInput record) async {
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
  Future<List<Record>> getRecordsBatch({
    int maxCount = kKinesisMaxRecordsPerBatch,
    int maxBytes = kKinesisMaxBatchBytes,
  }) async {
    final sorted = _records.values.toList()
      ..sort((a, b) {
        var cmp = a.streamName.compareTo(b.streamName);
        if (cmp != 0) return cmp;
        cmp = a.partitionKey.compareTo(b.partitionKey);
        if (cmp != 0) return cmp;
        return a.id.compareTo(b.id);
      });

    final result = <Record>[];
    var runningSize = 0;
    for (final record in sorted) {
      if (result.length >= maxCount) break;
      runningSize += record.dataSize;
      if (runningSize > maxBytes && result.isNotEmpty) break;
      result.add(record);
    }
    return result;
  }

  @override
  Future<Map<String, List<Record>>> getRecordsByStream({
    Set<int> excludingIds = const {},
    int maxCount = kKinesisMaxRecordsPerBatch,
    int maxBytes = kKinesisMaxBatchBytes,
  }) async {
    final filtered = _records.values
        .where((r) => !excludingIds.contains(r.id))
        .toList()
      ..sort((a, b) {
        final cmp = a.streamName.compareTo(b.streamName);
        if (cmp != 0) return cmp;
        return a.id.compareTo(b.id);
      });

    final result = <String, List<Record>>{};
    final streamSizes = <String, int>{};
    final streamCounts = <String, int>{};

    for (final record in filtered) {
      final stream = record.streamName;
      final count = streamCounts[stream] ?? 0;
      final size = streamSizes[stream] ?? 0;
      if (count >= maxCount) continue;
      if (size + record.dataSize > maxBytes) continue;

      result.putIfAbsent(stream, () => []).add(record);
      streamCounts[stream] = count + 1;
      streamSizes[stream] = size + record.dataSize;
    }
    return result;
  }

  @override
  Future<void> deleteRecords(Iterable<int> ids) async {
    for (final id in ids) {
      _records.remove(id);
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
  Future<int> getCurrentCacheSize() async {
    var total = 0;
    for (final record in _records.values) {
      total += record.dataSize;
    }
    return total;
  }

  @override
  Future<int> getRecordCount() async => _records.length;

  @override
  Future<void> clear() async => _records.clear();

  @override
  Future<void> close() async => _records.clear();
}
