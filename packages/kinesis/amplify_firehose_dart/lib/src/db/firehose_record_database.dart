// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_db_common_dart/amplify_db_common_dart.dart';
import 'package:drift/drift.dart';

part 'firehose_record_database.g.dart';

/// Schema of the FirehoseRecords table in SQLite.
///
/// When updating this schema, please bump
/// [FirehoseRecordDatabase.schemaVersion].
@DataClassName('DriftStoredRecord')
class FirehoseRecords extends Table {
  /// Auto-incrementing primary key.
  IntColumn get id => integer().autoIncrement()();

  /// The name of the Firehose delivery stream.
  TextColumn get streamName => text()();

  /// The data blob to send to Firehose.
  BlobColumn get data => blob()();

  /// The size of the data blob in bytes.
  IntColumn get dataSize => integer()();

  /// The number of times this record has been retried.
  IntColumn get retryCount => integer().withDefault(const Constant(0))();

  /// Unix timestamp of when the record was created.
  IntColumn get createdAt => integer()();
}

/// {@template amplify_firehose.firehose_record_database}
/// Drift database for managing stored Firehose records.
/// {@endtemplate}
@DriftDatabase(tables: [FirehoseRecords])
class FirehoseRecordDatabase extends _$FirehoseRecordDatabase {
  /// {@macro amplify_firehose.firehose_record_database}
  ///
  /// [identifier] is used to namespace the database (typically the AWS region).
  /// [storagePath] is the directory path for the database file.
  factory FirehoseRecordDatabase({
    required String identifier,
    required FutureOr<String>? storagePath,
  }) {
    final driftQueryExecutor = connect(
      name: 'firehose_records_$identifier',
      path: storagePath,
    );
    return FirehoseRecordDatabase._(driftQueryExecutor);
  }

  /// Creates a database with a custom query executor (for testing).
  FirehoseRecordDatabase.forTesting(super.executor);

  FirehoseRecordDatabase._(super.driftQueryExecutor);

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
          'ON firehose_records(stream_name, id)',
        );
        await customStatement(
          'CREATE INDEX IF NOT EXISTS idx_data_size '
          'ON firehose_records(data_size)',
        );
      },
    );
  }
}
