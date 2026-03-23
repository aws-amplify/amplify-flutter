// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_firehose_dart/src/db/firehose_record_database.dart';
import 'package:amplify_firehose_dart/src/impl/storage/record_storage.dart';
import 'package:amplify_firehose_dart/src/impl/storage/record_storage_sqlite.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// Creates a [SqliteRecordStorage] for VM platforms.
Future<RecordStorage> createPlatformRecordStorage({
  required String identifier,
  required FutureOr<String>? storagePath,
  required int maxCacheBytes,
}) async {
  assert(storagePath != null, 'storagePath is required on VM platforms.');
  AmplifyLogging.logger(
    'RecordStorage',
  ).info('Using SQLite storage (path: $storagePath)');
  final database = FirehoseRecordDatabase(
    identifier: identifier,
    storagePath: storagePath,
  );
  return SqliteRecordStorage.create(
    database: database,
    maxCacheBytes: maxCacheBytes,
  );
}
