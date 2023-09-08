import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:flutter/material.dart';

/// Use for testing the [MockAuthenticatorApp] widget locally.
void main() {
  runApp(
    const MockAuthenticatorApp(
      /// change this step to view any screen of the Authenticator.
      initialStep: AuthenticatorStep.continueSignInWithTotpSetup,
    ),
  );
}
