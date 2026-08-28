// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  group('SkipVerifyUserButton', () {
    tearDown(binding.platformDispatcher.clearPlatformBrightnessTestValue);

    for (final brightness in Brightness.values) {
      testWidgets('renders the Skip label in colorScheme.primary in '
          '${brightness.name} mode', (tester) async {
        binding.platformDispatcher.platformBrightnessTestValue = brightness;

        await tester.pumpWidget(
          MockAuthenticatorApp(
            initialStep: AuthenticatorStep.verifyUser,
            lightTheme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
          ),
        );
        await tester.pumpAndSettle();

        final skipButton = VerifyUserPage(tester: tester).skipButton;
        expect(skipButton, findsOneWidget);

        final label = find.descendant(
          of: skipButton,
          matching: find.byType(RichText),
        );
        final renderedColor = tester
            .renderObject<RenderParagraph>(label)
            .text
            .style
            ?.color;
        final colorScheme = Theme.of(tester.element(skipButton)).colorScheme;

        expect(renderedColor, colorScheme.primary);
        expect(renderedColor, isNot(colorScheme.surface));
      });
    }
  });
}
