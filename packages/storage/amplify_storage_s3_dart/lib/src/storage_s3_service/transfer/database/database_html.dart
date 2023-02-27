// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:html';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/database_stub.dart'
    as stub;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/transfer_record.dart';

/// a key prefix used by [TransferDatabase] when adding a key value pair into local storage.
/// it is an identifier to differentiate the data stored by [TransferDatabase] into local storage from others.
const _localStorageKeyPrefix = 'amplify_storage_transfer_data_';

/// {@macro amplify_storage_s3_dart.transfer_database}
class TransferDatabase implements stub.TransferDatabase {
  /// {@macro amplify_storage_s3_dart.transfer_database_token}
  static const token = Token<TransferDatabase>();

  Iterable<MapEntry<String, String>> get _entries => window.localStorage.entries
      .where((element) => element.key.startsWith(_localStorageKeyPrefix));

  @override
  Future<int> deleteTransferRecords(String uploadId) async {
    var result = 0;
    for (final element in _entries) {
      final transferRecord = TransferRecord.fromJsonString(element.value);
      if (transferRecord.uploadId == uploadId) {
        window.localStorage.remove(element.key);
        result++;
      }
    }

    return result;
  }

  @override
  Future<List<TransferRecord>> getMultipartUploadRecordsCreatedBefore(
    DateTime dateTime,
  ) async {
    final result = <TransferRecord>[];
    for (final element in _entries) {
      final value = element.value;
      final transferRecord = TransferRecord.fromJsonString(value);
      if (transferRecord.createdAt.isBefore(dateTime)) {
        result.add(transferRecord);
      }
    }
    return result;
  }

  @override
  Future<String> insertTransferRecord(TransferRecord data) async {
    final key = _localStorageKeyPrefix + uuid();
    window.localStorage[key] = data.toJsonString();
    return key;
  }
}
