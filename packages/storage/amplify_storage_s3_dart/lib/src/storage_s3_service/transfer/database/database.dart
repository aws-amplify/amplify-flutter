// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_db_common_dart/amplify_db_common_dart.dart'
    as db_common;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/tables.dart';
import 'package:drift/drift.dart';
import 'package:meta/meta.dart';

part 'database.g.dart';

/// The name of database file created to persist [TransferRecords].
@internal
const dataBaseName = 'amplify_storage_transfer_records';

/// {@template amplify_storage_s3_dart.transfer_database}
/// Database to persist [TransferRecords] created by Storage S3 plugin upload
/// operations.
/// {@endtemplate}
@DriftDatabase(tables: [TransferRecords])
class TransferDatabase extends _$TransferDatabase {
  /// {@macro amplify_storage_s3_dart.transfer_database}
  TransferDatabase(
    db_common.Connect connect,
    AppPathProvider appPathProvider,
  ) : super(
          connect(
            name: dataBaseName,
            path: appPathProvider.getApplicationSupportPath(),
          ),
        );

  /// Token to identify [TransferDatabase] instance.
  static const token = Token<TransferDatabase>(
    [Token<db_common.Connect>(), Token<AppPathProvider>()],
  );

  // Bump the version number when any alteration is made into tables.dart
  @override
  int get schemaVersion => 1;

  /// Gets a list of multiple upload records that are created earlier than
  /// [dateTime].
  Future<List<TransferRecord>> getMultipartUploadRecordsCreatedBefore(
    DateTime dateTime,
  ) {
    return (select(transferRecords, distinct: true)
          ..where(
            (tbl) => tbl.createdAt.isSmallerThanValue(
              dateTime.toIso8601String(),
            ),
          ))
        .get();
  }

  /// Inserts [entry], a [TransferRecordsCompanion], to the database.
  Future<int> insertTransferRecord(TransferRecordsCompanion entry) {
    return into(transferRecords).insert(entry);
  }

  /// Deletes [TransferRecords] from the database where
  /// [TransferRecords.uploadId] is equal to [uploadId].
  Future<int> deleteTransferRecords(String uploadId) {
    return (delete(transferRecords)
          ..where((tbl) => tbl.uploadId.equals(uploadId)))
        .go();
  }
}
