// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_db_common_dart/amplify_db_common_dart.dart'
    show connect;
import 'package:drift/drift.dart';

part 'kinesis_record_database.g.dart';

/// Drift table definition for KDS records.
///
/// Includes a `partitionKey` column that is specific to Kinesis Data Streams
/// and not present in the shared record cache schema.
@DataClassName('DriftStoredRecord')
class KinesisRecords extends Table {
  @override
  String get tableName => 'kinesis_records';

  /// Auto-incrementing primary key.
  IntColumn get id => integer().autoIncrement()();

  /// The name of the target Kinesis stream.
  TextColumn get streamName => text()();

  /// The partition key for the Kinesis record.
  TextColumn get partitionKey => text()();

  /// The data blob to send.
  BlobColumn get data => blob()();

  /// The size of the record in bytes (partition key + data blob).
  IntColumn get dataSize => integer()();

  /// The number of times this record has been retried.
  IntColumn get retryCount => integer().withDefault(const Constant(0))();

  /// Unix timestamp (milliseconds) of when the record was created.
  IntColumn get createdAt => integer()();

  @override
  List<Set<Column>> get uniqueKeys => [];

  @override
  List<String> get customConstraints => [];
}

/// {@template amplify_kinesis.kinesis_record_database}
/// Drift database for persisting KDS records.
///
/// Uses a single [KinesisRecords] table with indexes on
/// `(stream_name, id)` for ordered retrieval and `(data_size)` for
/// cache size queries.
/// {@endtemplate}
@DriftDatabase(tables: [KinesisRecords])
class KinesisRecordDatabase extends _$KinesisRecordDatabase {
  /// Creates a [KinesisRecordDatabase] with platform-appropriate storage.
  ///
  /// [identifier] is used to namespace the database file
  /// (e.g. `kinesis_records_us-east-1`).
  /// [storagePath] is the directory for the database file on IO platforms.
  factory KinesisRecordDatabase({
    required String identifier,
    required FutureOr<String>? storagePath,
  }) {
    return KinesisRecordDatabase._(
      connect(name: 'kinesis_records_$identifier', path: storagePath),
    );
  }

  /// Creates a [KinesisRecordDatabase] for testing with a custom executor.
  KinesisRecordDatabase.forTesting(super.e);

  KinesisRecordDatabase._(super.e);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
      // Index for ordered retrieval by stream.
      await customStatement(
        'CREATE INDEX IF NOT EXISTS idx_kinesis_records_stream_id '
        'ON kinesis_records (stream_name, id)',
      );
      // Index for cache size aggregation.
      await customStatement(
        'CREATE INDEX IF NOT EXISTS idx_kinesis_records_data_size '
        'ON kinesis_records (data_size)',
      );
    },
  );
}
