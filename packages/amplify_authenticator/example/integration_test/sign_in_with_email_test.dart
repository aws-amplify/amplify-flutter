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
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-in-with-email.feature

import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'pages/confirm_sign_in_page.dart';
import 'pages/confirm_sign_up_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/test_utils.dart';
import 'utils/data_utils.dart';
import 'utils/mock_data.dart';
import 'utils/types/confirmation_code_response.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
      as IntegrationTestWidgetsFlutterBinding;
  // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
  binding.deferFirstFrame();

  final authenticator = MaterialApp(
    home: Authenticator(
      child: const SignOutButton(),
    ),
  );

  group('sign-in-with-email', () {
    // Given I'm running the example "ui/components/authenticator/sign-in-with-email.feature"
    setUpAll(() async {
      await loadConfiguration(
        'ui/components/authenticator/sign-in-with-email',
        additionalConfigs: [AmplifyAPI()],
      );
    });

    tearDownAll(() async {
      await Amplify.Auth.signOut();
    });

    // Scenario: Sign in with unknown credentials
    testWidgets('Sign in with unknown credentials', (tester) async {
      final username = generateEmail();
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      signInPage.expectUserNameIsPresent(usernameLabel: 'Email');

      // When I type my "email" with status "UNKNOWN"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword('UNKNOWN');

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      // Then I see "User does not exist"
      await signInPage.expectUserNotFound();
    });

    // Scenario: Sign in with unconfirmed credentials
    testWidgets('Sign in with unconfirmed credentials', (tester) async {
      final email = generateEmail();
      final password = generatePassword();
      late String code = '';

      Completer codeCompleter = Completer<ConfirmationCodeTestRun>();

      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      ConfirmSignUpPage confirmSignUpPage = ConfirmSignUpPage(tester: tester);

      String subscriptionDocument = '''subscription MyMutation {
          onCreateConfirmSignUpTestRun {
            id
          }
        }''';

      String queryDocument = '''query GetCode(\$id: ID!) {
        getConfirmSignUpTestRun(id: \$id) {
          id
          currentCode
        }
      }''';

      final Stream<GraphQLResponse<String>> operation = Amplify.API.subscribe(
        GraphQLRequest<String>(document: subscriptionDocument),
        onEstablished: () {},
      );

      // TODO: Relable way to wait for subscription
      await Future.delayed(const Duration(seconds: 2), () {});

      operation.listen((event) async {
        Map<dynamic, dynamic> parsedMap = jsonDecode(event.data);
        String codeId = parsedMap['onCreateConfirmSignUpTestRun']['id'];
        var codeQuery = Amplify.API.query(
            request: GraphQLRequest<String>(
          document: queryDocument,
          variables: <String, String>{'id': codeId},
        ));

        var response = await codeQuery.response;

        ConfirmationCodeTestRun result =
            ConfirmationCodeTestRun.fromJson(response.data);

        code = result.code!;
        codeCompleter.complete(result);
      });

      // Use the standard Amplify API to create the user in the Unconfirmed state
      await Amplify.Auth.signUp(
        username: email,
        password: password,
        options: CognitoSignUpOptions(
            userAttributes: {CognitoUserAttributeKey.email: email}),
      );

      signInPage.expectUserNameIsPresent(usernameLabel: 'Email');

      // When I type my "username" with status "unconfirmed"
      await signInPage.enterUsername(email);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      await codeCompleter.future;

      // Then I see "Confirmation Code"
      confirmSignUpPage.expectConfirmationCodeIsPresent();

      /// And I type a valid confirmation code
      await confirmSignUpPage.enterCode(code.trim());

      // And I click the "Confirm" button
      await confirmSignUpPage.submitConfirmSignUp();

      // Then I see "Sign out"
      confirmSignUpPage.expectAuthenticated();
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
      );
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      signInPage.expectUserNameIsPresent(usernameLabel: 'Email');

      // When I type my "email" with status "CONFIRMED"
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
    testWidgets('Sign in with confirmed credentials then sign out',
        (tester) async {
      final username = generateEmail();
      final password = generatePassword();
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      signInPage.expectUserNameIsPresent(usernameLabel: 'Email');

      // When I type my "email" with status "CONFIRMED"
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
      signInPage.expectUserNameIsPresent(usernameLabel: 'Email');
    });

    // Scenario: Sign in with force change password credentials
    testWidgets('Sign in with force change password credentials',
        (tester) async {
      final username = generateEmail();
      final password = generatePassword();
      await adminCreateUser(username, password);
      await loadAuthenticator(tester: tester, authenticator: authenticator);
      SignInPage signInPage = SignInPage(tester: tester);
      ConfirmSignInPage confirmSignInPage = ConfirmSignInPage(tester: tester);
      signInPage.expectUserNameIsPresent(usernameLabel: 'Email');

      // When I type my "username"
      await signInPage.enterUsername(username);

      // And I type my password
      await signInPage.enterPassword(password);

      // And I click the "Sign in" button
      await signInPage.submitSignIn();

      /// Then I see "Change Password"
      await confirmSignInPage.expectConfirmSignInNewPasswordIsPresent();
      confirmSignInPage.expectNewPasswordIsPresent();
    });
  });
}
