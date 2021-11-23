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

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'utils/mock_data.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  final authenticator = MaterialApp(
    home: Authenticator(child: Container()),
  );

  group('sign-in-with-username', () {
    // Given I'm running the example "ui/components/authenticator/sign-up-with-username"
    setUpAll(() async {
      await loadConfiguration(
        'ui/components/authenticator/sign-up-with-username',
      );
    });

    // Scenario: Login mechanism set to "username"
    testWidgets('Login mechanism set to "username"', (tester) async {
      await tester.loadAuthenticator(authenticator);
      await tester.navigateToSignUp();

      // Then I see "Username" as an input field
      expect(
        // Match on the title of the username field since it is dependent on
        // the username alias selected.
        find.descendant(
          of: find.byKey(keyUsernameSignUpFormField),
          matching: find.text('Username'),
        ),
        findsOneWidget,
      );
    });

    // Scenario: "Preferred Username" is included from `aws_cognito_signup_attributes`
    testWidgets(
        '"Preferred Username" is included from `aws_cognito_signup_attributes`',
        (tester) async {
      await tester.loadAuthenticator(authenticator);
      await tester.navigateToSignUp();

      // Then I see "Username" as an input field
      expect(find.byKey(keyPreferredUsernameSignUpFormField), findsOneWidget);
    });

    // Scenario: "Email" is included from `aws_cognito_verification_mechanisms`
    testWidgets(
        '"Email" is included from `aws_cognito_verification_mechanisms`',
        (tester) async {
      await tester.loadAuthenticator(authenticator);
      await tester.navigateToSignUp();

      // Then I see "Email" as an "email" field
      expect(find.byKey(keyEmailSignUpFormField), findsOneWidget);
    });

    // Scenario: "Phone Number" is not included
    testWidgets('"Phone Number" is not included', (tester) async {
      await tester.loadAuthenticator(authenticator);
      await tester.navigateToSignUp();

      // Then I don't see "Phone Number"
      expect(find.byKey(keyPhoneNumberSignUpFormField), findsNothing);
    });

    // Scenario: Sign up a new username & password
    testWidgets('Sign up a new username & password', (tester) async {
      await tester.loadAuthenticator(authenticator);
      await tester.navigateToSignUp();

      // Given I intercept '{ "headers": { "X-Amz-Target": "AWSCognitoIdentityProviderService.SignUp" } }'
      // with fixture "sign-up-with-username"
      // TODO: Clarify requirements

      // When I type a new "username"
      await tester.enterText(
        find.byKey(keyUsernameSignUpFormField),
        generateUsername(),
      );

      // And I type my password
      final password = generatePassword();
      await tester.enterText(
        find.byKey(keyPasswordSignUpFormField),
        password,
      );

      // And I confirm my password
      await tester.enterText(
        find.byKey(keyPasswordConfirmationSignUpFormField),
        password,
      );

      // And I type my "email" with status "UNCONFIRMED"
      await tester.enterText(
        find.byKey(keyEmailSignUpFormField),
        generateEmail(),
      );

      // And I type a new "preferred username"
      await tester.enterText(
        find.byKey(keyPreferredUsernameSignUpFormField),
        generateUsername(),
      );

      // And I click the "Create Account" button
      final signUpButton = find.byKey(keySignUpButton);
      await tester.ensureVisible(signUpButton);
      await tester.tap(signUpButton);

      // Then I see "Confirm Sign Up"
      await tester.nextBlocEvent();
      final currentScreen = tester.widget<AuthenticatorScreen>(
        find.byType(AuthenticatorScreen),
      );
      expect(currentScreen.screen, equals(AuthScreen.confirmSignup));

      // And I see "Confirmation Code"
      expect(find.byKey(keyCodeConfirmSignUpFormField), findsOneWidget);
    });

    // Scenario: Username field autocompletes username
    testWidgets('Username field autocompletes username', (tester) async {
      // TODO: Clarify requirements
    });

    // Scenario: Password fields autocomplete "new-password"
    testWidgets('Then "Password" field autocompletes "new-password"',
        (tester) async {
      // TODO: Clarify requirements
    });
  });
}

extension on WidgetTester {
  /// Loads the given [authenticator] widget and waits for it to render.
  Future<void> loadAuthenticator(Widget authenticator) async {
    await pumpWidget(authenticator);
    await pumpAndSettle();
  }

  /// Navigate to the "Sign Up" screen.
  Future<void> navigateToSignUp() async {
    await tap(
      find.descendant(
        of: find.byType(TabBar),
        matching: find.byKey(const ValueKey(AuthScreen.signup)),
      ),
    );
    await pumpAndSettle();
  }

  /// Waits for the next bloc event.
  Future<void> nextBlocEvent({
    BlocEventPredicate? where,
    Duration timeout = const Duration(seconds: 5),
  }) async {
    final inheritedViewModel =
        widget<InheritedAuthViewModel>(find.byKey(keyInheritedAuthViewModel));
    await inheritedViewModel.viewModel
        .nextBlocEvent(where: where)
        .timeout(timeout);
    await pumpAndSettle();
  }
}
