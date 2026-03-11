// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams_dart/src/kinesis_data_streams_options.dart'
    show kKinesisMaxBatchBytes, kKinesisMaxRecordsPerBatch;
import 'package:aws_kinesis_datastreams_dart/src/model/record.dart';

export 'package:aws_kinesis_datastreams_dart/src/model/record.dart';

/// {@template aws_kinesis_datastreams.record_storage}
/// Abstract interface for record persistence.
///
/// Implementations provide platform-specific storage (SQLite on VM,
/// IndexedDB on web).
/// {@endtemplate}
abstract class RecordStorage {
  /// {@macro aws_kinesis_datastreams.record_storage}
  RecordStorage({required int maxCacheBytes}) : _maxCacheBytes = maxCacheBytes;

  final int _maxCacheBytes;

  /// The maximum cache size in bytes.
  int get maxCacheBytes => _maxCacheBytes;

  /// Saves a record to storage.
  Future<void> saveRecord(RecordInput record);

  /// Retrieves a batch of records sorted by stream_name, partition_key, id.
  ///
  /// Returns records up to [maxCount] records and [maxBytes] total size.
  Future<List<Record>> getRecordsBatch({
    int maxCount = kKinesisMaxRecordsPerBatch,
    int maxBytes = kKinesisMaxBatchBytes,
  });

  /// Retrieves records grouped by stream, excluding the given IDs.
  ///
  /// Each stream's records are limited by [maxCount] and [maxBytes].
  Future<Map<String, List<Record>>> getRecordsByStream({
    Set<int> excludingIds = const {},
    int maxCount = kKinesisMaxRecordsPerBatch,
    int maxBytes = kKinesisMaxBatchBytes,
  });

  /// Deletes records by their IDs.
  Future<void> deleteRecords(Iterable<int> ids);

  /// Increments the retry count for the specified records.
  Future<void> incrementRetryCount(Iterable<int> ids);

  /// Returns the current total size of cached data in bytes.
  Future<int> getCurrentCacheSize();

  /// Returns the total number of cached records.
  Future<int> getRecordCount();

  /// Deletes all records.
  Future<void> clear();

  /// Closes the storage and releases resources.
  Future<void> close();
}
