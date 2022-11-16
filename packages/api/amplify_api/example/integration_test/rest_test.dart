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

  HttpPayload generateTestPayload() => HttpPayload.json({'name': 'mow lawn'});
  void validateRestResponse(AWSBaseHttpResponse response) {
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
        validateRestResponse(res);
      });

      testWidgets(
        'should send GET request with a custom header',
        // Lambda looks for this header and only sets the body to expected string.
        (WidgetTester tester) async {
          final res = await Amplify.API.get(
            path,
            headers: {'test_header': 'test_value'},
          ).response;
          final body = res.decodeBody();
          expect(res.statusCode, 200);
          expect(body, 'test header set');
        },
        // Skip on web because CORS does not allow this custom header without
        // manually adding to allow list in API gateway.
        skip: zIsWeb,
      );

      testWidgets('should throw a RestException for POST',
          (WidgetTester tester) async {
        final operation = Amplify.API.post(path);
        await expectLater(
          operation.response,
          throwsA(isA<RestException>()),
        );
      });
    });

    group('authorized user access', () {
      setUpAll(() async {
        await signInTestUser();
      });

      testWidgets('should send GET request', (WidgetTester tester) async {
        final res = await Amplify.API.get(path).response;
        validateRestResponse(res);
      });

      testWidgets('should send HEAD request', (WidgetTester tester) async {
        final res = await Amplify.API.head(path).response;
        expect(res.statusCode, 200);
      });

      testWidgets('should send POST request', (WidgetTester tester) async {
        final res =
            await Amplify.API.post(path, body: generateTestPayload()).response;
        validateRestResponse(res);
      });

      testWidgets('should send PUT request', (WidgetTester tester) async {
        final res =
            await Amplify.API.put(path, body: generateTestPayload()).response;
        validateRestResponse(res);
      });

      testWidgets('should send PATCH request', (WidgetTester tester) async {
        final res =
            await Amplify.API.patch(path, body: generateTestPayload()).response;
        validateRestResponse(res);
      });

      testWidgets('should send DELETE request', (WidgetTester tester) async {
        final res = await Amplify.API
            .delete(path, body: generateTestPayload())
            .response;
        validateRestResponse(res);
      });
    });
  });
}
