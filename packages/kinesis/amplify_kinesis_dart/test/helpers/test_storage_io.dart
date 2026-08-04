// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';
import 'package:drift/native.dart';

/// Native SQLite-backed store, matching production on VM platforms.
RecordStorage createTestStorage({
  required int maxCacheBytes,
  required int maxRecordsPerBatch,
  required int maxBytesPerBatch,
  required int maxRecordSizeBytes,
}) {
  return SqliteRecordStorage(
    database: RecordCacheDatabase.forTesting(NativeDatabase.memory()),
    maxCacheBytes: maxCacheBytes,
    maxRecordsPerBatch: maxRecordsPerBatch,
    maxBytesPerBatch: maxBytesPerBatch,
    maxRecordSizeBytes: maxRecordSizeBytes,
  );
}
