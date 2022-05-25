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
import 'dart:io' as io;

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

const _testBody = HttpPayload.empty();
const _expectedRestResponseBody = '"Hello from Lambda!"';
const _pathThatShouldFail = 'notHere';

class MockAmplifyAPI extends AmplifyAPI {
  @override
  http.Client getRestClient({String? apiName}) => MockClient((request) async {
        if (request.url.path.contains(_pathThatShouldFail)) {
          return http.Response('Not found', 404);
        }
        return http.Response(_expectedRestResponseBody, 200);
      });
}

void main() {
  late AmplifyAPI api;

  setUpAll(() async {
    // mock
    final jsonString =
        io.File('test/test_data/fake_api_config.json').readAsStringSync();
    api = MockAmplifyAPI();

    // ignore: todo
    // TODO: restore this when Amplify methods migrated to dart.
    // change all api.get(), etc... calls to Amplify.API.get()...
    // await Amplify.addPlugin(api);
    // await Amplify.configure(jsonString);
    api.configure(
        config: AmplifyConfig.fromJson(
            json.decode(jsonString) as Map<String, Object?>));
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
      final operation = api.get('items');
      await _verifyRestOperation(operation);
    });

    test('head() should get 200', () async {
      final operation = api.head('items');
      final response = await operation.value;
      expect(response.statusCode, 200);
    });

    test('patch() should get 200', () async {
      final operation = api.patch('items', body: _testBody);
      await _verifyRestOperation(operation);
    });

    test('post() should get 200', () async {
      final operation = api.post('items', body: _testBody);
      await _verifyRestOperation(operation);
    });

    test('put() should get 200', () async {
      final operation = api.put('items', body: _testBody);
      await _verifyRestOperation(operation);
    });

    test('delete() should get 200', () async {
      final operation = api.delete('items', body: _testBody);
      await _verifyRestOperation(operation);
    });

    test('canceled request should never resolve', () async {
      final operation = api.get('items');
      operation.cancel();
      operation.then((p0) => fail('Request should have been cancelled.'));
    });
  });
}
