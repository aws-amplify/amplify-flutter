// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'utils/test_utils.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
  binding.deferFirstFrame();

  group('sign out', () {
    setUpAll(() async {
      await loadConfiguration(
        environmentName: 'sign-in-with-username',
      );
    });

    tearDown(signOut);

    // Scenario: Sign out with Auth.signOut()
    testWidgets('Sign out with Auth.signOut()', (tester) async {
      final username = generateEmail();
      final password = generatePassword();
      final cognitoUsername = await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );
      addTearDown(() => deleteUser(cognitoUsername));

      await loadAuthenticator(tester: tester);
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
