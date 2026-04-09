// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_kinesis_dart/src/impl/storage/kinesis_indexeddb_record_storage.dart';
import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';

/// Creates a KDS-specific IndexedDB [RecordStorage] for web platforms.
///
/// Falls back to [InMemoryRecordStorage] if IndexedDB is unavailable.
Future<RecordStorage> createPlatformRecordStorage({
  required String identifier,
  required FutureOr<String>? storagePath,
  required int maxCacheBytes,
  required int maxRecordsPerBatch,
  required int maxBytesPerBatch,
  required int maxRecordSizeBytes,
}) async {
  try {
    return await KinesisIndexedDbRecordStorage.create(
      identifier: identifier,
      maxCacheBytes: maxCacheBytes,
      maxRecordsPerBatch: maxRecordsPerBatch,
      maxBytesPerBatch: maxBytesPerBatch,
      maxRecordSizeBytes: maxRecordSizeBytes,
    );
  } on Object {
    // IndexedDB unavailable — fall back to in-memory storage.
    return InMemoryRecordStorage(
      maxCacheBytes: maxCacheBytes,
      maxRecordsPerBatch: maxRecordsPerBatch,
      maxBytesPerBatch: maxBytesPerBatch,
      maxRecordSizeBytes: maxRecordSizeBytes,
    );
  }
}
