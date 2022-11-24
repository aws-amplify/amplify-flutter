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
import 'package:aws_common/testing.dart';
import 'package:smithy/smithy.dart';
import 'package:smithy_aws/smithy_aws.dart';
import 'package:test/test.dart';

import 'dummy_operation.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;

  group('WithSdkRequest', () {
    test('w/ max attempts', () async {
      var attempt = 1;
      final headers = <Map<String, String>>[];
      final httpClient = MockAWSHttpClient((request, _) async {
        headers.add(request.headers);
        if (attempt > 1) {
          return AWSHttpResponse(statusCode: 200, body: '{}'.codeUnits);
        }
        attempt++;
        return AWSHttpResponse(statusCode: 500, body: '{}'.codeUnits);
      });
      final retryer = AWSRetryer();
      final op = DummyHttpOperation(retryer);
      const maxAttempts = 5;
      await runZoned(
        () => op.run(const Unit(), client: httpClient).result,
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
    final httpClient = MockAWSHttpClient((request, _) async {
      headers.add(request.headers);
      if (attempt > 1) {
        return AWSHttpResponse(statusCode: 200, body: '{}'.codeUnits);
      }
      attempt++;
      return AWSHttpResponse(statusCode: 500, body: '{}'.codeUnits);
    });
    final retryer = AWSRetryer();
    final op = DummyHttpOperation(retryer);
    await runZoned(
      () => op.run(const Unit(), client: httpClient).result,
      zoneValues: {
        #retryable: true,
        AWSHeaders.sdkInvocationId: uuid(),
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
