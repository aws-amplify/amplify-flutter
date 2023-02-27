// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_db_common_dart/amplify_db_common_dart.dart'
    as db_common;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/database_stub.dart'
    as stub;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/tables.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/transfer_record.dart'
    as data;
import 'package:drift/drift.dart';
import 'package:meta/meta.dart';

part 'database_io.g.dart';

/// The name of database file created to persist [TransferRecords].
@internal
const dataBaseName = 'amplify_storage_transfer_records';

/// {@macro amplify_storage_s3_dart.transfer_database}
@DriftDatabase(tables: [TransferRecords])
class TransferDatabase extends _$TransferDatabase
    implements stub.TransferDatabase {
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

  /// {@macro amplify_storage_s3_dart.transfer_database_token}
  static const token = Token<TransferDatabase>(
    [Token<db_common.Connect>(), Token<AppPathProvider>()],
  );

  // Bump the version number when any alteration is made into tables.dart
  @override
  int get schemaVersion => 1;

  @override
  Future<List<data.TransferRecord>> getMultipartUploadRecordsCreatedBefore(
    DateTime dateTime,
  ) {
    return (select(transferRecords, distinct: true)
          ..where(
            (tbl) => tbl.createdAt.isSmallerThanValue(
              dateTime.toIso8601String(),
            ),
          ))
        .map(
          (e) => data.TransferRecord(
            objectKey: e.objectKey,
            uploadId: e.uploadId,
            createdAt: DateTime.parse(e.createdAt),
          ),
        )
        .get();
  }

  @override
  Future<String> insertTransferRecord(data.TransferRecord record) async {
    final entry = TransferRecordsCompanion.insert(
      uploadId: record.uploadId,
      objectKey: record.objectKey,
      createdAt: record.createdAt.toIso8601String(),
    );
    final value = await into(transferRecords).insert(entry);
    return value.toString();
  }

  @override
  Future<int> deleteTransferRecords(String uploadId) {
    return (delete(transferRecords)
          ..where((tbl) => tbl.uploadId.equals(uploadId)))
        .go();
  }
}
