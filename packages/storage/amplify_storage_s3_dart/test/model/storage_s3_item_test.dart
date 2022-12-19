// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart';
import 'package:fixnum/fixnum.dart';
import 'package:test/test.dart';

void main() {
  group('S3Item.fromS3Object()', () {
    const testETag = '1234';
    const testPrefixToDrop = 'prefix';
    const testKey = '$testPrefixToDrop/object-key';
    final testLastModified = DateTime(2022, 9, 12);
    final testSize = Int64(5000);
    test('should create a StorageS3Item from Smithy S3Object object', () {
      final testS3Object = S3Object.build((builder) {
        builder
          ..eTag = testETag
          ..key = testKey
          ..size = testSize
          ..lastModified = testLastModified;
      });

      final storageS3Item = S3Item.fromS3Object(
        testS3Object,
        prefixToDrop: testPrefixToDrop,
      );

      expect(storageS3Item.eTag, testETag);
      expect(
        storageS3Item.key,
        testKey.replaceRange(0, testPrefixToDrop.length, ''),
      );
      expect(storageS3Item.lastModified, testLastModified);
      expect(storageS3Item.size, testSize.toInt());
    });

    test(
        'should throw StorageUnknownException when S3Object.key is null (should never happen)',
        () {
      final testS3Object = S3Object.build((builder) {
        builder.eTag = testETag;
      });

      try {
        S3Item.fromS3Object(
          testS3Object,
          prefixToDrop: testPrefixToDrop,
        );
        fail("Expected exception wasn't thrown.");
      } on StorageException catch (error) {
        expect(error, isA<StorageUnknownException>());
      }
    });
  });
}
