// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/state/inherited_authenticator_state.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Authenticator text field controllers', () {
    testWidgets('SignUpFormField.username syncs with controller', (tester) async {
      final usernameController = AuthenticatorTextFieldController(text: 'initial');
      addTearDown(usernameController.dispose);

      await tester.pumpWidget(
        MockAuthenticatorApp(
          initialStep: AuthenticatorStep.signUp,
          signUpForm: SignUpForm.custom(
            fields: [
              SignUpFormField.username(controller: usernameController),
              SignUpFormField.password(),
              SignUpFormField.passwordConfirmation(),
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();

      final signUpContext = tester.element(find.byType(SignUpForm));
      final authState = InheritedAuthenticatorState.of(signUpContext);

      // Initial text populates state on first build.
      expect(authState.username, equals('initial'));

      // Programmatic updates flow from controller -> state.
      usernameController.text = 'updated';
      await tester.pump();
      expect(authState.username, equals('updated'));

      // State updates propagate back to the controller.
      authState.username = 'state-origin';
      await tester.pump();
      expect(usernameController.text, equals('state-origin'));
    });

    testWidgets('SignUpFormField.address syncs controller and attributes', (tester) async {
      final addressController = AuthenticatorTextFieldController();
      addTearDown(addressController.dispose);

      await tester.pumpWidget(
        MockAuthenticatorApp(
          initialStep: AuthenticatorStep.signUp,
          signUpForm: SignUpForm.custom(
            fields: [
              SignUpFormField.username(),
              SignUpFormField.password(),
              SignUpFormField.passwordConfirmation(),
              SignUpFormField.address(controller: addressController),
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();

      final signUpContext = tester.element(find.byType(SignUpForm));
      final authState = InheritedAuthenticatorState.of(signUpContext);

      addressController.text = '123 Main St';
      await tester.pump();
      expect(
        authState.getAttribute(CognitoUserAttributeKey.address),
        equals('123 Main St'),
      );

      authState.address = '987 Baker Ave';
      await tester.pump();
      expect(addressController.text, equals('987 Baker Ave'));
    });
  });
}
