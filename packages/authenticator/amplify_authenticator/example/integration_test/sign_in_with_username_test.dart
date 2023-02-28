// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// This test follows the Amplify UI feature "sign-in-with-username"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-up-with-username.feature

import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'utils/test_utils.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
  binding.deferFirstFrame();

  group('sign-in-with-username', () {
    // Given I'm running the example "ui/components/authenticator/sign-in-with-username.feature"
    setUpAll(() async {
      await loadConfiguration(
        environmentName: 'sign-in-with-username',
      );
    });

    tearDown(signOut);

    // Scenario: Sign in with unknown credentials
    testWidgets('Sign in with unknown credentials', (tester) async {
      await loadAuthenticator(tester: tester);
      SignInPage signInPage = SignInPage(tester: tester);
      signInPage.expectUsername();

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          emitsDone,
        ]),
      );

      // When I type my "username" with status "UNKNOWN"
      await signInPage.enterUsername('UNKNOWN');

      // And I type my password
      await signInPage.enterPassword('UNKNOWN');

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      signInPage.expectUserNotFound();

      await tester.bloc.close();
    });

    // Scenario: Sign in with confirmed credentials
    testWidgets('Sign in with confirmed credentials', (tester) async {
      final username = generateUsername();
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
      signInPage.expectUsername();

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          isA<AuthenticatedState>(),
          emitsDone,
        ]),
      );

      // When I type my "username"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      /// Then I see "Sign out"
      await signInPage.expectAuthenticated();

      await tester.bloc.close();
    });

    // Scenario: Sign in with confirmed credentials then sign out
    testWidgets('Sign in with confirmed credentials then sign out',
        (tester) async {
      final username = generateUsername();
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
      signInPage.expectUsername();

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          isA<AuthenticatedState>(),
          UnauthenticatedState.signIn,
          emitsDone,
        ]),
      );

      // When I type my "username" with status "UNKNOWN"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      /// Then I see "Sign out"
      await signInPage.expectAuthenticated();

      // And I click the "Sign out" button
      await signInPage.submitSignOut();

      // Then I see "Sign in"
      signInPage.expectUsername();

      await tester.bloc.close();
    });

    // Scenario: Sign in with force change password credentials
    testWidgets('Sign in with force change password credentials',
        (tester) async {
      final username = generateUsername();
      final password = generatePassword();
      final cognitoUsername = await adminCreateUser(username, password);
      addTearDown(() => deleteUser(cognitoUsername));

      await loadAuthenticator(tester: tester);
      SignInPage signInPage = SignInPage(tester: tester);
      ConfirmSignInPage confirmSignInPage = ConfirmSignInPage(tester: tester);
      signInPage.expectUsername();

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          UnauthenticatedState.confirmSignInNewPassword,
          emitsDone,
        ]),
      );

      // When I type my "username"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      /// Then I see "Change Password"
      await confirmSignInPage.expectConfirmSignInNewPasswordIsPresent();
      confirmSignInPage.expectNewPasswordIsPresent();

      await tester.bloc.close();
    });

    testWidgets(
        'Sign in with confirmed credentials after a failed attempt with bad credentials',
        (tester) async {
      final username = generateUsername();
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
      signInPage.expectUsername();

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          isA<AuthenticatedState>(),
          emitsDone,
        ]),
      );

      // When I type my "username"
      await signInPage.enterUsername('bad_username');

      // And I type my bad password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      /// Then I see UserNotFound exception banner
      signInPage.expectUserNotFound();

      // Then I type the correct username
      await signInPage.enterUsername(username);

      // Then I type the correct password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // Then I am signed in
      await signInPage.expectAuthenticated();

      await tester.bloc.close();
    });
  });
}
