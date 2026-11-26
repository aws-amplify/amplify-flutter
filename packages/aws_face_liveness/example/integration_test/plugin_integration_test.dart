// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_face_liveness_example/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // A full check needs a person in front of the camera, so this verifies that
  // the app, Amplify and the plugin start on device with the CI config.
  testWidgets('example app launches', (tester) async {
    await tester.pumpWidget(
      LivenessExampleApp(amplifyError: await configureAmplify()),
    );
    await tester.pumpAndSettle();
    expect(find.byType(LivenessExampleApp), findsOneWidget);
  });
}
