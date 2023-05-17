// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// This test follows the Amplify UI feature "sign-in-with-username"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-up-with-username.feature

import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/test_utils.dart';

void main() {
  testRunner.setupTests();

  group('sign-in-with-phone', () {
    late PhoneNumber phoneNumber;
    late String password;

    // Given I'm running the example "ui/components/authenticator/sign-in-with-phone.feature"
    setUp(() async {
      await testRunner.configure(
        environmentName: 'sign-in-with-phone',
      );
      phoneNumber = generateUSPhoneNumber();
      password = generatePassword();
    });

    // Scenario: Sign in with unknown credentials
    testWidgets('Sign in with unknown credentials', (tester) async {
      final phoneNumber = generateUSPhoneNumber();
      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          emitsDone,
        ]),
      );

      final signInPage = SignInPage(tester: tester);

      // When I select my country code
      await signInPage.selectCountryCode();

      // And I type my "phone number" with status "UNKNOWN"
      await signInPage.enterUsername(phoneNumber.withOutCountryCode());

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

      // Use the standard Amplify API to create the user in the Unconfirmed state
      await Amplify.Auth.signUp(
        username: phoneNumber.toE164(),
        password: password,
        options: SignUpOptions(
          userAttributes: {
            AuthUserAttributeKey.email: email,
          },
        ),
      );

      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          UnauthenticatedState.confirmSignUp,
          emitsDone,
        ]),
      );

      final signInPage = SignInPage(tester: tester);
      final confirmSignUpPage = ConfirmSignUpPage(tester: tester);

      signInPage.expectUsername(label: 'Phone Number');

      // When I select my country code
      await signInPage.selectCountryCode();

      // When I type my "username" with status "unconfirmed"
      await signInPage.enterUsername(phoneNumber.withOutCountryCode());

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // Then I see "Confirmation Code"
      confirmSignUpPage.expectConfirmationCodeIsPresent();

      await tester.bloc.close();
    });

    // Scenario: Sign in with confirmed credentials then sign out
    testWidgets('Sign in with confirmed credentials then sign out',
        (tester) async {
      await adminCreateUser(
        phoneNumber.toE164(),
        password,
        autoConfirm: true,
        verifyAttributes: true,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.phoneNumber,
            value: phoneNumber.toE164(),
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
      signInPage.expectUsername(label: 'Phone Number');

      // When I type my "username" with status "UNKNOWN"
      await signInPage.enterUsername(phoneNumber.withOutCountryCode());

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      /// Then I see "Sign out"
      await signInPage.expectAuthenticated();

      // And I click the "Sign out" button
      await signInPage.submitSignOut();

      // Then I see "Sign in"
      signInPage.expectUsername(label: 'Phone Number');

      await tester.bloc.close();
    });

    // Scenario: Sign in with force change password credentials
    testWidgets('Sign in with force change password credentials',
        (tester) async {
      await adminCreateUser(
        phoneNumber.toE164(),
        password,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.phoneNumber,
            value: phoneNumber.toE164(),
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
      signInPage.expectUsername(label: 'Phone Number');

      // When I type my "username"
      await signInPage.enterUsername(phoneNumber.withOutCountryCode());

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
