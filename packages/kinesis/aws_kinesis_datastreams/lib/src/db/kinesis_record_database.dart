// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_db_common_dart/amplify_db_common_dart.dart';
import 'package:drift/drift.dart';

part 'kinesis_record_database.g.dart';

/// Schema of the KinesisRecords table in SQLite.
///
/// When updating this schema, please bump [KinesisRecordDatabase.schemaVersion].
@DataClassName('StoredRecord')
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

/// {@template aws_kinesis_datastreams.kinesis_record_database}
/// Drift database for managing stored Kinesis records.
/// {@endtemplate}
@DriftDatabase(tables: [KinesisRecords])
class KinesisRecordDatabase extends _$KinesisRecordDatabase {
  /// {@macro aws_kinesis_datastreams.kinesis_record_database}
  factory KinesisRecordDatabase(String storagePath) {
    final driftQueryExecutor = connect(
      name: 'kinesis_records',
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
        // Create index for efficient batching queries
        await customStatement(
          'CREATE INDEX IF NOT EXISTS idx_stream_partition '
          'ON kinesis_records(stream_name, partition_key, id)',
        );
      },
    );
  }
}
