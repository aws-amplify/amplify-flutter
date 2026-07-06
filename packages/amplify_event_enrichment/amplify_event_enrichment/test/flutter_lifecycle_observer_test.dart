// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment/amplify_event_enrichment.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('FlutterLifecycleObserver', () {
    late SessionManager sessionManager;
    late FlutterLifecycleObserver observer;

    setUp(() {
      sessionManager = SessionManager(
        appId: 'testApp1',
        sessionTimeout: const Duration(seconds: 5),
        generateId: () => 'uuid0000-fake-uuid-value',
      )..startSession();
      observer = FlutterLifecycleObserver(sessionManager: sessionManager);
    });

    tearDown(() {
      observer.dispose();
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
  });
}
