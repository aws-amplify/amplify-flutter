// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

/// Smoke test: proves the Authenticator compiles and renders under dart2wasm.
///
/// The Authenticator is a Flutter widget package, so this runs via
/// `flutter test`, not the pure-Dart `dart test` browser runner:
///   flutter test test/wasm_smoke_test.dart --platform chrome --wasm
///
/// Its presence also opts the `amplify_authenticator_example` E2E web suite
/// into a `dart2wasm` matrix leg (see `aft generate workflows`).
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Authenticator renders under web targets', (tester) async {
    expect(zIsWeb, isTrue, reason: 'zIsWeb must be true on web targets');

    await tester.pumpWidget(const MockAuthenticatorApp());
    await tester.pumpAndSettle();

    expect(find.byType(MockAuthenticatorApp), findsOneWidget);
  });
}
