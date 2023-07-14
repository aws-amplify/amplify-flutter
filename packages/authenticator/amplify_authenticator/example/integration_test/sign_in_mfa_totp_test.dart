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

  group('sign-in-totp-mfa', () {
    testRunner.withEnvironment(MfaEnvironment.mfaRequiredTotp, () {
      // Scenario: Sign in using a totp code
      testWidgets('Setup & Sign in with TOTP MFA', (tester) async {
        final username = generateUsername();
        final password = generatePassword();
        late String sharedSecret;

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          autoFillAttributes: false,
        );

        await loadAuthenticator(tester: tester);

        tester.bloc.stream.listen((event) {
          if (event is ContinueSignInTotpSetup) {
            sharedSecret = event.totpSetupDetails.sharedSecret;
          }
        });

        expect(
          tester.bloc.stream,
          emitsInOrder([
            UnauthenticatedState.signIn,
            isA<ContinueSignInTotpSetup>(),
            isA<AuthenticatedState>(),
            UnauthenticatedState.signIn,
            UnauthenticatedState.confirmSignInWithTotpMfaCode,
            isA<AuthenticatedState>(),
            emitsDone,
          ]),
        );

        final signInPage = SignInPage(tester: tester);
        final confirmSignInPage = ConfirmSignInPage(tester: tester);

        signInPage.expectUsername();

        // When I type my "username"
        await signInPage.enterUsername(username);

        // And I type my password
        await signInPage.enterPassword(password);

        // And I click the "Sign in" button
        await signInPage.submitSignIn();

        // Then I will be redirected to the totp setup page
        await confirmSignInPage.expectSignInTotpSetupIsPresent();

        final code_1 = await generateTotpCode(sharedSecret);

        // When I type an valid TOTP code
        await confirmSignInPage.enterVerificationCode(code_1);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignIn();

        // Then I see the authenticated app
        await signInPage.expectAuthenticated();

        /// Sign out and login again with TOTP code
        /// validates [AuthenticatorStep.confirmSignInWithTotpMfaCode]

        // When I sign out using Auth.signOut()
        await Amplify.Auth.signOut();
        await tester.pumpAndSettle();

        // Then I see the sign in page
        signInPage.expectUsername();

        // When I type my "username"
        await signInPage.enterUsername(username);

        // And I type my password
        await signInPage.enterPassword(password);

        // And I click the "Sign in" button
        await signInPage.submitSignIn();

        // Then I will be redirected to the TOTP MFA code page
        await confirmSignInPage.expectConfirmSignInWithTotpMfaCodeIsPresent();

        final code_2 = await generateTotpCode(sharedSecret);

        // Then I type an valid TOTP code
        await confirmSignInPage.enterVerificationCode(code_2);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignIn();

        // Then I see the authenticated app
        await signInPage.expectAuthenticated();

        await tester.bloc.close();
      });
    });
  });
}
