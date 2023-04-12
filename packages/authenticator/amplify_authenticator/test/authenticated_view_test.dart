// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/state/inherited_authenticator_state.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  group('AuthenticatedView', () {
    late MockAuthenticatorState mockState;
    setUp(() {
      mockState = MockAuthenticatorState();
      when(mockState.signIn).thenAnswer((_) async {
        mockState.isBusy = true;
        await Future<void>.delayed(Duration.zero);
        mockState.isBusy = false;
      });
    });

    /// Completes the sign in form via keyboard events (Tab & Enter).
    Future<void> signInWithKeyboard(
      WidgetTester tester, {
      String username = 'user@example.com',
      String password = 'Password123',
      bool submitViaTextField = false,
    }) async {
      // Move focus to first widget via keyboard (Sign In Tab).
      await tester.sendKeyEvent(LogicalKeyboardKey.tab);

      // Move focus to next widget via keyboard (Sign Up Tab).
      await tester.sendKeyEvent(LogicalKeyboardKey.tab);

      // Move focus to next widget via keyboard (Username TextField).
      await tester.sendKeyEvent(LogicalKeyboardKey.tab);

      // Enter text to currently focused widget (Username TextField).
      tester.testTextInput.enterText(username);

      // Move focus to next widget via keyboard (Password TextField).
      await tester.sendKeyEvent(LogicalKeyboardKey.tab);

      // Enter text to currently focused widget (Password TextField).
      tester.testTextInput.enterText(password);

      expect(mockState.username, username);
      expect(mockState.password, password);

      if (submitViaTextField) {
        // Submit form via Enter from password field.
        await tester.testTextInput.receiveAction(TextInputAction.done);
      } else {
        // Move focus to first next widget via keyboard (Password Hide/Show toggle).
        await tester.sendKeyEvent(LogicalKeyboardKey.tab);

        // Move focus to first next widget via keyboard (Sign In Button).
        await tester.sendKeyEvent(LogicalKeyboardKey.tab);

        // Submit form with Enter key.
        await tester.sendKeyEvent(LogicalKeyboardKey.enter);
      }
    }

    testWidgets(
      'should be navigable by keyboard events',
      (tester) async {
        final testWidget = MaterialApp(
          home: Scaffold(
            body: MockAuthenticatorApp(
              child: InheritedAuthenticatorState(
                state: mockState,
                child: const AuthenticatedView(
                  child: Center(child: Text('You are signed in.')),
                ),
              ),
            ),
          ),
        );
        await tester.pumpWidget(testWidget);
        await tester.pumpAndSettle();

        // Set initial focus to window.
        await tester.tapAt(Offset.zero);

        verifyNever(mockState.signIn);
        await signInWithKeyboard(tester);
        await tester.pumpAndSettle();
        verify(mockState.signIn).called(1);
      },
    );

    testWidgets(
      'form should submit when enter is pressed from a text field',
      (tester) async {
        final testWidget = MaterialApp(
          home: Scaffold(
            body: MockAuthenticatorApp(
              child: InheritedAuthenticatorState(
                state: mockState,
                child: const AuthenticatedView(
                  child: Center(child: Text('You are signed in.')),
                ),
              ),
            ),
          ),
        );
        await tester.pumpWidget(testWidget);
        await tester.pumpAndSettle();

        // Set initial focus to window.
        await tester.tapAt(Offset.zero);

        verifyNever(mockState.signIn);
        await signInWithKeyboard(tester, submitViaTextField: true);
        await tester.pumpAndSettle();
        verify(mockState.signIn).called(1);
      },
    );

    testWidgets(
      'form should only submit once when enter is pressed multiple times from a text field',
      (tester) async {
        final testWidget = MaterialApp(
          home: Scaffold(
            body: MockAuthenticatorApp(
              child: InheritedAuthenticatorState(
                state: mockState,
                child: const AuthenticatedView(
                  child: Center(child: Text('You are signed in.')),
                ),
              ),
            ),
          ),
        );
        await tester.pumpWidget(testWidget);
        await tester.pumpAndSettle();

        // Set initial focus to window.
        await tester.tapAt(Offset.zero);

        verifyNever(mockState.signIn);
        await signInWithKeyboard(tester, submitViaTextField: true);
        await signInWithKeyboard(
          tester,
          username: '',
          password: '',
          submitViaTextField: true,
        );
        await tester.pumpAndSettle();
        verify(mockState.signIn).called(1);
      },
    );

    testWidgets(
      'Tab order should not be impacted by other Tab-able widgets in the tree',
      (tester) async {
        final testWidget = MaterialApp(
          home: Scaffold(
            body: MockAuthenticatorApp(
              child: InheritedAuthenticatorState(
                state: mockState,
                child: Row(
                  children: [
                    Column(
                      children: [
                        for (var i = 0; i < 10; i++)
                          TextButton(
                            onPressed: () {},
                            child: Text('Button $i'),
                          ),
                      ],
                    ),
                    const Expanded(
                      child: AuthenticatedView(
                        child: Center(child: Text('You are signed in.')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
        await tester.pumpWidget(testWidget);
        await tester.pumpAndSettle();

        // Set initial focus to window.
        await tester.tapAt(Offset.zero);

        // Move focus to last button in group.
        for (var i = 0; i < 10; i++) {
          await tester.sendKeyEvent(LogicalKeyboardKey.tab);
        }

        verifyNever(mockState.signIn);
        await signInWithKeyboard(tester);
        await tester.pumpAndSettle();
        verify(mockState.signIn).called(1);
      },
    );
  });
}

class MockAuthenticatorState extends Mock implements AuthenticatorState {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  GlobalKey<FormState> get formKey => _formKey;

  @override
  AuthenticatorStep get currentStep => AuthenticatorStep.signIn;

  @override
  String get username => _username;

  @override
  set username(String value) {
    _username = value;
  }

  String _username = '';

  @override
  String get password => _password;

  @override
  set password(String value) {
    _password = value.trim();
  }

  String _password = '';

  bool _isBusy = false;

  @override
  bool get isBusy => _isBusy;

  set isBusy(bool busy) {
    _isBusy = busy;
  }
}
