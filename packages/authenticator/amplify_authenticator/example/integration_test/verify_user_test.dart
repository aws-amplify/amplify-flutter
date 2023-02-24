// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/state/auth_state.dart';
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

  group('verify-user', () {
    // Given I'm running the example "ui/components/authenticator/verify-user"
    setUpAll(() async {
      await loadConfiguration(
        environmentName: 'sign-in-with-email',
      );
    });

    tearDown(signOut);

    // Scenario: Redirect to "Verify" page
    testWidgets('Redirect to "Verify" page', (tester) async {
      SignInPage signInPage = SignInPage(tester: tester);
      VerifyUserPage verifyUserPage = VerifyUserPage(tester: tester);
      await loadAuthenticator(tester: tester);

      final username = generateEmail();
      final password = generatePassword();

      final cognitoUsername = await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: CognitoUserAttributeKey.email,
            value: username,
          ),
        ],
      );
      addTearDown(() => deleteUser(cognitoUsername));

      // When I type my "email" with status "UNVERIFIED"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // Wait for verify user state
      await verifyUserPage.expectState(UnauthenticatedState.verifyUser);

      // Then I see "Account recovery requires verified contact information"
      verifyUserPage.expectTitleIsVisible();
    });

    // Scenario: Skip verify account
    testWidgets('Skip verify account', (tester) async {
      SignInPage signInPage = SignInPage(tester: tester);
      VerifyUserPage verifyUserPage = VerifyUserPage(tester: tester);
      await loadAuthenticator(tester: tester);

      final username = generateEmail();
      final password = generatePassword();

      final cognitoUsername = await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: CognitoUserAttributeKey.email,
            value: username,
          ),
        ],
      );
      addTearDown(() => deleteUser(cognitoUsername));

      // When I type my "email" with status "UNVERIFIED"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // Wait for verify user state
      await verifyUserPage.expectState(UnauthenticatedState.verifyUser);

      // And I click the "Skip" button
      await verifyUserPage.tapSkipButton();

      // Then I see "Sign out"
      await signInPage.expectAuthenticated();
    });

    // Scenario: Redirect to "Confirm Verify" page
    testWidgets('Redirect to "Confirm Verify" page', (tester) async {
      SignInPage signInPage = SignInPage(tester: tester);
      VerifyUserPage verifyUserPage = VerifyUserPage(tester: tester);
      ConfirmVerifyUserPage confirmVerifyUserPage = ConfirmVerifyUserPage(
        tester: tester,
      );
      await loadAuthenticator(tester: tester);

      final username = generateEmail();
      final password = generatePassword();

      final cognitoUsername = await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: CognitoUserAttributeKey.email,
            value: username,
          ),
        ],
      );
      addTearDown(() => deleteUser(cognitoUsername));

      // When I type my "email" with status "UNVERIFIED"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // Wait for verify user state
      await verifyUserPage.expectState(UnauthenticatedState.verifyUser);

      // And I see "Account recovery requires verified contact information"
      verifyUserPage.expectTitleIsVisible();

      // And I click the "Email" radio button
      await verifyUserPage.selectAttribute('Email');

      // And I click the "Verify" button
      await verifyUserPage.tapVerifyButton();

      // Then I see "Code"
      confirmVerifyUserPage.expectCodeFieldIsPresent();
    });

    testWidgets('Auth.signIn does not redirect to "Verify" page',
        (tester) async {
      SignInPage signInPage = SignInPage(tester: tester);
      await loadAuthenticator(tester: tester);

      final username = generateEmail();
      final password = generatePassword();

      final cognitoUsername = await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: CognitoUserAttributeKey.email,
            value: username,
          ),
        ],
      );
      addTearDown(() => deleteUser(cognitoUsername));

      // When I sign in with username and password.
      await Amplify.Auth.signIn(username: username, password: password);

      await tester.pumpAndSettle();

      // Then I see "Sign out"
      await signInPage.expectAuthenticated();
    });
  });
}
