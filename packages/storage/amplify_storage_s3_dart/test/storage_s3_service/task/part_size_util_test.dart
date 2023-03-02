// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_storage_s3_dart/src/storage_s3_service/service/task/part_size_util.dart'
    as part_size_util;
import 'package:test/test.dart';

void main() {
  const expectedMinPartSize = 5 * 1024 * 1024;
  const expectedMaxNumberOfParts = 10000;

  group('part_size_util', () {
    test(
      'ensure part size to at least be $expectedMinPartSize',
      () {
        const testFileSize = 11 * 1024 * 1024; // 11MiB
        final result = part_size_util.calculateOptimalPartSize(testFileSize);

        expect(result, expectedMinPartSize);
      },
    );

    test(
      'allow part size to be larger than $expectedMinPartSize',
      () {
        const testFileSize = 5 * 1024 * 1024 * expectedMaxNumberOfParts +
            1000 * 1024 * 1024; // 51GiB
        final expectedResult = (testFileSize / expectedMaxNumberOfParts).ceil();

        final result = part_size_util.calculateOptimalPartSize(testFileSize);
        expect(result, greaterThan(expectedMinPartSize));
        expect(result, expectedResult);
      },
    );
  });
}
