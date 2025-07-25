// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_db_common_dart/amplify_db_common_dart.dart'
    as db_common;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/database_io.drift.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/database_stub.dart'
    as stub;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/tables.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/tables.drift.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/transfer_record.dart'
    as data;
import 'package:drift/drift.dart';
import 'package:meta/meta.dart';

/// The name of database file created to persist [TransferRecords].
@internal
const dataBaseName = 'amplify_storage_transfer_records';

/// {@macro amplify_storage_s3_dart.transfer_database}
@DriftDatabase(tables: [TransferRecords])
class TransferDatabase extends $TransferDatabase
    implements stub.TransferDatabase {
  /// {@macro amplify_storage_s3_dart.transfer_database}
  TransferDatabase(DependencyManager dependencies)
    : super(
        dependencies.getOrCreate<db_common.Connect>()(
          name: dataBaseName,
          path: dependencies
              .getOrCreate<AppPathProvider>()
              .getApplicationSupportPath(),
        ),
      );

  // Bump the version number when any alteration is made into tables.dart
  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // Note: From schemaVersion 1->2 we added bucketName and awsRegion.
        // they are nullable columns so that on upgrade we need to update
        // the transferRecords table to add these two columns
        if (from < 2) {
          await m.addColumn(transferRecords, transferRecords.bucketName);
          await m.addColumn(transferRecords, transferRecords.awsRegion);
        }
      },
    );
  }

  @override
  Future<List<data.TransferRecord>> getMultipartUploadRecordsCreatedBefore(
    DateTime dateTime,
  ) {
    return (select(transferRecords, distinct: true)..where(
          (tbl) => tbl.createdAt.isSmallerThanValue(dateTime.toIso8601String()),
        ))
        .map(
          (e) => data.TransferRecord(
            objectKey: e.objectKey,
            uploadId: e.uploadId,
            createdAt: DateTime.parse(e.createdAt),
            bucketName: e.bucketName,
            awsRegion: e.awsRegion,
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
      bucketName: Value(record.bucketName),
      awsRegion: Value(record.awsRegion),
    );
    final value = await into(transferRecords).insert(entry);
    return value.toString();
  }

  @override
  Future<int> deleteTransferRecords(String uploadId) {
    return (delete(
      transferRecords,
    )..where((tbl) => tbl.uploadId.equals(uploadId))).go();
  }
}
