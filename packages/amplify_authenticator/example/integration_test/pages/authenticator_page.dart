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

import 'dart:io';

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_utils.dart';

abstract class AuthenticatorPage {
  AuthenticatorPage({required this.tester});

  final WidgetTester tester;

  Finder get usernameField;
  Finder get bannerFinder => find.byKey(keyAuthenticatorBanner);
  Finder get countrySelectField => find.byKey(keySelectCountryCode);
  Finder get countrySelectDialog => find.byKey(keyCountryDialog);
  Finder get countrySearchField => find.byKey(keyCountrySearchField);
  Finder get signOutButton => find.byKey(keySignOutButton);

  /// Then I see "Username" as an input field
  void expectUsername({
    String label = 'Username',
    bool isPresent = true,
  }) {
    // username field is present
    expect(usernameField, findsOneWidget);
    // login type is "username"
    Finder usernameFieldHint = find.descendant(
      of: usernameField,
      matching: find.text(label),
    );
    expect(usernameFieldHint, isPresent ? findsOneWidget : findsNothing);
  }

  /// Expects the current screen to be [screen].
  void expectScreen(AuthScreen screen) {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(currentScreen.screen, equals(screen));
  }

  /// Expects the input field [inputField] to show an error text containing
  /// [errorText].
  void expectInputError(Key inputField, String errorText) {
    final finder = find.byKey(inputField);
    expect(finder, findsOneWidget);
    expect(
      find.descendant(
        of: finder,
        matching: find.textContaining(errorText),
      ),
      findsOneWidget,
    );
  }

  /// Expects an error banner containing [errorText].
  Future<void> expectError(String errorText) async {
    await tester.pumpAndSettle();
    expect(bannerFinder, findsOneWidget);
    expect(
      find.descendant(
        of: bannerFinder,
        matching: find.textContaining(errorText),
      ),
      findsOneWidget,
    );
  }

  // Then I am signed in
  Future<void> expectAuthenticated() async {
    final inheritedBloc =
        tester.widget<InheritedAuthBloc>(find.byKey(keyInheritedAuthBloc));
    if (inheritedBloc.authBloc.currentState is! Authenticated) {
      await nextBlocEvent(tester);
    }
    expect(inheritedBloc.authBloc.currentState, isA<Authenticated>());
  }

  /// Then I see User not found banner
  Future<void> expectUserNotFound() async => expectError('not found');

  /// Then I see Invalid code
  Future<void> expectInvalidCode() async =>
      expectError('Invalid code or auth state for the user');

  /// Then I see Username/client id combination not found banner.
  void expectCombinationNotFound() {
    expect(bannerFinder, findsOneWidget);
    Finder expectCombinationNotFound = find.descendant(
      of: find.byKey(keyAuthenticatorBanner),
      matching: find.textContaining('Username/client id combination not found'),
    );
    expect(expectCombinationNotFound, findsOneWidget);
  }

  /// Then I see Invalid verification code
  Future<void> expectInvalidVerificationCode() async {
    if (Platform.isAndroid) {
      expectError('Confirmation code entered is not correct.');
    } else if (Platform.isIOS) {
      expectError('Invalid verification code provided, please try again.');
    } else {
      throw Exception('Unsupprted platform');
    }
  }

  Future<void> selectCountryCode() async {
    expect(countrySelectField, findsOneWidget);
    await tester.tap(countrySelectField);
    await tester.pumpAndSettle();
    expect(countrySelectDialog, findsOneWidget);
    expect(countrySearchField, findsOneWidget);
    await tester.enterText(countrySearchField, 'United States');
    Finder unitedStatesOption = find.descendant(
        of: find.byKey(keyCountryDialog),
        matching: find.textContaining('(+1)'));
    expect(unitedStatesOption, findsOneWidget);
    await tester.tap(unitedStatesOption);
  }

  /// When I click "Sign out"
  Future<void> submitSignOut() async {
    await tester.tap(signOutButton);
    await tester.pumpAndSettle();
  }
}
