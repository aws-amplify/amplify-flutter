// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/src/session/session_manager.dart';
import 'package:fake_async/fake_async.dart';
import 'package:test/test.dart';

void main() {
  group('SessionManager', () {
    late SessionManager manager;
    const timeout = Duration(seconds: 5);
    var idCounter = 0;

    setUp(() {
      idCounter = 0;
      manager = SessionManager(
        appId: 'testApp1',
        sessionTimeout: timeout,
        generateId: () => 'abcd${idCounter++}000-fake-uuid-value',
      );
    });

    test('starts in stopped state with no session', () {
      expect(manager.state, SessionState.stopped);
      expect(manager.session, isNull);
    });

    test('startSession transitions to active', () {
      manager.startSession();
      expect(manager.state, SessionState.active);
      expect(manager.session, isNotNull);
      expect(manager.session!.id, contains('testApp1'));
    });

    test('session ID follows format: appId(8)-uniqueId(8)-yyyyMMdd-HHmmssSSS',
        () {
      manager.startSession();
      final id = manager.session!.id;
      expect(id.startsWith('testApp1-'), isTrue);
      final afterPrefix = id.substring(9);
      expect(afterPrefix.startsWith('abcd0000'), isTrue);
    });

    test('stopSession transitions to stopped with duration', () {
      manager.startSession();
      manager.stopSession();
      expect(manager.state, SessionState.stopped);
      expect(manager.session!.stopTimestamp, isNotNull);
      expect(manager.session!.duration, isNotNull);
    });

    test('handleAppPaused transitions active to paused', () {
      fakeAsync((async) {
        manager.startSession();
        manager.handleAppPaused();
        expect(manager.state, SessionState.paused);
      });
    });

    test('handleAppResumed within timeout resumes same session', () {
      fakeAsync((async) {
        manager.startSession();
        final sessionId = manager.session!.id;
        manager.handleAppPaused();
        async.elapse(const Duration(seconds: 3));
        manager.handleAppResumed();
        expect(manager.state, SessionState.active);
        expect(manager.session!.id, sessionId);
      });
    });

    test('timeout expiry stops session', () {
      fakeAsync((async) {
        manager.startSession();
        manager.handleAppPaused();
        async.elapse(timeout);
        expect(manager.state, SessionState.stopped);
        expect(manager.session!.stopTimestamp, isNotNull);
      });
    });

    test('handleAppResumed after timeout starts new session', () {
      fakeAsync((async) {
        manager.startSession();
        final oldId = manager.session!.id;
        manager.handleAppPaused();
        async.elapse(timeout);
        manager.handleAppResumed();
        expect(manager.state, SessionState.active);
        expect(manager.session!.id, isNot(oldId));
      });
    });

    test('handleAppPaused is no-op when not active', () {
      manager.handleAppPaused();
      expect(manager.state, SessionState.stopped);
    });

    test('startSession stops existing session first', () {
      manager.startSession();
      final firstId = manager.session!.id;
      manager.startSession();
      expect(manager.session!.id, isNot(firstId));
    });

    test('short appId is padded in session ID', () {
      final shortManager = SessionManager(
        appId: 'ab',
        sessionTimeout: timeout,
        generateId: () => 'uuid0000-fake-uuid-value',
      );
      shortManager.startSession();
      final id = shortManager.session!.id;
      expect(id.substring(0, 8), '______ab');
    });
  });
}
