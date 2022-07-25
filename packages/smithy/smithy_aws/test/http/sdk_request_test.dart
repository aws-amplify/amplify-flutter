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
import 'package:uuid/uuid.dart';

import 'dummy_operation.dart';

void main() {
  group('WithSdkRequest', () {
    test('w/ max attempts', () async {
      var attempt = 1;
      final headers = <Map<String, String>>[];
      final httpClient = HttpClient.v1(
        baseClient: MockClient((request) async {
          headers.add(request.headers);
          if (attempt > 1) {
            return Response('{}', 200);
          }
          attempt++;
          return Response('{}', 500);
        }),
      );
      final retryer = AWSRetryer();
      final op = DummyHttpOperation(retryer);
      const maxAttempts = 5;
      await runZoned(
        () => op.run(const Unit(), client: httpClient),
        zoneValues: {
          #retryable: true,
          AWSConfigValue.maxAttempts: maxAttempts,
        },
      );
      expect(headers, hasLength(2));
      expect(
        headers[0],
        containsPair(AWSHeaders.sdkRequest, 'attempt=1; max=$maxAttempts'),
      );
      expect(
        headers[1],
        containsPair(AWSHeaders.sdkRequest, 'attempt=2; max=$maxAttempts'),
      );
    });
  });

  test('WithSdkInvocationId', () async {
    var attempt = 1;
    final headers = <Map<String, String>>[];
    final httpClient = HttpClient.v1(
      baseClient: MockClient((request) async {
        headers.add(request.headers);
        if (attempt > 1) {
          return Response('{}', 200);
        }
        attempt++;
        return Response('{}', 500);
      }),
    );
    final retryer = AWSRetryer();
    final op = DummyHttpOperation(retryer);
    await runZoned(
      () => op.run(const Unit(), client: httpClient),
      zoneValues: {
        #retryable: true,
        AWSHeaders.sdkInvocationId: const Uuid().v4(),
      },
    );
    expect(headers, hasLength(2));
    expect(headers[0], contains(AWSHeaders.sdkInvocationId));
    expect(headers[1], contains(AWSHeaders.sdkInvocationId));
    expect(
      headers[0][AWSHeaders.sdkInvocationId],
      headers[1][AWSHeaders.sdkInvocationId],
    );
  });
}
