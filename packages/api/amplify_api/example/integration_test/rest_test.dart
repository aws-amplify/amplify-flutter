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
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'util.dart';

const path = 'items';
const expectedResponseText = 'Hello from Lambda!';

void main({bool useExistingTestUser = false}) {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  HttpPayload _generateTestPayload() => HttpPayload.json({'name': 'mow lawn'});
  void _validateRestResponse(AWSHttpResponse response) {
    final body = response.decodeBody();
    expect(response.statusCode, 200);
    expect(body, expectedResponseText);
  }

  group('REST', () {
    setUpAll(() async {
      await configureAmplify();

      if (!useExistingTestUser) {
        await signUpTestUser();
      }
    });

    tearDownAll(() async {
      if (!useExistingTestUser) {
        await deleteTestUser();
      }
    });

    group('guest user access', () {
      setUpAll(() async {
        await signOutTestUser();
      });

      testWidgets('should send GET request', (WidgetTester tester) async {
        final res = await Amplify.API.get(path).response;
        _validateRestResponse(res);
      });

      testWidgets('should get an error for POST', (WidgetTester tester) async {
        final res = await Amplify.API.head(path).response;
        expect(res.statusCode, 403);
      });
    });

    group('authorized user access', () {
      setUpAll(() async {
        await signInTestUser();
      });

      testWidgets('should send GET request', (WidgetTester tester) async {
        final res = await Amplify.API.get(path).response;
        _validateRestResponse(res);
      });

      testWidgets('should send HEAD request', (WidgetTester tester) async {
        final res = await Amplify.API.head(path).response;
        expect(res.statusCode, 200);
      });

      testWidgets('should send POST request', (WidgetTester tester) async {
        final res =
            await Amplify.API.post(path, body: _generateTestPayload()).response;
        _validateRestResponse(res);
      });

      testWidgets('should send PUT request', (WidgetTester tester) async {
        final res =
            await Amplify.API.put(path, body: _generateTestPayload()).response;
        _validateRestResponse(res);
      });

      testWidgets('should send PATCH request', (WidgetTester tester) async {
        final res = await Amplify.API
            .patch(path, body: _generateTestPayload())
            .response;
        _validateRestResponse(res);
      });

      testWidgets('should send DELETE request', (WidgetTester tester) async {
        final res = await Amplify.API
            .delete(path, body: _generateTestPayload())
            .response;
        _validateRestResponse(res);
      });
    });
  });
}
