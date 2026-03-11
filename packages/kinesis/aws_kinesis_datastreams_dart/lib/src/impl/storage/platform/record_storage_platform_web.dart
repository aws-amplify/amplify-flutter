// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/storage/record_storage.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/storage/record_storage_indexeddb.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/storage/record_storage_memory.dart';
import 'package:aws_kinesis_datastreams_dart/src/kinesis_data_streams_options.dart'
    show kKinesisMaxBatchBytes, kKinesisMaxRecordsPerBatch;

/// Creates a web [RecordStorage] instance.
///
/// Uses [IndexedDbRecordStorage] when IndexedDB is available, falling back
/// to [InMemoryRecordStorage] otherwise (e.g. Firefox private browsing).
///
/// Returns a [_WebRecordStorage] wrapper that lazily resolves the backing
/// store on first use.
RecordStorage createPlatformRecordStorage({
  required String identifier,
  required FutureOr<String>? storagePath,
  required int maxCacheBytes,
}) {
  // storagePath is ignored on web.
  return _WebRecordStorage(
    identifier: identifier,
    maxCacheBytes: maxCacheBytes,
  );
}

/// Lazily resolves to IndexedDB or in-memory storage on first access.
final class _WebRecordStorage extends RecordStorage {
  _WebRecordStorage({
    required String identifier,
    required super.maxCacheBytes,
  }) : _identifier = identifier;

  final String _identifier;
  final Logger _logger = AmplifyLogging.logger('RecordStorage');

  late final Future<RecordStorage> _delegate = _resolve();

  Future<RecordStorage> _resolve() async {
    if (await IndexedDbRecordStorage.checkIsSupported()) {
      _logger.info('Using IndexedDB storage');
      return IndexedDbRecordStorage(
        identifier: _identifier,
        maxCacheBytes: maxCacheBytes,
      );
    }
    _logger.warn(
      'IndexedDB is not available. Falling back to in-memory storage. '
      'Records will be lost when the page is closed.',
    );
    return InMemoryRecordStorage(maxCacheBytes: maxCacheBytes);
  }

  @override
  Future<void> saveRecord(RecordInput record) async =>
      (await _delegate).saveRecord(record);

  @override
  Future<List<Record>> getRecordsBatch({
    int maxCount = kKinesisMaxRecordsPerBatch,
    int maxBytes = kKinesisMaxBatchBytes,
  }) async =>
      (await _delegate).getRecordsBatch(maxCount: maxCount, maxBytes: maxBytes);

  @override
  Future<Map<String, List<Record>>> getRecordsByStream({
    Set<int> excludingIds = const {},
    int maxCount = kKinesisMaxRecordsPerBatch,
    int maxBytes = kKinesisMaxBatchBytes,
  }) async =>
      (await _delegate).getRecordsByStream(
        excludingIds: excludingIds,
        maxCount: maxCount,
        maxBytes: maxBytes,
      );

  @override
  Future<void> deleteRecords(Iterable<int> ids) async =>
      (await _delegate).deleteRecords(ids);

  @override
  Future<void> incrementRetryCount(Iterable<int> ids) async =>
      (await _delegate).incrementRetryCount(ids);

  @override
  Future<int> getCurrentCacheSize() async =>
      (await _delegate).getCurrentCacheSize();

  @override
  Future<int> getRecordCount() async => (await _delegate).getRecordCount();

  @override
  Future<void> clear() async => (await _delegate).clear();

  @override
  Future<void> close() async => (await _delegate).close();
}
