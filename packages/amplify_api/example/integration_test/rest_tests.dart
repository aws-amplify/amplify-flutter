/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */
import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_api_example/amplifyconfiguration.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  const path = '/items';
  const restOptions = RestOptions(
    path: path,
  );
  final restOptionsWithBody =
      RestOptions(path: path, body: ascii.encode('{"name":"Mow the lawn"}'));

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('REST', () {
    setUpAll(() async {
      if (!Amplify.isConfigured) {
        await Amplify.addPlugins([AmplifyAuthCognito(), AmplifyAPI()]);
        await Amplify.configure(amplifyconfig);
      }
    });

    void _assertSuccessfulResponse(RestResponse response,
        {bool ignoreBody = false}) {
      expect(response.statusCode, equals(200));
      if (!ignoreBody) {
        expect(response.body, equals('Hello from Lambda!'));
      }
    }

    group('unauthenticated endpoint', () {
      testWidgets('should send GET request and get 200 response',
          (WidgetTester tester) async {
        final response =
            await Amplify.API.get(restOptions: restOptions).response;
        _assertSuccessfulResponse(response);
      });

      testWidgets('should send PUT request and get 200 response',
          (WidgetTester tester) async {
        final response =
            await Amplify.API.put(restOptions: restOptionsWithBody).response;
        _assertSuccessfulResponse(response);
      });

      testWidgets('should send POST request and get 200 response',
          (WidgetTester tester) async {
        final response =
            await Amplify.API.post(restOptions: restOptionsWithBody).response;
        _assertSuccessfulResponse(response);
      });

      testWidgets('should send PATCH request and get 200 response',
          (WidgetTester tester) async {
        final response =
            await Amplify.API.patch(restOptions: restOptionsWithBody).response;
        _assertSuccessfulResponse(response);
      });

      testWidgets('should send DELETE request and get 200 response',
          (WidgetTester tester) async {
        final response =
            await Amplify.API.delete(restOptions: restOptions).response;
        _assertSuccessfulResponse(response);
      });

      testWidgets('should send HEAD request and get 200 response',
          (WidgetTester tester) async {
        final response =
            await Amplify.API.head(restOptions: restOptions).response;
        _assertSuccessfulResponse(response, ignoreBody: true);
      });

      testWidgets(
          'should get unauthorized error for a path that does not exist in backend',
          (WidgetTester tester) async {
        try {
          await Amplify.API
              .get(
                  // ignore: prefer_const_constructors
                  restOptions: RestOptions(
                path: '/doesnotexist',
              ))
              .response;
        } on RestException catch (e) {
          expect(e.response.statusCode, equals(403));
          return;
        }
        fail('Expected an error from backend');
      });
    });
  });
}
