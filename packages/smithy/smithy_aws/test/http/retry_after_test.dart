// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/testing.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';
import 'package:test/test.dart';

import 'dummy_operation.dart';

void main() {
  group('AWSRetryer', () {
    test('uses x-amz-retry-after header', () async {
      final httpClient = MockAWSHttpClient((request, _) async {
        return AWSStreamedHttpResponse(
          statusCode: 500,
          headers: {
            AWSHeaders.retryAfter: '500',
          },
          body: HttpPayload.string('{}'),
        );
      });
      final retryer = AWSRetryer(
        initialRetryTokens: 500,
      );
      final op = DummyHttpOperation(retryer);
      try {
        await runZoned(
          () => op.run(const Unit(), client: httpClient).result,
          zoneValues: {
            AWSConfigValue.maxAttempts: 1,
          },
        );
        fail('Operation should fail');
      } on Exception catch (_) {}
      expect(retryer.retryQuota, equals(495));
    });
  });
}
