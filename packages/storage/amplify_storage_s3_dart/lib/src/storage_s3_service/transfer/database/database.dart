// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/connection/connection.dart';
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
  TransferDatabase(AppPathProvider pathProvider)
      : super(
          connect(pathProvider),
        );

  /// Token to identify [TransferDatabase] instance.
  static const token = Token<TransferDatabase>([Token<AppPathProvider>()]);

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
