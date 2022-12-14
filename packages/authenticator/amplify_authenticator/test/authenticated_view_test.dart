// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved. 
// 
// Licensed under the Apache License, Version 2.0 (the "License"); 
// you may not use this file except in compliance with the License. 
// You may obtain a copy of the License at 
// 
//      http://www.apache.org/licenses/LICENSE-2.0 
// 
// Unless required by applicable law or agreed to in writing, software 
// distributed under the License is distributed on an "AS IS" BASIS, 
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
// See the License for the specific language governing permissions and 
// limitations under the License.

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/state/inherited_authenticator_state.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  group('AuthenticatedView', () {
    late AuthenticatorState mockState;
    setUp(() {
      mockState = MockAuthenticatorState();
      when(mockState.signIn).thenAnswer((_) => Future.value());
    });

    /// Completes the sign in form via keyboard events (Tab & Enter).
    Future<void> verifySignInWithKeyboard(WidgetTester tester) async {
      // Move focus to first widget via keyboard (Sign In Tab).
      await tester.sendKeyEvent(LogicalKeyboardKey.tab);

      // Move focus to next widget via keyboard (Sign Up Tab).
      await tester.sendKeyEvent(LogicalKeyboardKey.tab);

      // Move focus to next widget via keyboard (Username TextField).
      await tester.sendKeyEvent(LogicalKeyboardKey.tab);

      // Enter text to currently focused widget (Username TextField).
      tester.testTextInput.enterText('user@example.com');

      // Move focus to next widget via keyboard (Password TextField).
      await tester.sendKeyEvent(LogicalKeyboardKey.tab);

      // Enter text to currently focused widget (Password TextField).
      tester.testTextInput.enterText('Password123');

      expect(mockState.username, 'user@example.com');
      expect(mockState.password, 'Password123');

      // Move focus to first next widget via keyboard (Password Hide/Show toggle).
      await tester.sendKeyEvent(LogicalKeyboardKey.tab);

      // Move focus to first next widget via keyboard (Sign In Button).
      await tester.sendKeyEvent(LogicalKeyboardKey.tab);

      verifyNever(mockState.signIn);

      // Submit form with Enter key.
      await tester.sendKeyEvent(LogicalKeyboardKey.enter);

      await tester.pump();

      verify(mockState.signIn).called(1);
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
        await tester.tapAt(const Offset(0, 0));

        await verifySignInWithKeyboard(tester);
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
        await tester.tapAt(const Offset(0, 0));

        // Move focus to last button in group.
        for (var i = 0; i < 10; i++) {
          await tester.sendKeyEvent(LogicalKeyboardKey.tab);
        }

        await verifySignInWithKeyboard(tester);
      },
    );
  });
}

class MockAuthenticatorState extends Mock implements AuthenticatorState {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  GlobalKey<FormState> get formKey => _formKey;

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

  @override
  bool get isBusy => false;
}
