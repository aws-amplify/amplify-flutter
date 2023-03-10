// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'utils/mock_data.dart';
import 'utils/test_utils.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
  binding.deferFirstFrame();

  group('confirm-sign-up', () {
    // Given I'm running the example with an "Email or Phone" config
    setUpAll(() async {
      await loadConfiguration(
        environmentName: 'sign-in-with-email-or-phone',
        additionalConfigs: [AmplifyAPI()],
      );
    });

    setUp(signOut);

    tearDown(Amplify.Auth.deleteUser);

    // Scenario: Sign up & confirm account with email as username
    testWidgets(
      'Sign up & confirm account with email as username',
      (tester) async {
        final signUpPage = SignUpPage(tester: tester);
        final confirmSignUpPage = ConfirmSignUpPage(tester: tester);
        final signInPage = SignInPage(tester: tester);

        await loadAuthenticator(tester: tester);

        expect(
          tester.bloc.stream,
          emitsInOrder([
            UnauthenticatedState.signIn,
            UnauthenticatedState.signUp,
            UnauthenticatedState.confirmSignUp,
            isA<AuthenticatedState>(),
            emitsDone,
          ]),
        );

        final email = generateEmail();
        final phoneNumber = generateUSPhoneNumber();
        final password = generatePassword();

        final otpResult = await getOtpCode(UserAttribute.email(email));

        await signInPage.navigateToSignUp();

        // When I select email as a username
        await signUpPage.selectEmail();

        // And I type my email address as a username
        await signUpPage.enterUsername(email);

        // And I type my password
        await signUpPage.enterPassword(password);

        // And I confirm my password
        await signUpPage.enterPasswordConfirmation(password);

        // And I enter my phone number
        await signUpPage.enterPhoneNumber(phoneNumber.withOutCountryCode());

        // And I click the "Create Account" button
        await signUpPage.submitSignUp();

        // And I see "Confirmation Code"
        confirmSignUpPage.expectConfirmationCodeIsPresent();

        // And I type a valid confirmation code
        await confirmSignUpPage.enterCode(await otpResult.code);

        // And I click the "Confirm" button
        await confirmSignUpPage.submitConfirmSignUp();

        // Then I see "Sign out"
        await signInPage.expectAuthenticated();

        await tester.bloc.close();
      },
    );

    testWidgets(
      'Sign up & confirm account with phone number as username',
      (tester) async {
        final signUpPage = SignUpPage(tester: tester);
        final confirmSignUpPage = ConfirmSignUpPage(tester: tester);
        final signInPage = SignInPage(tester: tester);

        await loadAuthenticator(tester: tester);

        expect(
          tester.bloc.stream,
          emitsInOrder([
            UnauthenticatedState.signIn,
            UnauthenticatedState.signUp,
            UnauthenticatedState.confirmSignUp,
            isA<AuthenticatedState>(),
            emitsDone,
          ]),
        );

        final email = generateEmail();
        final phoneNumber = generateUSPhoneNumber();
        final password = generatePassword();

        final otpResult = await getOtpCode(UserAttribute.email(email));

        await signInPage.navigateToSignUp();

        // When I select phone number as a username
        await signUpPage.selectPhone();

        // And I type my phone number as a username
        await signUpPage.enterUsername(phoneNumber.withOutCountryCode());

        // And I type my password
        await signUpPage.enterPassword(password);

        // And I confirm my password
        await signUpPage.enterPasswordConfirmation(password);

        // And I enter my email address
        await signUpPage.enterEmail(email);

        // And I click the "Create Account" button
        await signUpPage.submitSignUp();

        // And I see "Confirmation Code"
        confirmSignUpPage.expectConfirmationCodeIsPresent();

        // And I type a valid confirmation code
        await confirmSignUpPage.enterCode(await otpResult.code);

        // And I click the "Confirm" button
        await confirmSignUpPage.submitConfirmSignUp();

        // Then I see "Sign out"
        await signInPage.expectAuthenticated();

        await tester.bloc.close();
      },
    );
  });
}
