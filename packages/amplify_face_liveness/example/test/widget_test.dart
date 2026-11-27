// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_face_liveness/amplify_face_liveness.dart';
import 'package:amplify_face_liveness_example/main.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
// ignore: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

const _startChannel =
    'dev.flutter.pigeon.amplify_face_liveness.AmplifyFaceLivenessHostApi.start';

final class _FakeBackend implements LivenessBackend {
  final requestedResults = <String>[];

  @override
  Future<LivenessSession> createSession() async =>
      (sessionId: 'session-1', region: 'us-east-1');

  @override
  Future<LivenessResult> getResult(String sessionId) async {
    requestedResults.add(sessionId);
    return (status: 'SUCCEEDED', confidence: 98.76);
  }
}

final class _StaticCredentials implements AWSCredentialsProvider {
  @override
  Future<AWSCredentials> resolve() async =>
      const StaticCredentials('akid', 'secret');
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;

  /// Replies to the native `start` call with [reply], a pigeon response list.
  void mockStart(List<Object?> reply) => messenger.setMockMessageHandler(
    _startChannel,
    (_) async => const StandardMessageCodec().encodeMessage(reply),
  );

  tearDown(() => messenger.setMockMessageHandler(_startChannel, null));

  Future<_FakeBackend> pumpPage(WidgetTester tester) async {
    final backend = _FakeBackend();
    await tester.pumpWidget(
      MaterialApp(
        home: LivenessCheckPage(
          backend: backend,
          liveness: AmplifyFaceLiveness(
            credentialsProvider: _StaticCredentials(),
          ),
        ),
      ),
    );
    return backend;
  }

  testWidgets('shows the configuration error', (tester) async {
    await tester.pumpWidget(const LivenessExampleApp(amplifyError: 'missing'));
    expect(find.text('missing'), findsOneWidget);
  });

  testWidgets('runs a check and shows the backend result', (tester) async {
    mockStart([null]);
    final backend = await pumpPage(tester);

    await tester.tap(find.text('Run Face Liveness check'));
    await tester.pumpAndSettle();

    expect(backend.requestedResults, ['session-1']);
    expect(find.text('SUCCEEDED, confidence 98.8'), findsOneWidget);
  });

  testWidgets('shows the error code when the check fails', (tester) async {
    mockStart(['userCancelled', 'User cancelled the check.', null]);
    final backend = await pumpPage(tester);

    await tester.tap(find.text('Run Face Liveness check'));
    await tester.pumpAndSettle();

    expect(backend.requestedResults, isEmpty);
    expect(
      find.text('userCancelled: User cancelled the check.'),
      findsOneWidget,
    );
  });
}
