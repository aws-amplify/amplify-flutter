// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(binding.platformDispatcher.clearPlatformBrightnessTestValue);

  /// The "Skip" button inherits its color from the theme so it stays visible
  /// in dark mode.
  testWidgets('Skip button does not hardcode a text color', (tester) async {
    binding.platformDispatcher.platformBrightnessTestValue = Brightness.dark;

    await tester.pumpWidget(
      MockAuthenticatorApp(
        initialStep: AuthenticatorStep.verifyUser,
        darkTheme: ThemeData.dark(useMaterial3: true),
      ),
    );
    await tester.pumpAndSettle();

    final verifyUserPage = VerifyUserPage(tester: tester);
    expect(verifyUserPage.skipButton, findsOneWidget);

    final skipText = tester.widget<Text>(
      find.descendant(
        of: verifyUserPage.skipButton,
        matching: find.byType(Text),
      ),
    );
    expect(skipText.style?.color, isNull);
  });
}
