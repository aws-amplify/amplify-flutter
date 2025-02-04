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
    testRunner.withEnvironment(mfaRequiredUsernameLogin, (env) {
      // Scenario: Select EMAIL MFA to set up from the setup selection page
      testWidgets('can select EMAIL MFA to set up', (tester) async {
        final username = env.generateUsername();
        final password = generatePassword();
        final email = generateEmail();

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: false,
          autoFillAttributes: false,
        );

        await loadAuthenticator(tester: tester);

        expect(
          tester.bloc.stream,
          emitsInOrder([
            UnauthenticatedState.signIn,
            isA<ContinueSignInWithMfaSetupSelection>(),
            UnauthenticatedState.continueSignInWithEmailMfaSetup,
            UnauthenticatedState.confirmSignInWithOtpCode,
            isA<AuthenticatedState>(),
            emitsDone,
          ]),
        );

        final signInPage = SignInPage(tester: tester);
        final confirmSignInPage = ConfirmSignInPage(tester: tester);
        final emailMfaSetupPage = EmailMfaSetupPage(tester: tester);

        final otpResult = await getOtpCode(UserAttribute.email(email));

        // When I type my "username"
        await signInPage.enterUsername(username);

        // And I type my password
        await signInPage.enterPassword(password);

        // And I click the "Sign in" button
        await signInPage.submitSignIn();

        // Then I will be redirected to the MFA setup selection page
        await confirmSignInPage
            .expectContinueSignInWithMfaSetupSelectionIsPresent();

        // When I select "EMAIL"
        await confirmSignInPage.selectMfaSetupMethod(mfaMethod: MfaType.email);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignInMfaSetupSelection();

        // Then I will be redirected to the EMAIL MFA setup page
        await emailMfaSetupPage.expectEmailMfaSetupIsPresent();

        // When I type a valid email
        await emailMfaSetupPage.enterEmail(email);

        // And I click the "Confirm" button
        await emailMfaSetupPage.submitEmail();

        // When I type a valid confirmation code
        await confirmSignInPage.enterVerificationCode(await otpResult.code);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignIn();

        // Then I see the authenticated app
        await signInPage.expectAuthenticated();

        await tester.bloc.close();
      });

      // Scenario: Select TOTP MFA to set up from the setup selection page
      testWidgets('can select TOTP MFA to set up', (tester) async {
        final username = env.generateUsername();
        final password = generatePassword();
        late String sharedSecret;

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: false,
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
            isA<ContinueSignInWithMfaSetupSelection>(),
            isA<ContinueSignInTotpSetup>(),
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

        // Then I will be redirected to the MFA setup selection page
        await confirmSignInPage
            .expectContinueSignInWithMfaSetupSelectionIsPresent();

        // When I select "TOTP"
        await confirmSignInPage.selectMfaSetupMethod(mfaMethod: MfaType.totp);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignInMfaSetupSelection();

        // Then I will be redirected to the TOTP MFA setup page
        await confirmSignInPage.expectSignInTotpSetupIsPresent();

        final totpCode = await generateTotpCode(sharedSecret);

        // When I type a valid TOTP code
        await confirmSignInPage.enterVerificationCode(totpCode);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignIn();

        // Then I see the authenticated app
        await signInPage.expectAuthenticated();

        await tester.bloc.close();
      });

      // Scenario: Sign in using an invalid TOTP code
      testWidgets('sign in with invalid TOTP code', (tester) async {
        final username = env.generateUsername();
        final password = generatePassword();
        late String sharedSecret;

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: false,
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
            isA<ContinueSignInWithMfaSetupSelection>(),
            isA<ContinueSignInTotpSetup>(),
            isA<AuthenticatedState>(),
            UnauthenticatedState.signIn,
            UnauthenticatedState.confirmSignInWithTotpMfaCode,
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

        // Then I will be redirected to the MFA setup selection page
        await confirmSignInPage
            .expectContinueSignInWithMfaSetupSelectionIsPresent();

        // When I select "TOTP"
        await confirmSignInPage.selectMfaSetupMethod(mfaMethod: MfaType.totp);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignInMfaSetupSelection();

        // Then I will be redirected to the TOTP MFA setup page
        await confirmSignInPage.expectSignInTotpSetupIsPresent();

        final totpCode = await generateTotpCode(sharedSecret);

        // When I type a valid TOTP code
        await confirmSignInPage.enterVerificationCode(totpCode);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignIn();

        // Then I see the authenticated app
        await signInPage.expectAuthenticated();

        // Sign out to test invalid TOTP code during sign-in
        await Amplify.Auth.signOut();
        await tester.pumpAndSettle();

        // When I attempt to sign in again
        await signInPage.enterUsername(username);
        await signInPage.enterPassword(password);
        await signInPage.submitSignIn();

        // Then I will be redirected to the TOTP MFA code page
        await confirmSignInPage.expectConfirmSignInWithTotpMfaCodeIsPresent();

        // When I type an invalid TOTP code
        await confirmSignInPage.enterVerificationCode('000000');

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignIn();

        // Then I see "Invalid code" error message
        confirmSignInPage.expectInvalidVerificationCode();

        await tester.bloc.close();
      });
    });
  });
}
