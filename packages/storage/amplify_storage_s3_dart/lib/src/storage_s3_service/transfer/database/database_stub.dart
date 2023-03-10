// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/transfer_record.dart';

/// {@template amplify_storage_s3_dart.transfer_database}
/// Database to persist [TransferRecord] created by Storage S3 plugin upload
/// operations.
/// {@endtemplate}
class TransferDatabase {
  /// {@template amplify_storage_s3_dart.transfer_database_token}
  /// The dependency token for [TransferDatabase].
  /// {@endtemplate}
  static Token<TransferDatabase> token = const Token<TransferDatabase>();

  /// {@template amplify_storage_s3_dart.transfer_database_get}
  /// Gets a list of multipart upload records that are created earlier than
  /// [dateTime].
  /// {@endtemplate}
  Future<List<TransferRecord>> getMultipartUploadRecordsCreatedBefore(
    DateTime dateTime,
  ) {
    throw UnimplementedError(
      'getMultipartUploadRecordsCreatedBefore method is not implemented in the current platform.',
    );
  }

  /// {@template amplify_storage_s3_dart.transfer_database_insert}
  /// Inserts [record], a [TransferRecord], to the database.
  /// returns the key for the inserted record into the database.
  /// {@endtemplate}
  Future<String> insertTransferRecord(TransferRecord record) {
    throw UnimplementedError(
      'insertTransferRecord method is not implemented in the current platform.',
    );
  }

  /// {@template amplify_storage_s3_dart.transfer_database_delete}
  /// Deletes [TransferRecord]s from the database where
  /// [TransferRecord.uploadId] is equal to [uploadId].
  /// returns number of recordes deleted from the database.
  /// {@endtemplate}
  Future<int> deleteTransferRecords(String uploadId) {
    throw UnimplementedError(
      'deleteTransferRecords method is not implemented in the current platform.',
    );
  }
}
