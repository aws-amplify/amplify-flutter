// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_db_common_dart/amplify_db_common_dart.dart';
import 'package:drift/drift.dart';

part 'kinesis_record_database.g.dart';

/// Schema of the KinesisRecords table in SQLite.
///
/// When updating this schema, please bump [KinesisRecordDatabase.schemaVersion].
@DataClassName('DriftStoredRecord')
class KinesisRecords extends Table {
  /// Auto-incrementing primary key.
  IntColumn get id => integer().autoIncrement()();

  /// The name of the Kinesis Data Stream.
  TextColumn get streamName => text()();

  /// The partition key for the record.
  TextColumn get partitionKey => text()();

  /// The data blob to send to Kinesis.
  BlobColumn get data => blob()();

  /// The size of the data blob in bytes.
  IntColumn get dataSize => integer()();

  /// The number of times this record has been retried.
  IntColumn get retryCount => integer().withDefault(const Constant(0))();

  /// Unix timestamp of when the record was created.
  IntColumn get createdAt => integer()();
}

/// {@template amplify_kinesis.kinesis_record_database}
/// Drift database for managing stored Kinesis records.
/// {@endtemplate}
@DriftDatabase(tables: [KinesisRecords])
class KinesisRecordDatabase extends _$KinesisRecordDatabase {
  /// {@macro amplify_kinesis.kinesis_record_database}
  ///
  /// [identifier] is used to namespace the database (typically the AWS region).
  /// [storagePath] is the directory path for the database file
  factory KinesisRecordDatabase({
    required String identifier,
    required FutureOr<String>? storagePath,
  }) {
    final driftQueryExecutor = connect(
      name: 'kinesis_records_$identifier',
      path: storagePath,
    );
    return KinesisRecordDatabase._(driftQueryExecutor);
  }

  /// Creates a database with a custom query executor (for testing).
  KinesisRecordDatabase.forTesting(super.executor);

  KinesisRecordDatabase._(super.driftQueryExecutor);

  // Bump this number whenever you change or add a table definition.
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
        // Indices matching the Android schema.
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
