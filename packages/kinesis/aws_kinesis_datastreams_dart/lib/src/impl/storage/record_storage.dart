// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams_dart/src/model/record.dart';

export 'package:aws_kinesis_datastreams_dart/src/model/record.dart';

/// {@template aws_kinesis_datastreams.record_storage}
/// Abstract interface for record persistence.
///
/// Implementations provide platform-specific storage (SQLite on VM,
/// IndexedDB on web) and own validation, cache size tracking, and
/// limit enforcement — matching Android's `RecordStorage` where
/// `addRecord` validates and checks limits internally.
/// {@endtemplate}
abstract class RecordStorage {
  /// {@macro aws_kinesis_datastreams.record_storage}
  RecordStorage({required int maxCacheBytes}) : _maxCacheBytes = maxCacheBytes;

  final int _maxCacheBytes;

  /// The maximum cache size in bytes.
  int get maxCacheBytes => _maxCacheBytes;

  /// Validates and saves a record to storage.
  ///
  /// Implementations must:
  /// - Validate partition key length (1–256 Unicode code points)
  /// - Validate per-record size limit (10 MiB)
  /// - Check cache size limit before writing
  ///
  /// Throws [RecordCacheValidationException] on invalid input.
  /// Throws [RecordCacheLimitExceededException] if the cache is full.
  Future<void> addRecord(RecordInput record);

  /// Retrieves records grouped by stream.
  Future<Map<String, List<Record>>> getRecordsByStream();

  /// Deletes records by their IDs.
  Future<void> deleteRecords(Iterable<int> ids);

  /// Increments the retry count for the specified records.
  Future<void> incrementRetryCount(Iterable<int> ids);

  /// Returns the total number of cached records.
  Future<int> getRecordCount();

  /// Deletes all records.
  Future<void> clearRecords();

  /// Closes the storage and releases resources.
  Future<void> close();
}
