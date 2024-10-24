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

  group('sign-in-email-totp-mfa', () {
    testRunner.withEnvironment(mfaRequiredEmailTotp, (env) {
      // Scenario: Sign in using a totp code when both EMAIL and TOTP are enabled
      testWidgets('can select TOTP MFA', (tester) async {
        final username = env.generateUsername();
        final password = generatePassword();

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: false,
          attributes: {
            AuthUserAttributeKey.email: username,
          },
        );

        await loadAuthenticator(tester: tester);

        expect(
          tester.bloc.stream,
          emitsInOrder([
            UnauthenticatedState.signIn,
            UnauthenticatedState.confirmSignInWithOtpCode,
            isA<AuthenticatedState>(),
            UnauthenticatedState.signIn,
            isA<ContinueSignInWithMfaSelection>(),
            UnauthenticatedState.confirmSignInWithTotpMfaCode,
            isA<AuthenticatedState>(),
            emitsDone,
          ]),
        );

        final signInPage = SignInPage(tester: tester);
        final confirmSignInPage = ConfirmSignInPage(tester: tester);

        final otpResult = await getOtpCode(UserAttribute.email(username));

        // When I type my "username"
        await signInPage.enterUsername(username);

        // And I type my password
        await signInPage.enterPassword(password);

        // And I click the "Sign in" button
        await signInPage.submitSignIn();

        // Then I will be redirected to the confirm email mfa page
        await confirmSignInPage.expectConfirmSignInWithOtpCodeIsPresent();

        // When I type a valid confirmation code
        await confirmSignInPage.enterVerificationCode(await otpResult.code);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignIn();

        // Then I see the authenticated app
        await signInPage.expectAuthenticated();

        // When I enable TOTP for MFA instead of the default set up by cognito (EMAIL)
        await setUpTotp();

        // And I sign out using Auth.signOut()
        await Amplify.Auth.signOut();
        await tester.pumpAndSettle();

        // Then I see the sign in page
        signInPage.expectEmail();

        // When I type my "username"
        await signInPage.enterUsername(username);

        // And I type my password
        await signInPage.enterPassword(password);

        // And I click the "Sign in" button
        await signInPage.submitSignIn();

        // Then I will be redirected to the MFA selection page
        await confirmSignInPage.expectConfirmSignInMfaSelectionIsPresent();

        // When I select "TOTP"
        await confirmSignInPage.selectMfaMethod(mfaMethod: MfaType.totp);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignInMfaSelection();

        // Then I will be redirected to the TOTP MFA code page
        await confirmSignInPage.expectConfirmSignInWithTotpMfaCodeIsPresent();

        final code_2 = await generateTotpCode();

        // When I type a valid TOTP code
        await confirmSignInPage.enterVerificationCode(code_2);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignIn();

        // Then I see the authenticated app
        await signInPage.expectAuthenticated();

        await tester.bloc.close();
      });

      // Scenario: Sign in using a EMAIL code when both EMAIL and TOTP are enabled
      testWidgets('can select EMAIL MFA', (tester) async {
        final username = env.generateUsername();
        final password = generatePassword();

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: false,
          attributes: {
            AuthUserAttributeKey.email: username,
          },
        );

        await loadAuthenticator(tester: tester);

        expect(
          tester.bloc.stream,
          emitsInOrder([
            UnauthenticatedState.signIn,
            UnauthenticatedState.confirmSignInWithOtpCode,
            isA<AuthenticatedState>(),
            UnauthenticatedState.signIn,
            isA<ContinueSignInWithMfaSelection>(),
            UnauthenticatedState.confirmSignInWithOtpCode,
            isA<AuthenticatedState>(),
            emitsDone,
          ]),
        );

        final signInPage = SignInPage(tester: tester);
        final confirmSignInPage = ConfirmSignInPage(tester: tester);

        final otpResult = await getOtpCode(UserAttribute.email(username));

        // When I type my "username"
        await signInPage.enterUsername(username);

        // And I type my password
        await signInPage.enterPassword(password);

        // And I click the "Sign in" button
        await signInPage.submitSignIn();

        // Then I will be redirected to the confirm email mfa page
        await confirmSignInPage.expectConfirmSignInWithOtpCodeIsPresent();

        // When I type a valid confirmation code
        await confirmSignInPage.enterVerificationCode(await otpResult.code);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignIn();

        // Then I see the authenticated app
        await signInPage.expectAuthenticated();

        // When I enable TOTP for MFA instead of the default set up by cognito (EMAIL)
        await setUpTotp();

        // And I sign out using Auth.signOut()
        await Amplify.Auth.signOut();
        await tester.pumpAndSettle();

        // Then I see the sign in page
        signInPage.expectEmail();

        // When I type my "username"
        await signInPage.enterUsername(username);

        // And I type my password
        await signInPage.enterPassword(password);

        // And I click the "Sign in" button
        await signInPage.submitSignIn();

        // Then I will be redirected to the MFA selection page
        await confirmSignInPage.expectConfirmSignInMfaSelectionIsPresent();

        final otpResult2 = await getOtpCode(UserAttribute.email(username));

        // When I select "EMAIL"
        await confirmSignInPage.selectMfaMethod(mfaMethod: MfaType.email);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignInMfaSelection();

        // Then I will be redirected to the confirm EMAIL mfa page
        await confirmSignInPage.expectConfirmSignInWithOtpCodeIsPresent();

        // When I type a valid confirmation code
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
