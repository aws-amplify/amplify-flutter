// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/enums/status_type.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/widgets/authenticator_banner.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(TestWidgetsFlutterBinding.ensureInitialized);

  group('Password visibility toggle accessibility (WCAG 4.1.2)', () {
    testWidgets(
      'exposes a "Show password" accessible name while the password is hidden',
      (tester) async {
        final semantics = tester.ensureSemantics();
        await tester.pumpWidget(const MockAuthenticatorApp());
        await tester.pumpAndSettle();

        SignInPage(tester: tester).expectStep(AuthenticatorStep.signIn);

        // Password starts obscured, so the toggle offers to show it
        expect(find.byTooltip('Show password'), findsOneWidget);
        expect(find.byTooltip('Hide password'), findsNothing);

        // The accessibility node carries the "Show password" label
        expect(
          tester.getSemantics(find.byTooltip('Show password')),
          isSemantics(tooltip: 'Show password'),
        );

        semantics.dispose();
      },
    );

    testWidgets(
      'flips the accessible name to "Hide password" once the password is shown',
      (tester) async {
        final semantics = tester.ensureSemantics();
        await tester.pumpWidget(const MockAuthenticatorApp());
        await tester.pumpAndSettle();

        SignInPage(tester: tester).expectStep(AuthenticatorStep.signIn);

        // Reveal the password
        await tester.tap(find.byTooltip('Show password'));
        await tester.pumpAndSettle();

        // Password is now visible, so the toggle offers to hide it
        expect(find.byTooltip('Hide password'), findsOneWidget);
        expect(find.byTooltip('Show password'), findsNothing);

        // The accessibility node now carries the "Hide password" label
        expect(
          tester.getSemantics(find.byTooltip('Hide password')),
          isSemantics(tooltip: 'Hide password'),
        );

        semantics.dispose();
      },
    );
  });

  group('Status banner screen-reader announcements', () {
    testWidgets(
      'MaterialBanner content is wrapped in a live-region Semantics node',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: Builder(
                builder: (context) => createMaterialBanner(
                  context,
                  type: StatusType.error,
                  message: 'Something went wrong',
                  actionCallback: () {},
                ),
              ),
            ),
          ),
        );
        await tester.pumpAndSettle();

        final banner = find.byKey(keyAuthenticatorBanner);
        expect(banner, findsOneWidget);

        final liveRegion = find.descendant(
          of: banner,
          matching: find.byWidgetPredicate(
            (widget) =>
                widget is Semantics && (widget.properties.liveRegion ?? false),
          ),
        );
        expect(liveRegion, findsOneWidget);
      },
    );

    testWidgets('SnackBar content is wrapped in a live-region Semantics node', (
      tester,
    ) async {
      late BuildContext capturedContext;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                capturedContext = context;
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      );

      // A SnackBar only builds its content once shown via the messenger
      ScaffoldMessenger.of(capturedContext).showSnackBar(
        createSnackBar(
          capturedContext,
          type: StatusType.error,
          message: 'Something went wrong',
        ),
      );
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 750));

      // Flutter's SnackBar adds its own live-region, so allow more than one
      final liveRegionAroundMessage = find.ancestor(
        of: find.text('Something went wrong'),
        matching: find.byWidgetPredicate(
          (widget) =>
              widget is Semantics && (widget.properties.liveRegion ?? false),
        ),
      );
      expect(liveRegionAroundMessage, findsWidgets);
    });
  });
}
