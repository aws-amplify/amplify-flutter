// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:amplify_record_cache_dart/src/db/record_cache_database.dart';
import 'package:amplify_record_cache_dart/src/storage/record_storage.dart';
import 'package:amplify_record_cache_dart/src/storage/record_storage_sqlite.dart';

/// Creates a [SqliteRecordStorage] for VM platforms.
Future<RecordStorage> createPlatformRecordStorage({
  required String identifier,
  required FutureOr<String>? storagePath,
  required int maxCacheBytes,
  required int maxRecordsPerBatch,
  required int maxBytesPerBatch,
  required int maxRecordSizeBytes,
  required String dbPrefix,
  required String storeName,
}) async {
  assert(storagePath != null, 'storagePath is required on VM platforms.');
  AmplifyLogging.logger(
    'RecordStorage',
  ).info('Using SQLite storage (path: $storagePath)');
  final database = RecordCacheDatabase(
    dbPrefix: dbPrefix,
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
