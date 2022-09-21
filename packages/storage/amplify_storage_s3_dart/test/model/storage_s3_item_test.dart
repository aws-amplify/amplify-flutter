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

import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/sdk/s3.dart';
import 'package:fixnum/fixnum.dart';
import 'package:test/test.dart';

void main() {
  group('S3StorageItem.fromS3Object()', () {
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

      final storageS3Item = S3StorageItem.fromS3Object(
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
        'should throw StorageS3Exception.unknownException() when S3Object.key is null (should never happen)',
        () {
      final testS3Object = S3Object.build((builder) {
        builder.eTag = testETag;
      });

      try {
        S3StorageItem.fromS3Object(
          testS3Object,
          prefixToDrop: testPrefixToDrop,
        );
        fail('Expected exception wasn\'t thrown.');
      } on S3StorageException catch (error) {
        expect(error, S3StorageException.unknownException());
      }
    });
  });
}
