// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Custom message resolver that overrides error messages
class CustomMessageResolver extends MessageResolver {
  const CustomMessageResolver();

  @override
  String error(BuildContext context, AuthenticatorException exception) {
    // Check if it's a Cognito exception
    if (exception is CognitoAuthenticatorException) {
      final errorType = exception.getCognitoErrorType();
      final arbKey = exception.getArbKey();

      // Verify the ARB key is correct
      expect(arbKey, 'authenticatorCognitoError${errorType.errorType}');

      // Override specific error messages
      switch (errorType) {
        case CognitoErrorType.userNotFound:
          return 'Custom: We could not find an account with that username';
        default:
          // Fall back to original message for other errors
          return exception.message;
      }
    }

    // Non-Cognito exceptions use original message
    return exception.message;
  }
}

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Sign in with invalid username shows custom error message', (
    tester,
  ) async {
    await tester.pumpWidget(
      MockAuthenticatorApp(
        authPlugin: AmplifyAuthCognitoStub(users: []),
        stringResolver: const AuthStringResolver(
          messages: CustomMessageResolver(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    final signInPage = SignInPage(tester: tester);

    // When I type an invalid username
    await signInPage.enterUsername('nonexistent@example.com');

    // And I type a password
    await signInPage.enterPassword('somePassword123!');

    // And I click the "Sign in" button
    await binding.runAsync(signInPage.submitSignIn);
    await tester.pumpAndSettle();

    // Then I see the custom error message
    signInPage.expectError(
      'Custom: We could not find an account with that username',
    );
  });
}
