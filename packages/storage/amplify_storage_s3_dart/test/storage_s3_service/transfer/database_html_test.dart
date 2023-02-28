// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')

import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/database_html.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/transfer_record.dart';
import 'package:test/test.dart';

void main() {
  group('TransferDatabase for web', () {
    const testUploadId = 'test-upload-Id';
    const testObjectKey = 'test-object-Key';
    final testCreatedAt = DateTime(2022, 1, 1);

    final testTransferRecord = TransferRecord(
      uploadId: testUploadId,
      objectKey: testObjectKey,
      createdAt: testCreatedAt,
    );

    final testTransferRecordJsonString = testTransferRecord.toJsonString();

    late TransferDatabase transferDatabase;

    setUp(() async {
      transferDatabase = TransferDatabase();
      await transferDatabase.deleteTransferRecords(testUploadId);
    });

    test('insert and deleteTransferRecords from local storage', () async {
      final recordId =
          await transferDatabase.insertTransferRecord(testTransferRecord);
      expect(recordId, isNotNull);
      final actual = await transferDatabase.deleteTransferRecords(testUploadId);
      expect(actual, 1);
    });

    test('getMultipartUploadRecordsCreatedBefore should return one item',
        () async {
      await transferDatabase.insertTransferRecord(testTransferRecord);
      final actual =
          await transferDatabase.getMultipartUploadRecordsCreatedBefore(
        testCreatedAt.add(const Duration(days: 1)),
      );
      expect(actual.length, 1);
      expect(actual.first.toJsonString(), testTransferRecordJsonString);
    });

    test('getMultipartUploadRecordsCreatedBefore should return empty list',
        () async {
      await transferDatabase.insertTransferRecord(testTransferRecord);
      final actual =
          await transferDatabase.getMultipartUploadRecordsCreatedBefore(
        testCreatedAt,
      );
      expect(actual.length, 0);
    });
  });
}
