// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';

/// In-memory store for web, where SQLite can't compile. Mirrors the
/// production web fallback; the IndexedDB path is covered by
/// `wasm_smoke_test.dart`.
RecordStorage createTestStorage({
  required int maxCacheBytes,
  required int maxRecordsPerBatch,
  required int maxBytesPerBatch,
  required int maxRecordSizeBytes,
}) {
  return InMemoryRecordStorage(
    maxCacheBytes: maxCacheBytes,
    maxRecordsPerBatch: maxRecordsPerBatch,
    maxBytesPerBatch: maxBytesPerBatch,
    maxRecordSizeBytes: maxRecordSizeBytes,
  );
}
