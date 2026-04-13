// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:amplify_record_cache_dart/src/storage/record_storage.dart';
import 'package:amplify_record_cache_dart/src/storage/record_storage_indexeddb.dart';
import 'package:amplify_record_cache_dart/src/storage/record_storage_memory.dart';

/// Creates a web [RecordStorage] instance.
///
/// Uses [IndexedDbRecordStorage] when IndexedDB is available, falling back
/// to [InMemoryRecordStorage] otherwise (e.g. Firefox private browsing).
Future<RecordStorage> createPlatformRecordStorage({
  required String identifier,
  required FutureOr<String>? storagePath,
  required int maxCacheBytes,
  required int maxRecordsPerBatch,
  required int maxBytesPerBatch,
  required int maxRecordSizeBytes,
  required String storageName,
}) async {
  final logger = AmplifyLogging.logger('RecordStorage');
  // storagePath is ignored on web.
  if (await IndexedDbRecordStorage.checkIsSupported()) {
    logger.info('Using IndexedDB storage');
    return IndexedDbRecordStorage.create(
      identifier: identifier,
      maxCacheBytes: maxCacheBytes,
      maxRecordsPerBatch: maxRecordsPerBatch,
      maxBytesPerBatch: maxBytesPerBatch,
      maxRecordSizeBytes: maxRecordSizeBytes,
      storageName: storageName,
    );
  }
  logger.warn(
    'IndexedDB is not available. Falling back to in-memory storage. '
    'Records will be lost when the page is closed.',
  );
  return InMemoryRecordStorage(
    maxCacheBytes: maxCacheBytes,
    maxRecordsPerBatch: maxRecordsPerBatch,
    maxBytesPerBatch: maxBytesPerBatch,
    maxRecordSizeBytes: maxRecordSizeBytes,
  );
}
