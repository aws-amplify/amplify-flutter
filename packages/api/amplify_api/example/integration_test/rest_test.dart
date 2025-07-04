// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'util.dart';

const path = 'items';
const expectedResponseText = 'Hello from Lambda!';

void main({bool useExistingTestUser = false, TestUser? testUser}) {
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
        testUser = await signUpTestUser(testUser);
      }
    });

    tearDownAll(() async {
      if (!useExistingTestUser) {
        await deleteTestUser(testUser);
      }
    });

    group('guest user access', () {
      setUpAll(() async {
        await signOutTestUser(testUser);
      });

      testWidgets('should send GET request', (WidgetTester tester) async {
        final res = await Amplify.API.get(path).response;
        validateRestResponse(res);
      });

      testWidgets(
        'should send GET request with a custom header',
        // Lambda looks for this header and only sets the body to expected string.
        (WidgetTester tester) async {
          final res = await Amplify.API
              .get(path, headers: {'test_header': 'test_value'})
              .response;
          final body = res.decodeBody();
          expect(res.statusCode, 200);
          expect(body, 'test header set');
        },
        // Skip on web because CORS does not allow this custom header without
        // manually adding to allow list in API gateway.
        skip: zIsWeb,
      );

      testWidgets(
        'should throw a HttpStatusException for POST',
        (WidgetTester tester) async {
          final operation = Amplify.API.post(path);
          await expectLater(
            operation.response,
            throwsA(isA<HttpStatusException>()),
          );
        },
        // Skip on web because CORS
        skip: zIsWeb,
      );
    });

    group('authorized user access', () {
      setUpAll(() async {
        await signInTestUser(testUser);
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
        final res = await Amplify.API
            .post(path, body: generateTestPayload())
            .response;
        validateRestResponse(res);
      });

      testWidgets('should send PUT request', (WidgetTester tester) async {
        final res = await Amplify.API
            .put(path, body: generateTestPayload())
            .response;
        validateRestResponse(res);
      });

      testWidgets('should send PATCH request', (WidgetTester tester) async {
        final res = await Amplify.API
            .patch(path, body: generateTestPayload())
            .response;
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
