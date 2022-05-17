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
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'pages/sign_in_page.dart';
import 'pages/test_utils.dart';
import 'utils/mock_data.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
  binding.deferFirstFrame();

  final authenticator = Authenticator(
    child: MaterialApp(
      builder: Authenticator.builder(),
      home: const Scaffold(
        body: Center(
          child: SignOutButton(),
        ),
      ),
    ),
  );

  group('sign out', () {
    setUpAll(() async {
      await loadConfiguration(
        'ui/components/authenticator/sign-in-with-email',
        additionalConfigs: [AmplifyAPI()],
      );
    });

    tearDown(signOut);

    // Scenario: Sign out with Auth.signOut()
    testWidgets('Sign out with Auth.signOut()', (tester) async {
      final username = generateEmail();
      final password = generatePassword();
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);

      // When I sign in with "username" and "password"
      await signInPage.signIn(username: username, password: password);

      /// Then I see the authenticated app
      await signInPage.expectAuthenticated();

      // When I sign out using Auth.signOut()
      await Amplify.Auth.signOut();
      await tester.pumpAndSettle();

      // Then I see "Sign in"
      signInPage.expectStep(AuthenticatorStep.signIn);
    });
  });
}
