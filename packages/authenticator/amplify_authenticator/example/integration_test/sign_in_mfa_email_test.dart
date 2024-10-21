// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/test_utils.dart';

void main() {
  testRunner.setupTests();

  group('sign-in-email-mfa', () {
    testRunner.withEnvironment(mfaRequiredEmail, (env) {
      // Scenario: Sign in using a totp code
      testWidgets('Setup & Sign in with EMAIL MFA', (tester) async {
        final username = env.generateUsername();
        final password = generatePassword();

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          attributes: {
            AuthUserAttributeKey.email: username,
          },
          autoFillAttributes: false,
        );

        await loadAuthenticator(tester: tester);

        expect(
          tester.bloc.stream,
          emitsInOrder([
            UnauthenticatedState.signIn,
            UnauthenticatedState.confirmSignInWithEmailMfaCode,
            isA<AuthenticatedState>(),
            UnauthenticatedState.signIn,
            UnauthenticatedState.confirmSignInWithEmailMfaCode,
            isA<AuthenticatedState>(),
            emitsDone,
          ]),
        );

        final signInPage = SignInPage(tester: tester);
        final confirmSignInPage = ConfirmSignInPage(tester: tester);

        // When I type my "username"
        await signInPage.enterUsername(username);

        // And I type my password
        await signInPage.enterPassword(password);

        // And I click the "Sign in" button
        await signInPage.submitSignIn();

        // Then I will be redirected to the totp setup page
        await confirmSignInPage.expectConfirmSignInWithEmailMfaCodeIsPresent();

        final otpResult = await getOtpCode(
          env.getLoginAttribute(username),
        );
        // And I type a valid EMAIL OTP code
        await confirmSignInPage.enterVerificationCode(await otpResult.code);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignIn();

        // Then I see the authenticated app
        await signInPage.expectAuthenticated();

        /// Sign out and login again with EMAIL OTP code
        /// validates [AuthenticatorStep.confirmSignInWithEmailMfaCode]

        // When I sign out using Auth.signOut()
        await Amplify.Auth.signOut();
        await tester.pumpAndSettle();

        // Then I see the sign in page
        signInPage.expectUsername(label: 'Email');

        // When I type my "username"
        await signInPage.enterUsername(username);

        // And I type my password
        await signInPage.enterPassword(password);

        // And I click the "Sign in" button
        await signInPage.submitSignIn();

        // Then I will be redirected to the EMAIL OTP code page
        await confirmSignInPage.expectConfirmSignInWithEmailMfaCodeIsPresent();

        final otpResult2 = await getOtpCode(
          env.getLoginAttribute(username),
        );

        // When I type a valid EMAIL OTP code
        await confirmSignInPage.enterVerificationCode(await otpResult2.code);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignIn();

        // Then I see the authenticated app
        await signInPage.expectAuthenticated();

        await tester.bloc.close();
      });
    });
  });
}
