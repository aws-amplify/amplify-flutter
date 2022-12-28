// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

void main() {
  group('AWSCredentials', () {
    test('toString obscures credentials', () {
      const accessKeyId = 'accessKeyId';
      const secretAccessKey = 'secretAccessKey';
      const sessionToken = 'sessionToken';
      const credentials = AWSCredentials(
        accessKeyId,
        secretAccessKey,
        sessionToken,
      );
      final credsToString = credentials.toString();
      expect(credsToString, isNot(contains(accessKeyId)));
      expect(credsToString, isNot(contains(secretAccessKey)));
      expect(credsToString, isNot(contains(sessionToken)));
    });
  });
}
