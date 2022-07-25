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

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/config/aws_config_value.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';
import 'package:test/test.dart';

import 'dummy_operation.dart';

void main() {
  group('AWSRetryer', () {
    test('uses x-amz-retry-after header', () async {
      final httpClient = HttpClient.v1(
        baseClient: MockClient((request) async {
          return Response('{}', 500, headers: {
            AWSHeaders.retryAfter: '500',
          });
        }),
      );
      final retryer = AWSRetryer(
        initialRetryTokens: 500,
      );
      final op = DummyHttpOperation(retryer);
      try {
        await runZoned(
          () => op.run(const Unit(), client: httpClient),
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
