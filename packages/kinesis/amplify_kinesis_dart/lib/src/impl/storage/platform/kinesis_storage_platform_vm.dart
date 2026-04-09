// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_kinesis_dart/src/db/kinesis_record_database.dart';
import 'package:amplify_kinesis_dart/src/impl/storage/kinesis_sqlite_record_storage.dart';
import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';

/// Creates a KDS-specific SQLite [RecordStorage] for VM platforms.
Future<RecordStorage> createPlatformRecordStorage({
  required String identifier,
  required FutureOr<String>? storagePath,
  required int maxCacheBytes,
  required int maxRecordsPerBatch,
  required int maxBytesPerBatch,
  required int maxRecordSizeBytes,
}) async {
  final database = KinesisRecordDatabase(
    identifier: identifier,
    storagePath: storagePath,
  );
  return SqliteRecordStorage.create(
    database: database,
    maxCacheBytes: maxCacheBytes,
    maxRecordsPerBatch: maxRecordsPerBatch,
    maxBytesPerBatch: maxBytesPerBatch,
    maxRecordSizeBytes: maxRecordSizeBytes,
  );
}
