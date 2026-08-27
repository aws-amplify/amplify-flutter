// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_event_enrichment_dart/src/session/session.dart';
import 'package:amplify_event_enrichment_dart/src/session/session_manager.dart';
import 'package:fake_async/fake_async.dart';
import 'package:test/test.dart';

/// A timer that never runs its callback, standing in for a platform that
/// suspends timers while the app is backgrounded. iOS suspends the Dart event
/// loop, so the pause timer may not run until after the app is already back in
/// the foreground, or at all — the resume has to detect the timeout itself.
class _NeverFiringTimer implements Timer {
  @override
  void cancel() {}

  @override
  bool get isActive => true;

  @override
  int get tick => 0;
}

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

    test(
      'session ID follows format: appId(8)-uniqueId(8)-yyyyMMdd-HHmmssSSS',
      () {
        manager.startSession();
        final id = manager.session!.id;
        expect(id.startsWith('testApp1-'), isTrue);
        final afterPrefix = id.substring(9);
        expect(afterPrefix.startsWith('abcd0000'), isTrue);
      },
    );

    test('stopSession transitions to stopped with duration', () {
      manager
        ..startSession()
        ..stopSession();
      expect(manager.state, SessionState.stopped);
      expect(manager.session!.stopTimestamp, isNotNull);
      expect(manager.session!.duration, isNotNull);
    });

    test('handleAppPaused transitions active to paused', () {
      fakeAsync((async) {
        manager
          ..startSession()
          ..handleAppPaused();
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
        manager
          ..startSession()
          ..handleAppPaused();
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
      )..startSession();
      final id = shortManager.session!.id;
      expect(id.substring(0, 8), '______ab');
    });

    group('explicit stop vs timeout stop', () {
      test('handleAppResumed does not restart after an explicit stop', () {
        fakeAsync((async) {
          manager
            ..startSession()
            ..handleAppPaused();
          final stoppedId = manager.session!.id;

          manager
            ..stopSession()
            ..handleAppResumed();

          expect(
            manager.state,
            SessionState.stopped,
            reason: 'a session the customer stopped must stay stopped',
          );
          expect(
            manager.session!.id,
            stoppedId,
            reason: 'no new session may be started by the resume',
          );
        });
      });

      test('handleAppResumed does restart after a timeout stop', () {
        fakeAsync((async) {
          manager
            ..startSession()
            ..handleAppPaused();
          final timedOutId = manager.session!.id;
          async.elapse(timeout);
          expect(manager.state, SessionState.stopped);

          manager.handleAppResumed();

          expect(manager.state, SessionState.active);
          expect(manager.session!.id, isNot(timedOutId));
        });
      });

      test('startSession clears the explicit stop', () {
        fakeAsync((async) {
          manager
            ..startSession()
            ..stopSession()
            // Explicitly restarting puts lifecycle handling back in charge.
            ..startSession();
          final restartedId = manager.session!.id;

          manager.handleAppPaused();
          async.elapse(timeout);
          manager.handleAppResumed();

          expect(manager.state, SessionState.active);
          expect(manager.session!.id, isNot(restartedId));
        });
      });

      test('handleAppResumed does not restart after clearSession', () {
        manager
          ..startSession()
          ..clearSession()
          ..handleAppResumed();
        expect(manager.state, SessionState.stopped);
        expect(manager.session, isNull);
      });

      test('an explicit stop while active is also not resurrected', () {
        // The paused-then-stopped path is the one the lifecycle observer
        // exercises; this covers a stop with no preceding background.
        manager
          ..startSession()
          ..stopSession()
          ..handleAppResumed();
        expect(manager.state, SessionState.stopped);
      });
    });

    group('background timeout measured by timestamp', () {
      const background = Duration(minutes: 20);
      late List<Session> ended;
      late List<Session> started;

      /// A manager whose pause timer never fires, so only the timestamp
      /// comparison on resume can detect the timeout.
      SessionManager suspendedTimerManager() {
        ended = [];
        started = [];
        return SessionManager(
          appId: 'testApp1',
          sessionTimeout: timeout,
          generateId: () => 'abcd${idCounter++}000-fake-uuid-value',
          onSessionStarted: (s) async => started.add(s),
          onSessionEnded: (s) async => ended.add(s),
        )..timerFactory = (_, _) => _NeverFiringTimer();
      }

      test('a resume past the timeout starts a new session', () {
        fakeAsync((async) {
          final suspended = suspendedTimerManager()..startSession();
          final first = suspended.session!;

          suspended.handleAppPaused();
          async.elapse(background);
          suspended.handleAppResumed();
          async.flushMicrotasks();

          expect(
            suspended.state,
            SessionState.active,
            reason: 'the app is in the foreground again',
          );
          expect(
            suspended.session!.id,
            isNot(first.id),
            reason: 'a 20 minute background is not the same session',
          );
        });
      });

      test('the timed-out session is reported stopped, then the new one '
          'started', () {
        fakeAsync((async) {
          final suspended = suspendedTimerManager()..startSession();
          final first = suspended.session!;
          async.flushMicrotasks();

          suspended.handleAppPaused();
          async.elapse(background);
          suspended.handleAppResumed();
          async.flushMicrotasks();

          expect(ended.map((s) => s.id), [first.id]);
          expect(
            started.map((s) => s.id),
            [first.id, suspended.session!.id],
            reason:
                'the stop must be reported before the start that replaced '
                'it',
          );
        });
      });

      test('the stop is stamped at the pause, not at the resume', () {
        fakeAsync((async) {
          final suspended = suspendedTimerManager()..startSession();

          async.elapse(const Duration(seconds: 2));
          suspended.handleAppPaused();
          async.elapse(background);
          suspended.handleAppResumed();
          async.flushMicrotasks();

          expect(
            ended.single.duration,
            const Duration(seconds: 2).inMilliseconds,
            reason:
                'the session went inactive when the app backgrounded, so '
                'the 20 minutes in the background are not session time',
          );
        });
      });

      test('an explicit stop while paused is stamped at the pause', () {
        fakeAsync((async) {
          final suspended = suspendedTimerManager()..startSession();

          async.elapse(const Duration(seconds: 2));
          suspended.handleAppPaused();
          async.elapse(const Duration(seconds: 1));
          suspended.stopSession();
          async.flushMicrotasks();

          expect(
            ended.single.duration,
            const Duration(seconds: 2).inMilliseconds,
            reason:
                'the session went inactive at the pause, so a stop while '
                'still backgrounded does not extend it',
          );
        });
      });

      test('an explicit stop during a pause past the timeout is stamped at '
          'the pause', () {
        fakeAsync((async) {
          final suspended = suspendedTimerManager()..startSession();

          async.elapse(const Duration(seconds: 2));
          suspended.handleAppPaused();
          async.elapse(background);
          suspended.stopSession();
          async.flushMicrotasks();

          expect(
            ended.single.duration,
            const Duration(seconds: 2).inMilliseconds,
            reason:
                'a stop that only lands after the timeout must make the '
                'same attribution the timeout paths make',
          );
        });
      });

      test('an explicit stop while active is stamped at the stop', () {
        fakeAsync((async) {
          final suspended = suspendedTimerManager()..startSession();

          async.elapse(const Duration(seconds: 2));
          suspended.handleAppPaused();
          async.elapse(const Duration(seconds: 1));
          suspended.handleAppResumed();
          async.elapse(const Duration(seconds: 2));
          suspended.stopSession();
          async.flushMicrotasks();

          expect(
            ended.single.duration,
            const Duration(seconds: 5).inMilliseconds,
            reason:
                'a resumed session is active again, so its stop is '
                'measured to now, background dwell included',
          );
        });
      });

      test('a resume inside the timeout still resumes the same session', () {
        fakeAsync((async) {
          final suspended = suspendedTimerManager()..startSession();
          final first = suspended.session!;
          async.flushMicrotasks();

          suspended.handleAppPaused();
          async.elapse(timeout - const Duration(milliseconds: 1));
          suspended.handleAppResumed();
          async.flushMicrotasks();

          expect(suspended.state, SessionState.active);
          expect(suspended.session!.id, first.id);
          expect(ended, isEmpty, reason: 'resuming is not a boundary');
          expect(started.map((s) => s.id), [first.id]);
        });
      });

      test('an explicit stop is not resurrected by a late resume', () {
        fakeAsync((async) {
          final suspended = suspendedTimerManager()
            ..startSession()
            ..handleAppPaused()
            ..stopSession();
          final stoppedId = suspended.session!.id;
          async.elapse(background);
          suspended.handleAppResumed();
          async.flushMicrotasks();

          expect(
            suspended.state,
            SessionState.stopped,
            reason: 'the elapsed-time path must not override an explicit stop',
          );
          expect(suspended.session!.id, stoppedId);
        });
      });

      test('the timer path stamps the stop at the pause too', () {
        // The real timer, on a platform that runs it. Both paths have to
        // attribute the stop the same way or the same background produces two
        // different durations.
        fakeAsync((async) {
          final timed = SessionManager(
            appId: 'testApp1',
            sessionTimeout: timeout,
            generateId: () => 'abcd${idCounter++}000-fake-uuid-value',
            onSessionEnded: (s) async => ended.add(s),
          );
          ended = [];

          timed.startSession();
          async.elapse(const Duration(seconds: 2));
          timed.handleAppPaused();
          async
            ..elapse(timeout)
            ..flushMicrotasks();

          expect(timed.state, SessionState.stopped);
          expect(
            ended.single.duration,
            const Duration(seconds: 2).inMilliseconds,
            reason: 'not 2s + the timeout window',
          );
        });
      });
      test('a session started while backgrounded starts paused', () {
        // Without tracking the app's own foreground state this session would
        // be active with no pause timestamp and no timer, so it could not time
        // out until the next full pause/resume cycle.
        fakeAsync((async) {
          ended = [];
          final timed =
              SessionManager(
                  appId: 'testApp1',
                  sessionTimeout: timeout,
                  generateId: () => 'abcd${idCounter++}000-fake-uuid-value',
                  onSessionEnded: (s) async => ended.add(s),
                )
                ..startSession()
                ..handleAppPaused();

          async
            ..elapse(timeout)
            ..flushMicrotasks();
          expect(
            timed.state,
            SessionState.stopped,
            reason: 'the first session timed out while backgrounded',
          );

          // Still backgrounded: nothing has resumed.
          timed.startSession();

          expect(
            timed.state,
            SessionState.paused,
            reason: 'a session cannot be active while the app is not',
          );
          async
            ..elapse(timeout)
            ..flushMicrotasks();
          expect(
            timed.state,
            SessionState.stopped,
            reason: 'the second session has to be able to time out too',
          );
          expect(ended, hasLength(2));
        });
      });

      test('a session started after a resume is active', () {
        fakeAsync((async) {
          final timed =
              SessionManager(
                  appId: 'testApp1',
                  sessionTimeout: timeout,
                  generateId: () => 'abcd${idCounter++}000-fake-uuid-value',
                )
                ..startSession()
                ..handleAppPaused();

          async.elapse(timeout);
          timed
            ..handleAppResumed()
            ..startSession();

          expect(timed.state, SessionState.active);
        });
      });
    });

    group('Session equality', () {
      test('same values are equal with matching hashCodes', () {
        const a = Session(
          id: 'abc-20260811-120000000',
          startTimestamp: '2026-08-11T12:00:00.000Z',
          stopTimestamp: '2026-08-11T12:05:00.000Z',
          duration: 300000,
        );
        const b = Session(
          id: 'abc-20260811-120000000',
          startTimestamp: '2026-08-11T12:00:00.000Z',
          stopTimestamp: '2026-08-11T12:05:00.000Z',
          duration: 300000,
        );
        expect(a, equals(b));
        expect(a.hashCode, equals(b.hashCode));
      });

      test('different values are not equal', () {
        const a = Session(
          id: 'abc-20260811-120000000',
          startTimestamp: '2026-08-11T12:00:00.000Z',
        );
        const b = Session(
          id: 'xyz-20260811-130000000',
          startTimestamp: '2026-08-11T13:00:00.000Z',
        );
        expect(a, isNot(equals(b)));
      });
    });
  });
}
