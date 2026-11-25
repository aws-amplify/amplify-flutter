// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_liveness_example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('shows the configuration error', (tester) async {
    await tester.pumpWidget(const LivenessExampleApp(amplifyError: 'missing'));
    expect(find.text('missing'), findsOneWidget);
  });

  testWidgets('shows the form when configured', (tester) async {
    await tester.pumpWidget(const LivenessExampleApp());
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.text('Start Face Liveness'), findsOneWidget);
  });
}
