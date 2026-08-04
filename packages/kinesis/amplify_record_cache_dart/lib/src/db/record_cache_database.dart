// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_db_common_dart/amplify_db_common_dart.dart';
import 'package:drift/drift.dart';

part 'record_cache_database.g.dart';

/// Schema of the cached records table in SQLite.
///
/// The `partitionKey` column is present for Kinesis Data Streams
/// compatibility. Firehose clients write an empty string.
///
/// When updating this schema, please bump
/// [RecordCacheDatabase.schemaVersion].
@DataClassName('DriftStoredRecord')
class KinesisRecords extends Table {
  /// Auto-incrementing primary key.
  IntColumn get id => integer().autoIncrement()();

  /// The name of the target stream.
  TextColumn get streamName => text()();

  /// The partition key (null for services that don't use it, e.g. Firehose).
  TextColumn get partitionKey => text().nullable()();

  /// The data blob to send.
  BlobColumn get data => blob()();

  /// The size of the record in bytes.
  IntColumn get dataSize => integer()();

  /// The number of times this record has been retried.
  IntColumn get retryCount => integer().withDefault(const Constant(0))();

  /// Unix timestamp of when the record was created.
  IntColumn get createdAt => integer()();
}

/// {@template amplify_record_cache.record_cache_database}
/// Drift database for managing cached records.
/// {@endtemplate}
@DriftDatabase(tables: [KinesisRecords])
class RecordCacheDatabase extends _$RecordCacheDatabase {
  /// {@macro amplify_record_cache.record_cache_database}
  ///
  /// [storeName] is used as the database file name prefix
  /// (e.g. `kinesis_records` → `kinesis_records_us-east-1.db`).
  /// [identifier] is used to namespace the database (typically the AWS region).
  /// [storagePath] is the directory path for the database file.
  factory RecordCacheDatabase({
    required String storeName,
    required String identifier,
    required FutureOr<String>? storagePath,
  }) {
    final driftQueryExecutor = connect(
      name: '${storeName}_$identifier',
      path: storagePath,
    );
    return RecordCacheDatabase._(driftQueryExecutor);
  }

  /// Creates a database with a custom query executor (for testing).
  RecordCacheDatabase.forTesting(super.executor);

  RecordCacheDatabase._(super.driftQueryExecutor);

  // Bump this number whenever you change or add a table definition.
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
        await customStatement(
          'CREATE INDEX IF NOT EXISTS idx_stream_id '
          'ON kinesis_records(stream_name, id)',
        );
        await customStatement(
          'CREATE INDEX IF NOT EXISTS idx_data_size '
          'ON kinesis_records(data_size)',
        );
      },
    );
  }
}
