// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/state/inherited_authenticator_state.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Authenticator text field controllers', () {
    testWidgets('SignUpFormField.username syncs with controller', (
      tester,
    ) async {
      final usernameController = AuthenticatorTextFieldController(
        text: 'initial',
      );
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

    testWidgets('SignUpFormField.address syncs controller and attributes', (
      tester,
    ) async {
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

    testWidgets('SignInFormField.username syncs with controller', (
      tester,
    ) async {
      final usernameController = AuthenticatorTextFieldController(
        text: 'testuser',
      );
      addTearDown(usernameController.dispose);

      await tester.pumpWidget(
        MockAuthenticatorApp(
          initialStep: AuthenticatorStep.signIn,
          signInForm: SignInForm.custom(
            fields: [
              SignInFormField.username(controller: usernameController),
              SignInFormField.password(),
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();

      final signInContext = tester.element(find.byType(SignInForm));
      final authState = InheritedAuthenticatorState.of(signInContext);

      // Initial text populates state on first build.
      expect(authState.username, equals('testuser'));

      // Programmatic updates flow from controller -> state.
      usernameController.text = 'newuser';
      await tester.pump();
      expect(authState.username, equals('newuser'));

      // State updates propagate back to the controller.
      authState.username = 'another-user';
      await tester.pump();
      expect(usernameController.text, equals('another-user'));
    });

    testWidgets('SignInFormField.password syncs with controller', (
      tester,
    ) async {
      final passwordController = AuthenticatorTextFieldController(
        text: 'pass123',
      );
      addTearDown(passwordController.dispose);

      await tester.pumpWidget(
        MockAuthenticatorApp(
          initialStep: AuthenticatorStep.signIn,
          signInForm: SignInForm.custom(
            fields: [
              SignInFormField.username(),
              SignInFormField.password(controller: passwordController),
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();

      final signInContext = tester.element(find.byType(SignInForm));
      final authState = InheritedAuthenticatorState.of(signInContext);

      // Initial password is set
      expect(authState.password, equals('pass123'));

      // Controller updates propagate to state
      passwordController.text = 'newpass456';
      await tester.pump();
      expect(authState.password, equals('newpass456'));

      // State updates propagate to controller
      authState.password = 'statepass789';
      await tester.pump();
      expect(passwordController.text, equals('statepass789'));
    });

    testWidgets('typing with controller defers state updates to after build', (
      tester,
    ) async {
      final usernameController = AuthenticatorTextFieldController();
      addTearDown(usernameController.dispose);

      await tester.pumpWidget(
        MockAuthenticatorApp(
          initialStep: AuthenticatorStep.signIn,
          signInForm: SignInForm.custom(
            fields: [
              SignInFormField.username(controller: usernameController),
              SignInFormField.password(),
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();

      final fieldFinder = find.byKey(keyUsernameSignInFormField);
      await tester.tap(fieldFinder);
      await tester.pump();
      await tester.showKeyboard(fieldFinder);

      expect(tester.takeException(), isNull);

      await tester.sendKeyEvent(LogicalKeyboardKey.keyA);
      await tester.pump();
      expect(tester.takeException(), isNull);

      await tester.sendKeyEvent(LogicalKeyboardKey.space);
      await tester.pump();
      expect(tester.takeException(), isNull);

      await tester.sendKeyEvent(LogicalKeyboardKey.backspace);
      await tester.pump();
      expect(tester.takeException(), isNull);

      final signInContext = tester.element(find.byType(SignInForm));
      final authState = InheritedAuthenticatorState.of(signInContext);

      expect(usernameController.text, equals('a'));
      expect(authState.username, equals('a'));
    });

    testWidgets('SignUpFormField.password syncs with controller', (
      tester,
    ) async {
      final passwordController = AuthenticatorTextFieldController();
      addTearDown(passwordController.dispose);

      await tester.pumpWidget(
        MockAuthenticatorApp(
          initialStep: AuthenticatorStep.signUp,
          signUpForm: SignUpForm.custom(
            fields: [
              SignUpFormField.username(),
              SignUpFormField.password(controller: passwordController),
              SignUpFormField.passwordConfirmation(),
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();

      final signUpContext = tester.element(find.byType(SignUpForm));
      final authState = InheritedAuthenticatorState.of(signUpContext);

      // Update through controller
      passwordController.text = 'SecurePass123!';
      await tester.pump();
      expect(authState.password, equals('SecurePass123!'));

      // Update through state
      authState.password = 'NewSecurePass456!';
      await tester.pump();
      expect(passwordController.text, equals('NewSecurePass456!'));
    });

    testWidgets('SignUpFormField.email syncs with controller', (tester) async {
      final emailController = AuthenticatorTextFieldController(
        text: 'test@example.com',
      );
      addTearDown(emailController.dispose);

      await tester.pumpWidget(
        MockAuthenticatorApp(
          initialStep: AuthenticatorStep.signUp,
          signUpForm: SignUpForm.custom(
            fields: [
              SignUpFormField.username(),
              SignUpFormField.password(),
              SignUpFormField.passwordConfirmation(),
              SignUpFormField.email(controller: emailController),
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();

      final signUpContext = tester.element(find.byType(SignUpForm));
      final authState = InheritedAuthenticatorState.of(signUpContext);

      // Initial email is set
      expect(
        authState.getAttribute(CognitoUserAttributeKey.email),
        equals('test@example.com'),
      );

      // Controller updates propagate
      emailController.text = 'new@example.com';
      await tester.pump();
      expect(
        authState.getAttribute(CognitoUserAttributeKey.email),
        equals('new@example.com'),
      );

      // State updates propagate
      authState.email = 'updated@example.com';
      await tester.pump();
      expect(emailController.text, equals('updated@example.com'));
    });

    testWidgets('SignUpFormField.custom syncs with controller', (tester) async {
      final bioController = AuthenticatorTextFieldController(
        text: 'I love Flutter',
      );
      addTearDown(bioController.dispose);

      await tester.pumpWidget(
        MockAuthenticatorApp(
          initialStep: AuthenticatorStep.signUp,
          signUpForm: SignUpForm.custom(
            fields: [
              SignUpFormField.username(),
              SignUpFormField.password(),
              SignUpFormField.passwordConfirmation(),
              SignUpFormField.custom(
                title: 'Bio',
                attributeKey: const CognitoUserAttributeKey.custom('bio'),
                controller: bioController,
              ),
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();

      final signUpContext = tester.element(find.byType(SignUpForm));
      final authState = InheritedAuthenticatorState.of(signUpContext);

      // Initial value is set
      expect(
        authState.getAttribute(const CognitoUserAttributeKey.custom('bio')),
        equals('I love Flutter'),
      );

      // Controller updates propagate
      bioController.text = 'I love AWS Amplify';
      await tester.pump();
      expect(
        authState.getAttribute(const CognitoUserAttributeKey.custom('bio')),
        equals('I love AWS Amplify'),
      );

      // State updates propagate
      authState.setCustomAttribute(
        const CognitoUserAttributeKey.custom('bio'),
        'Flutter + Amplify = Amazing',
      );
      await tester.pump();
      expect(bioController.text, equals('Flutter + Amplify = Amazing'));
    });

    testWidgets('Multiple controllers work independently', (tester) async {
      final addressController = AuthenticatorTextFieldController(
        text: '123 Main St',
      );
      final nameController = AuthenticatorTextFieldController(text: 'John Doe');
      final phoneController = AuthenticatorTextFieldController(
        text: '+1234567890',
      );

      addTearDown(addressController.dispose);
      addTearDown(nameController.dispose);
      addTearDown(phoneController.dispose);

      await tester.pumpWidget(
        MockAuthenticatorApp(
          initialStep: AuthenticatorStep.signUp,
          signUpForm: SignUpForm.custom(
            fields: [
              SignUpFormField.username(),
              SignUpFormField.password(),
              SignUpFormField.passwordConfirmation(),
              SignUpFormField.address(controller: addressController),
              SignUpFormField.name(controller: nameController),
              SignUpFormField.phoneNumber(controller: phoneController),
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();

      final signUpContext = tester.element(find.byType(SignUpForm));
      final authState = InheritedAuthenticatorState.of(signUpContext);

      // Verify all initial values are set
      expect(
        authState.getAttribute(CognitoUserAttributeKey.address),
        equals('123 Main St'),
      );
      expect(
        authState.getAttribute(CognitoUserAttributeKey.name),
        equals('John Doe'),
      );
      expect(
        authState.getAttribute(CognitoUserAttributeKey.phoneNumber),
        equals('+1234567890'),
      );

      // Update one controller
      addressController.text = '456 Oak Ave';
      await tester.pump();

      // Verify only that field changed
      expect(
        authState.getAttribute(CognitoUserAttributeKey.address),
        equals('456 Oak Ave'),
      );
      expect(
        authState.getAttribute(CognitoUserAttributeKey.name),
        equals('John Doe'),
      );
      expect(
        authState.getAttribute(CognitoUserAttributeKey.phoneNumber),
        equals('+1234567890'),
      );

      // Update another controller
      nameController.text = 'Jane Smith';
      await tester.pump();

      // Verify the correct field changed
      expect(
        authState.getAttribute(CognitoUserAttributeKey.address),
        equals('456 Oak Ave'),
      );
      expect(
        authState.getAttribute(CognitoUserAttributeKey.name),
        equals('Jane Smith'),
      );
      expect(
        authState.getAttribute(CognitoUserAttributeKey.phoneNumber),
        equals('+1234567890'),
      );
    });

    testWidgets('Controller can be added after initial build', (tester) async {
      final controller = AuthenticatorTextFieldController();
      addTearDown(controller.dispose);

      // Build without controller first
      await tester.pumpWidget(
        MockAuthenticatorApp(
          initialStep: AuthenticatorStep.signUp,
          signUpForm: SignUpForm.custom(
            fields: [
              SignUpFormField.username(),
              SignUpFormField.password(),
              SignUpFormField.passwordConfirmation(),
              SignUpFormField.address(),
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();

      final signUpContext = tester.element(find.byType(SignUpForm));
      var authState = InheritedAuthenticatorState.of(signUpContext);

      // Set state value
      authState.address = 'Initial Address';
      await tester.pump();

      // Rebuild with controller
      await tester.pumpWidget(
        MockAuthenticatorApp(
          initialStep: AuthenticatorStep.signUp,
          signUpForm: SignUpForm.custom(
            fields: [
              SignUpFormField.username(),
              SignUpFormField.password(),
              SignUpFormField.passwordConfirmation(),
              SignUpFormField.address(controller: controller),
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();

      // Controller should sync with existing state
      expect(controller.text, equals('Initial Address'));

      // Controller updates should work
      controller.text = 'Updated Address';
      await tester.pump();

      authState = InheritedAuthenticatorState.of(signUpContext);
      expect(
        authState.getAttribute(CognitoUserAttributeKey.address),
        equals('Updated Address'),
      );
    });

    testWidgets('Controller works with standard TextEditingController', (
      tester,
    ) async {
      // Test that standard TextEditingController also works
      final usernameController = TextEditingController(text: 'standard');
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

      // Standard TextEditingController should also work
      expect(authState.username, equals('standard'));

      usernameController.text = 'updated-standard';
      await tester.pump();
      expect(authState.username, equals('updated-standard'));
    });

    testWidgets('Controller updates are handled correctly for rapid changes', (
      tester,
    ) async {
      final controller = AuthenticatorTextFieldController();
      addTearDown(controller.dispose);

      await tester.pumpWidget(
        MockAuthenticatorApp(
          initialStep: AuthenticatorStep.signUp,
          signUpForm: SignUpForm.custom(
            fields: [
              SignUpFormField.username(),
              SignUpFormField.password(),
              SignUpFormField.passwordConfirmation(),
              SignUpFormField.email(controller: controller),
            ],
          ),
        ),
      );
      await tester.pumpAndSettle();

      final signUpContext = tester.element(find.byType(SignUpForm));
      final authState = InheritedAuthenticatorState.of(signUpContext);

      // Rapid updates
      controller.text = 'a@test.com';
      controller.text = 'b@test.com';
      controller.text = 'c@test.com';
      await tester.pump();

      // Should reflect the latest value
      expect(
        authState.getAttribute(CognitoUserAttributeKey.email),
        equals('c@test.com'),
      );
    });

    testWidgets(
      'No setState during build when typing special keys (space, backspace)',
      (tester) async {
        final controller = AuthenticatorTextFieldController();
        addTearDown(controller.dispose);

        await tester.pumpWidget(
          MockAuthenticatorApp(
            initialStep: AuthenticatorStep.signUp,
            signUpForm: SignUpForm.custom(
              fields: [
                SignUpFormField.username(controller: controller),
                SignUpFormField.password(),
                SignUpFormField.passwordConfirmation(),
              ],
            ),
          ),
        );
        await tester.pumpAndSettle();

        final signUpContext = tester.element(find.byType(SignUpForm));
        final authState = InheritedAuthenticatorState.of(signUpContext);

        // Type regular characters
        controller.text = 'test';
        await tester.pump();
        expect(authState.username, equals('test'));

        // Type space character - this should not cause setState during build
        controller.text = 'test ';
        await tester.pump();
        expect(authState.username, equals('test '));

        // Type more characters after space
        controller.text = 'test user';
        await tester.pump();
        expect(authState.username, equals('test user'));

        // Simulate backspace by removing characters
        controller.text = 'test use';
        await tester.pump();
        expect(authState.username, equals('test use'));

        controller.text = 'test us';
        await tester.pump();
        expect(authState.username, equals('test us'));

        // Multiple rapid changes including special keys
        controller.text = 'test us ';
        await tester.pump();
        controller.text = 'test us a';
        await tester.pump();
        controller.text = 'test us';
        await tester.pump();
        controller.text = 'test';
        await tester.pump();
        expect(authState.username, equals('test'));

        // Test passes if no exception is thrown during the above operations
      },
    );

    testWidgets(
      'Controller updates during form field interactions do not cause errors',
      (tester) async {
        final controller = AuthenticatorTextFieldController(text: 'initial');
        addTearDown(controller.dispose);

        await tester.pumpWidget(
          MockAuthenticatorApp(
            initialStep: AuthenticatorStep.signUp,
            signUpForm: SignUpForm.custom(
              fields: [
                SignUpFormField.username(controller: controller),
                SignUpFormField.password(),
                SignUpFormField.passwordConfirmation(),
              ],
            ),
          ),
        );
        await tester.pumpAndSettle();

        final signUpContext = tester.element(find.byType(SignUpForm));
        final authState = InheritedAuthenticatorState.of(signUpContext);

        // Verify initial state
        expect(authState.username, equals('initial'));

        // Simulate complex editing sequence
        controller.text = 'initial text';
        await tester.pump();
        expect(authState.username, equals('initial text'));

        // Add space
        controller.text = 'initial text ';
        await tester.pump();
        expect(authState.username, equals('initial text '));

        // Continue typing
        controller.text = 'initial text with spaces';
        await tester.pump();
        expect(authState.username, equals('initial text with spaces'));

        // Delete to space
        controller.text = 'initial text with ';
        await tester.pump();
        expect(authState.username, equals('initial text with '));

        // Delete space
        controller.text = 'initial text with';
        await tester.pump();
        expect(authState.username, equals('initial text with'));

        // Complete deletion
        controller.text = '';
        await tester.pump();
        expect(authState.username, equals(''));
      },
    );

    testWidgets(
      'SignInFormField.password controller handles special characters correctly',
      (tester) async {
        final passwordController = AuthenticatorTextFieldController();
        addTearDown(passwordController.dispose);

        await tester.pumpWidget(
          MockAuthenticatorApp(
            initialStep: AuthenticatorStep.signIn,
            signInForm: SignInForm.custom(
              fields: [
                SignInFormField.username(),
                SignInFormField.password(controller: passwordController),
              ],
            ),
          ),
        );
        await tester.pumpAndSettle();

        final signInContext = tester.element(find.byType(SignInForm));
        final authState = InheritedAuthenticatorState.of(signInContext);

        // Test password with special characters and spaces
        const complexPassword = r'Pass word123! @#$';

        // Set the final password
        passwordController.text = complexPassword;
        await tester.pump();

        // Verify final password
        expect(authState.password, equals(complexPassword));

        // Test deletion
        passwordController.text = '';
        await tester.pump();
        expect(authState.password, equals(''));
      },
    );
  });
}
