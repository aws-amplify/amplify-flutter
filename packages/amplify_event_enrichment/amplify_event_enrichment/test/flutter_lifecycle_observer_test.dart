// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment/amplify_event_enrichment.dart';
import 'package:amplify_event_enrichment/src/flutter_lifecycle_observer.dart';
import 'package:amplify_event_enrichment_dart/src/session/session_manager.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('FlutterLifecycleObserver', () {
    late EventEnrichmentClient client;
    late SessionManager sessionManager;
    late FlutterLifecycleObserver observer;

    setUp(() {
      client = EventEnrichmentClient(
        appMetadata: const AppMetadata(appId: 'testApp1'),
        deviceMetadata: const DeviceMetadata(platform: 'test'),
        sdkMetadata: const SdkMetadata(name: 'test', version: '0.0.0'),
        clientId: 'client-1',
      );
      sessionManager = client.sessionManager;
      observer = FlutterLifecycleObserver(client: client);
    });

    tearDown(() async {
      observer.dispose();
      await client.close();
    });

    test('onPause calls sessionManager.handleAppPaused', () {
      observer.onPause();
      expect(sessionManager.state, SessionState.paused);
    });

    test('onResume calls sessionManager.handleAppResumed', () {
      observer
        ..onPause()
        ..onResume();
      expect(sessionManager.state, SessionState.active);
    });

    test('didChangeAppLifecycleState paused triggers onPause', () {
      observer.didChangeAppLifecycleState(AppLifecycleState.paused);
      expect(sessionManager.state, SessionState.paused);
    });

    test('didChangeAppLifecycleState hidden triggers onPause', () {
      observer.didChangeAppLifecycleState(AppLifecycleState.hidden);
      expect(sessionManager.state, SessionState.paused);
    });

    test('didChangeAppLifecycleState resumed triggers onResume', () {
      observer
        ..didChangeAppLifecycleState(AppLifecycleState.paused)
        ..didChangeAppLifecycleState(AppLifecycleState.resumed);
      expect(sessionManager.state, SessionState.active);
    });

    test('dispose removes observer without error', () {
      // Calling dispose twice should be safe (removeObserver is idempotent).
      observer
        ..dispose()
        ..dispose();
    });

    test('onResume does not restart a session stopped explicitly', () {
      observer.onPause();
      sessionManager.stopSession();
      final stoppedId = sessionManager.session!.id;

      observer.onResume();

      expect(
        sessionManager.state,
        SessionState.stopped,
        reason: 'the lifecycle observer must not resurrect a stopped session',
      );
      expect(sessionManager.session!.id, stoppedId);
    });

    test(
      'a resumed lifecycle event does not restart after an explicit stop',
      () {
        // Same assertion driven through the real WidgetsBindingObserver entry
        // point rather than onPause/onResume directly.
        observer.didChangeAppLifecycleState(AppLifecycleState.paused);
        sessionManager.stopSession();

        observer.didChangeAppLifecycleState(AppLifecycleState.resumed);

        expect(sessionManager.state, SessionState.stopped);
      },
    );
  });
}
