// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/database_io.dart';
import 'package:drift/drift.dart';

/// Schema of the TransferRecords table in SQLite
///
/// When update this schema, please bump [TransferDatabase.schemaVersion].
@DataClassName('TransferRecord')
class TransferRecords extends Table {
  /// The record id.
  IntColumn get id => integer().autoIncrement()();

  /// The multipart upload id.
  TextColumn get uploadId => text()();

  /// The object key associated with the [uploadId].
  TextColumn get objectKey => text()();

  /// Timestamp of [uploadId] creation.
  TextColumn get createdAt => text()();
}
