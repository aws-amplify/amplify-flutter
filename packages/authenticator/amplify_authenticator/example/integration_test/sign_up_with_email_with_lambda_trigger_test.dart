// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/test_utils.dart';

// This test follows the Amplify UI feature "sign-up-with-email-with-lambda-trigger"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-up-with-email-with-lambda-trigger.feature

void main() {
  testRunner.setupTests();

  group(
    'Sign Up with Email with Pre Sign Up Lambda Trigger for Auto Confirmation',
    () {
      // Background
      setUp(() async {
        // Given I'm running the example
        // "ui/components/authenticator/sign-up-with-email-lambda"
        await testRunner.configure(
          environmentName: 'sign-in-with-email-lambda-trigger',
        );
      });

      // Scenario: Login mechanism set to "email"
      testWidgets(
        'Login mechanism set to "email"',
        (WidgetTester tester) async {
          await loadAuthenticator(tester: tester);

          expect(
            tester.bloc.stream,
            emitsInOrder([
              UnauthenticatedState.signIn,
              UnauthenticatedState.signUp,
              emitsDone,
            ]),
          );

          await SignInPage(tester: tester).navigateToSignUp();
          final po = SignUpPage(tester: tester);

          // Then I see "Email" as an input field
          po.expectUsername(label: 'Email', isPresent: true);

          // And I don't see "Username" as an input field
          po.expectUsername(label: 'Username', isPresent: false);

          // And I don't see "Phone Number" as an input field
          po.expectUsername(label: 'Phone Number', isPresent: false);

          await tester.bloc.close();
        },
      );

      // Scenario: Sign up with a new email & password with confirmed info
      testWidgets(
        'Sign up with a new email & password with confirmed info',
        (WidgetTester tester) async {
          await loadAuthenticator(tester: tester);

          expect(
            tester.bloc.stream,
            emitsInOrder([
              UnauthenticatedState.signIn,
              UnauthenticatedState.signUp,
              isA<AuthenticatedState>(),
              emitsDone,
            ]),
          );

          await SignInPage(tester: tester).navigateToSignUp();
          final po = SignUpPage(tester: tester);

          final username = generateEmail();
          final password = generatePassword();

          // When I type a new "email"
          await po.enterUsername(username);

          // And I type my password
          await po.enterPassword(password);

          // And I confirm my password
          await po.enterPasswordConfirmation(password);

          // And I click the "Create Account" button
          await po.submitSignUp();

          // Then I see "Sign out"
          await po.expectAuthenticated();

          await tester.bloc.close();
        },
      );
    },
  );
}
