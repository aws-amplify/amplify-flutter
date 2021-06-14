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

import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  final username = generateUsername();
  final password = generatePassword();

  group('signIn and signOut', () {
    setUpAll(() async {
      await configureAuth();

      await Amplify.Auth.signUp(
          username: username,
          password: password,
          options: CognitoSignUpOptions(userAttributes: {
            'email': generateEmail(),
            'phone_number': mockPhoneNumber
          }));

      await signOutUser();
    });

    testWidgets('should signIn a user', (WidgetTester tester) async {
      final res =
          await Amplify.Auth.signIn(username: username, password: password);
      expect(res.isSignedIn, true);
    });

    testWidgets('should signOut', (WidgetTester tester) async {
      // Ensure signed in before testing signOut.
      final initalAuthRes = await Amplify.Auth.fetchAuthSession();
      if (!initalAuthRes.isSignedIn) {
        await Amplify.Auth.signIn(username: username, password: password);
        final secondAuthRes = await Amplify.Auth.fetchAuthSession();
        expect(secondAuthRes.isSignedIn, true);
      }

      await Amplify.Auth.signOut();
      final finalAuthRes = await Amplify.Auth.fetchAuthSession();
      expect(finalAuthRes.isSignedIn, false);
    });
  });
}
