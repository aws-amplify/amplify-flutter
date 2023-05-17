// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// This test follows the Amplify UI feature "sign-in-with-email"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-in-with-email.feature

import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/test_utils.dart';

void main() {
  testRunner.setupTests();

  group('sign-in-with-email', () {
    // Given I'm running the example "ui/components/authenticator/sign-in-with-email.feature"
    setUp(() async {
      await testRunner.configure(
        environmentName: 'sign-in-with-email',
      );
    });

    // Scenario: Sign in with unknown credentials
    testWidgets('Sign in with unknown credentials', (tester) async {
      final username = generateEmail();
      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          emitsDone,
        ]),
      );

      final signInPage = SignInPage(tester: tester);
      signInPage.expectUsername(label: 'Email');

      // When I type my "email" with status "UNKNOWN"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword('UNKNOWN');

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // Then I see "User does not exist"
      signInPage.expectUserNotFound();

      await tester.bloc.close();
    });

    // Scenario: Sign in with unconfirmed credentials
    testWidgets('Sign in with unconfirmed credentials', (tester) async {
      final email = generateEmail();
      final password = generatePassword();

      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          UnauthenticatedState.confirmSignUp,
          isA<AuthenticatedState>(),
          emitsDone,
        ]),
      );

      final signInPage = SignInPage(tester: tester);
      final confirmSignUpPage = ConfirmSignUpPage(tester: tester);

      final otpResult = await getOtpCode(UserAttribute.email(email));

      // Use the standard Amplify API to create the user in the Unconfirmed state
      await Amplify.Auth.signUp(
        username: email,
        password: password,
        options: SignUpOptions(
          userAttributes: {AuthUserAttributeKey.email: email},
        ),
      );

      signInPage.expectUsername(label: 'Email');

      // When I type my "username" with status "unconfirmed"
      await signInPage.enterUsername(email);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // Then I see "Confirmation Code"
      confirmSignUpPage.expectConfirmationCodeIsPresent();

      /// And I type a valid confirmation code
      await confirmSignUpPage.enterCode(await otpResult.code);

      // And I click the "Confirm" button
      await confirmSignUpPage.submitConfirmSignUp();

      // Then I see "Sign out"
      await confirmSignUpPage.expectAuthenticated();

      await tester.bloc.close();
    });

    // Scenario: Sign in with confirmed credentials
    testWidgets('Sign in with confirmed credentials', (tester) async {
      final username = generateEmail();
      final password = generatePassword();
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.email,
            value: username,
          ),
        ],
      );

      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          isA<AuthenticatedState>(),
          emitsDone,
        ]),
      );

      final signInPage = SignInPage(tester: tester);
      signInPage.expectUsername(label: 'Email');

      // When I type my "email" with status "CONFIRMED"
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
      final username = generateEmail();
      final password = generatePassword();
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.email,
            value: username,
          ),
        ],
      );

      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          isA<AuthenticatedState>(),
          UnauthenticatedState.signIn,
          emitsDone,
        ]),
      );

      final signInPage = SignInPage(tester: tester);
      signInPage.expectUsername(label: 'Email');

      // When I type my "email" with status "CONFIRMED"
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
      signInPage.expectUsername(label: 'Email');

      await tester.bloc.close();
    });

    // Scenario: Sign in with force change password credentials
    testWidgets('Sign in with force change password credentials',
        (tester) async {
      final username = generateEmail();
      final password = generatePassword();
      await adminCreateUser(
        username,
        password,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.email,
            value: username,
          ),
        ],
      );

      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          UnauthenticatedState.confirmSignInNewPassword,
          emitsDone,
        ]),
      );

      final signInPage = SignInPage(tester: tester);
      final confirmSignInPage = ConfirmSignInPage(tester: tester);
      signInPage.expectUsername(label: 'Email');

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
  });
}
