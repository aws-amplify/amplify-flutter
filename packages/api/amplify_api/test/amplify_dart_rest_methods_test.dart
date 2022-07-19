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
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api/src/api_plugin_impl.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

import 'test_data/fake_amplify_configuration.dart';

const _expectedRestResponseBody = '"Hello from Lambda!"';
const _pathThatShouldFail = 'notHere';

class MockAmplifyAPI extends AmplifyAPIDart {
  @override
  http.Client getRestClient({String? apiName}) => MockClient((request) async {
        if (request.body.isNotEmpty) {
          expect(request.headers['Content-Type'], 'application/json');
        }
        if (request.url.path.contains(_pathThatShouldFail)) {
          return http.Response('Not found', 404);
        }
        return http.Response(_expectedRestResponseBody, 200);
      });
}

void main() {
  late AmplifyAPI api;

  setUpAll(() async {
    await Amplify.addPlugin(MockAmplifyAPI());
    await Amplify.configure(amplifyconfig);
  });
  group('REST API', () {
    Future<void> _verifyRestOperation(
      CancelableOperation<AWSStreamedHttpResponse> operation,
    ) async {
      final response =
          await operation.value.timeout(const Duration(seconds: 3));
      final body = await response.decodeBody();
      expect(body, _expectedRestResponseBody);
      expect(response.statusCode, 200);
    }

    test('get() should get 200', () async {
      final operation = Amplify.API.get('items');
      await _verifyRestOperation(operation);
    });

    test('head() should get 200', () async {
      final operation = Amplify.API.head('items');
      final response = await operation.value;
      expect(response.statusCode, 200);
    });

    test('patch() should get 200', () async {
      final operation = Amplify.API
          .patch('items', body: HttpPayload.json({'name': 'Mow the lawn'}));
      await _verifyRestOperation(operation);
    });

    test('post() should get 200', () async {
      final operation = Amplify.API
          .post('items', body: HttpPayload.json({'name': 'Mow the lawn'}));
      await _verifyRestOperation(operation);
    });

    test('put() should get 200', () async {
      final operation = Amplify.API
          .put('items', body: HttpPayload.json({'name': 'Mow the lawn'}));
      await _verifyRestOperation(operation);
    });

    test('delete() should get 200', () async {
      final operation = Amplify.API
          .delete('items', body: HttpPayload.json({'name': 'Mow the lawn'}));
      await _verifyRestOperation(operation);
    });

    test('canceled request should never resolve', () async {
      final operation = Amplify.API.get('items');
      operation.cancel();
      operation.then((p0) => fail('Request should have been cancelled.'));
      await operation.valueOrCancellation();
      expect(operation.isCanceled, isTrue);
    });
  });
}
