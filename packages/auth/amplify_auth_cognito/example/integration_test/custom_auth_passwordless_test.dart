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

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  late String username;
  late String password;
  group('custom auth passwordless signIn', () {
    setUp(() async {
      await signOutUser();
    });

    setUpAll(() async {
      await configureAuth(
        additionalPlugins: [
          AmplifyAPI(),
        ],
        customAuth: true,
      );
      // create new user for each test
      username = generateUsername();
      password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );
    });

    testWidgets('signIn should return data from the auth challenge lambda',
        (WidgetTester tester) async {
      final res = await Amplify.Auth.signIn(
        username: username,
        password: null,
      );
      expect(res.isSignedIn, false);
      // additionalInfo key values defined in lambda code
      expect(res.nextStep!.additionalInfo?['test-key'], 'test-value');
      expect(res.nextStep?.signInStep, 'CONFIRM_SIGN_IN_WITH_CUSTOM_CHALLENGE');
    });

    testWidgets('a correct challenge reply should sign in the user in',
        (WidgetTester tester) async {
      await Amplify.Auth.signIn(username: username, password: null);
      // '123' is the arbitrary challenge answer defined in lambda code
      final res = await Amplify.Auth.confirmSignIn(confirmationValue: '123');
      expect(res.isSignedIn, true);
    });

    testWidgets(
        'an incorrect challenge reply should throw a NotAuthorizedException',
        (WidgetTester tester) async {
      await Amplify.Auth.signIn(username: username, password: null);
      // '123' is the arbitrary challenge answer defined in lambda code
      expect(
        Amplify.Auth.confirmSignIn(confirmationValue: 'wrong'),
        throwsA(isA<NotAuthorizedException>()),
      );
    });
  });
}
