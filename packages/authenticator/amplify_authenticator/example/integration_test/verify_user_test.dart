// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/test_utils.dart';

void main() {
  testRunner.setupTests();

  group('verify-user', () {
    // Given I'm running the example "ui/components/authenticator/verify-user"
    setUp(() async {
      await testRunner.configure(
        environmentName: 'sign-in-with-email',
      );
    });

    // Scenario: Redirect to "Verify" page
    testWidgets('Redirect to "Verify" page', (tester) async {
      final signInPage = SignInPage(tester: tester);
      final verifyUserPage = VerifyUserPage(tester: tester);
      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          isA<VerifyUserFlow>(),
          emitsDone,
        ]),
      );

      final username = generateEmail();
      final password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.email,
            value: username,
          ),
        ],
      );

      // When I type my "email" with status "UNVERIFIED"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // Then I see "Account recovery requires verified contact information"
      verifyUserPage.expectTitleIsVisible();

      await tester.bloc.close();
    });

    // Scenario: Skip verify account
    testWidgets('Skip verify account', (tester) async {
      final signInPage = SignInPage(tester: tester);
      final verifyUserPage = VerifyUserPage(tester: tester);
      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          isA<VerifyUserFlow>().having(
            (state) => state.unverifiedAttributeKeys,
            'unverifiedAttributeKeys',
            unorderedEquals([
              AuthUserAttributeKey.email,
              AuthUserAttributeKey.phoneNumber,
            ]),
          ),
          isA<AuthenticatedState>(),
          emitsDone,
        ]),
      );

      final username = generateEmail();
      final password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.email,
            value: username,
          ),
        ],
      );

      // When I type my "email" with status "UNVERIFIED"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // And I click the "Skip" button
      await verifyUserPage.tapSkipButton();

      // Then I see "Sign out"
      await signInPage.expectAuthenticated();

      await tester.bloc.close();
    });

    // Scenario: Redirect to "Confirm Verify" page
    testWidgets('Redirect to "Confirm Verify" page', (tester) async {
      final signInPage = SignInPage(tester: tester);
      final verifyUserPage = VerifyUserPage(tester: tester);
      final confirmVerifyUserPage = ConfirmVerifyUserPage(
        tester: tester,
      );
      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          isA<VerifyUserFlow>().having(
            (state) => state.unverifiedAttributeKeys,
            'unverifiedAttributeKeys',
            unorderedEquals([
              AuthUserAttributeKey.email,
              AuthUserAttributeKey.phoneNumber,
            ]),
          ),
          isA<AttributeVerificationSent>().having(
            (state) => state.userAttributeKey,
            'userAttributeKey',
            AuthUserAttributeKey.email,
          ),
          isA<AuthenticatedState>(),
          emitsDone,
        ]),
      );

      final username = generateEmail();
      final password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.email,
            value: username,
          ),
        ],
      );

      // When I type my "email" with status "UNVERIFIED"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      final code = await getOtpCode(UserAttribute.email(username));

      // And I see "Account recovery requires verified contact information"
      verifyUserPage.expectTitleIsVisible();

      // And I click the "Email" radio button
      await verifyUserPage.selectAttribute('Email');

      // And I click the "Verify" button
      await verifyUserPage.tapVerifyButton();

      // Then I see "Code"
      confirmVerifyUserPage.expectCodeFieldIsPresent();

      await confirmVerifyUserPage.enterCode(await code.code);

      await confirmVerifyUserPage.submitConfirmationCode();

      confirmVerifyUserPage.expectNoError();

      await confirmVerifyUserPage.expectAuthenticated();

      await tester.bloc.close();
    });

    testWidgets('Can confirm phone number attribute', (tester) async {
      final signInPage = SignInPage(tester: tester);
      final verifyUserPage = VerifyUserPage(tester: tester);
      final confirmVerifyUserPage = ConfirmVerifyUserPage(
        tester: tester,
      );
      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          isA<VerifyUserFlow>().having(
            (state) => state.unverifiedAttributeKeys,
            'unverifiedAttributeKeys',
            unorderedEquals([
              AuthUserAttributeKey.email,
              AuthUserAttributeKey.phoneNumber,
            ]),
          ),
          isA<AttributeVerificationSent>().having(
            (state) => state.userAttributeKey,
            'userAttributeKey',
            AuthUserAttributeKey.phoneNumber,
          ),
          isA<AuthenticatedState>(),
          emitsDone,
        ]),
      );

      final username = generateEmail();
      final phoneNumber = generateUSPhoneNumber();
      final password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.email,
            value: username,
          ),
          AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.phoneNumber,
            value: phoneNumber.toE164(),
          ),
        ],
      );

      // When I type my "email" with status "UNVERIFIED"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      final code = await getOtpCode(
        UserAttribute.phone(phoneNumber.toE164()),
      );

      // And I see "Account recovery requires verified contact information"
      verifyUserPage.expectTitleIsVisible();

      // And I click the "Email" radio button
      await verifyUserPage.selectAttribute('Phone Number');

      // And I click the "Verify" button
      await verifyUserPage.tapVerifyButton();

      // Then I see "Code"
      confirmVerifyUserPage.expectCodeFieldIsPresent();

      await confirmVerifyUserPage.enterCode(await code.code);

      await confirmVerifyUserPage.submitConfirmationCode();

      confirmVerifyUserPage.expectNoError();

      await confirmVerifyUserPage.expectAuthenticated();

      await tester.bloc.close();
    });

    testWidgets('Auth.signIn does not redirect to "Verify" page',
        (tester) async {
      final signInPage = SignInPage(tester: tester);
      await loadAuthenticator(tester: tester);

      expect(
        tester.bloc.stream,
        emitsInOrder([
          UnauthenticatedState.signIn,
          isA<AuthenticatedState>(),
          emitsDone,
        ]),
      );

      final username = generateEmail();
      final password = generatePassword();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: AuthUserAttributeKey.email,
            value: username,
          ),
        ],
      );

      // When I sign in with username and password.
      await Amplify.Auth.signIn(username: username, password: password);

      await tester.pumpAndSettle();

      // Then I see "Sign out"
      await signInPage.expectAuthenticated();

      await tester.bloc.close();
    });
  });
}
