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
import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/testing.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_data/fake_amplify_configuration.dart';
import 'util.dart';

const _expectedRestResponseBody = '"Hello from Lambda!"';
const _pathThatShouldFail = 'notHere';

final mockHttpClient = MockAWSHttpClient((request, handler) async {
  if (request.bodyBytes.isNotEmpty) {
    expect(request.headers['Content-Type'], 'application/json; charset=utf-8');
  }
  if (request.path.contains(_pathThatShouldFail)) {
    return AWSHttpResponse(
      statusCode: 404,
      body: utf8.encode('Not found'),
    );
  }
  return AWSHttpResponse(
    statusCode: 200,
    body: utf8.encode(_expectedRestResponseBody),
  );
});

void main() {
  setUpAll(() async {
    final apiPlugin = AmplifyAPI(baseHttpClient: mockHttpClient);
    // Register IAM auth provider like amplify_auth_cognito would do.
    final authProviderRepo = AmplifyAuthProviderRepository()
      ..registerAuthProvider(
        APIAuthorizationType.iam.authProviderToken,
        TestIamAuthProvider(),
      );
    final config = AmplifyConfig.fromJson(
      jsonDecode(amplifyconfig) as Map<String, Object?>,
    );
    await apiPlugin.configure(
      config: config,
      authProviderRepo: authProviderRepo,
    );

    await Amplify.addPlugin(apiPlugin);
  });
  group('REST API', () {
    Future<void> verifyRestOperation(
      AWSHttpOperation<AWSBaseHttpResponse> operation,
    ) async {
      final response =
          await operation.response.timeout(const Duration(seconds: 3));
      final body = await response.decodeBody();
      expect(body, _expectedRestResponseBody);
      expect(response.statusCode, 200);
    }

    test('get() should get 200', () async {
      final operation = Amplify.API.get('items');
      await verifyRestOperation(operation);
    });

    test('head() should get 200', () async {
      final operation = Amplify.API.head('items');
      final response = await operation.response;
      expect(response.statusCode, 200);
    });

    test('patch() should get 200', () async {
      final operation = Amplify.API
          .patch('items', body: HttpPayload.json({'name': 'Mow the lawn'}));
      await verifyRestOperation(operation);
    });

    test('post() should get 200', () async {
      final operation = Amplify.API
          .post('items', body: HttpPayload.json({'name': 'Mow the lawn'}));
      await verifyRestOperation(operation);
    });

    test('put() should get 200', () async {
      final operation = Amplify.API
          .put('items', body: HttpPayload.json({'name': 'Mow the lawn'}));
      await verifyRestOperation(operation);
    });

    test('delete() should get 200', () async {
      final operation = Amplify.API
          .delete('items', body: HttpPayload.json({'name': 'Mow the lawn'}));
      await verifyRestOperation(operation);
    });

    test('404 should throw RestException', () async {
      final operation = Amplify.API.get(_pathThatShouldFail);
      await expectLater(operation.response, throwsA(isA<RestException>()));
    });

    test('canceled request should never resolve', () async {
      final operation = Amplify.API.get('items');
      await operation.cancel();
      operation.operation
          .then((p0) => fail('Request should have been cancelled.'));

      await expectLater(
        operation.response,
        throwsA(isA<CancellationException>()),
      );
      expect(operation.operation.isCanceled, isTrue);
    });
  });
}
