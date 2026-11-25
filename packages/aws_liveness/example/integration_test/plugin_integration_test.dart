// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_liveness_example/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // A full check needs a backend-created session and a real camera, so this
  // only verifies that the app and plugin start on device.
  testWidgets('example app launches', (tester) async {
    await tester.pumpWidget(const LivenessExampleApp());
    await tester.pumpAndSettle();
    expect(find.text('Start Face Liveness'), findsOneWidget);
  });
}
