// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_db_common_dart/amplify_db_common_dart.dart';
import 'package:drift/drift.dart';

part 'firehose_record_database.g.dart';

/// Table definition for Firehose records.
///
/// Note: Unlike Kinesis Data Streams, Firehose does not use partition keys.
class FirehoseRecords extends Table {
  /// Auto-incrementing primary key.
  IntColumn get id => integer().autoIncrement()();

  /// The delivery stream name.
  TextColumn get streamName => text()();

  /// The data blob.
  BlobColumn get data => blob()();

  /// Size of the data in bytes (for efficient batch size calculations).
  IntColumn get dataSize => integer()();

  /// Number of times this record has been retried.
  IntColumn get retryCount => integer().withDefault(const Constant(0))();

  /// Timestamp when the record was created (milliseconds since epoch).
  IntColumn get createdAt => integer()();
}

/// Database for storing Firehose records locally.
@DriftDatabase(tables: [FirehoseRecords])
class FirehoseRecordDatabase extends _$FirehoseRecordDatabase {
  /// Creates a database using the platform-appropriate connection.
  ///
  /// [identifier] is used to namespace the database (typically the AWS region).
  /// [storagePath] is the directory path for the database file (VM only).
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
