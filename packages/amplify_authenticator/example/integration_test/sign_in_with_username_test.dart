/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

// This test follows the Amplify UI feature "sign-in-with-username"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-up-with-username.feature

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'pages/sign_in_page.dart';
import 'pages/test_utils.dart';
import 'utils/mock_data.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
      as IntegrationTestWidgetsFlutterBinding;
  // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
  binding.deferFirstFrame();

  final authenticator = MaterialApp(
    home: Authenticator(
        child: const SignOutButton(
      key: Key('keySignOutButton'),
    )),
  );

  group('sign-in-with-username', () {
    // Given I'm running the example "ui/components/authenticator/sign-in-with-username.feature"
    setUpAll(() async {
      await loadConfiguration(
        'ui/components/authenticator/sign-in-with-username',
      );
    });

    // Scenario: Sign in with unknown credentials
    testWidgets('Sign in with unknown credentials', (tester) async {
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      signInPage.expectUserNameIsPresent();

      // When I type my "username" with status "UNKNOWN"
      await signInPage.enterUsername('UNKNOWN');

      // And I type my password
      await signInPage.enterPassword('UNKNOWN');

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      await signInPage.expectUserNotFound();
    });

    // Scenario: Sign in with confirmed credentials
    testWidgets('Sign in with confirmed credentials', (tester) async {
      final username = generateUsername();
      final password = generatePassword();
      await createConfirmedUser(username, password, userAttributes: {
        CognitoUserAttributeKey.preferredUsername: 'displayName'
      });
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      signInPage.expectUserNameIsPresent();

      // When I type my "username" with status "UNKNOWN"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      /// Then I see "Sign out"
      signInPage.expectAuthenticated();

      await signInPage.submitSignOut();
    });

    // Scenario: Sign in with confirmed credentials then sign out
    testWidgets('Sign in with confirmed credentials', (tester) async {
      final username = generateUsername();
      final password = generatePassword();
      await createConfirmedUser(username, password, userAttributes: {
        CognitoUserAttributeKey.preferredUsername: 'displayName'
      });
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      signInPage.expectUserNameIsPresent();

      // When I type my "username" with status "UNKNOWN"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      /// Then I see "Sign out"
      signInPage.expectAuthenticated();

      // And I click the "Sign out" button
      await signInPage.submitSignOut();

      // Then I see "Sign in"
      signInPage.expectUserNameIsPresent();
    });

    // Scenario: "Preferred Username" is included from `aws_cognito_signup_attributes`
    // testWidgets(
    //     '"Preferred Username" is included from aws_cognito_signup_attributes',
    //     (tester) async {
    //   SignUpPage signUpPage = SignUpPage(tester: tester);
    //   SignInPage signInPage = SignInPage(tester: tester);
    //   await loadAuthenticator(tester: tester, authenticator: authenticator);
    //   await signInPage.navigateToSignUp();
    //   signUpPage.expectPreferredUserNameIsPresent();
    // });

    // Scenario: "Email" is included from `aws_cognito_verification_mechanisms`
    // testWidgets('"Email" is included from aws_cognito_verification_mechanisms',
    //     (tester) async {
    //   SignUpPage signUpPage = SignUpPage(tester: tester);
    //   SignInPage signInPage = SignInPage(tester: tester);
    //   await loadAuthenticator(tester: tester, authenticator: authenticator);
    //   await signInPage.navigateToSignUp();
    //   signUpPage.expectEmailIsPresent();
    // });

    // // Scenario: "Phone Number" is not included
    // testWidgets('"Phone Number" is not included', (tester) async {
    //   SignUpPage signUpPage = SignUpPage(tester: tester);
    //   SignInPage signInPage = SignInPage(tester: tester);
    //   await loadAuthenticator(tester: tester, authenticator: authenticator);
    //   await signInPage.navigateToSignUp();
    //   signUpPage.expectPhoneIsNotPresent();
    // });

    // Scenario: Sign up a new username & password
    // testWidgets('Sign up a new username & password', (tester) async {
    //   SignUpPage signUpPage = SignUpPage(tester: tester);
    //   SignInPage signInPage = SignInPage(tester: tester);
    //   ConfirmSignUpPage confirmSignUpPage = ConfirmSignUpPage(tester: tester);

    //   await loadAuthenticator(tester: tester, authenticator: authenticator);
    //   await signInPage.navigateToSignUp();

    // TODO: Clarify requirements
    // Given I intercept '{ "headers": { "X-Amz-Target": "AWSCognitoIdentityProviderService.SignUp" } }'
    // with fixture "sign-up-with-username"

    //   final username = generateUsername();
    //   final password = generatePassword();
    //   final email = generateEmail();

    //   await signUpPage.enterUsername(username);
    //   await signUpPage.enterPassword(password);
    //   await signUpPage.enterPasswordConfirmation(password);
    //   await signUpPage.enterEmail(email);
    //   await signUpPage.enterPreferredUsername(username);
    //   await signUpPage.submitSignUp();

    //   await confirmSignUpPage.expectConfirmSignUpIsPresent();
    //   confirmSignUpPage.expectConfirmationCodeIsPresent();
    // });
  });
}
