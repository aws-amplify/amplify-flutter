// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/amplify_event_enrichment.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:fake_async/fake_async.dart';
import 'package:test/test.dart';

class _RecordingSender implements Sender {
  final List<EnrichedEvent> events = [];

  @override
  Future<void> send(EnrichedEvent event) async => events.add(event);

  /// Only the session-stop events, so counts are unaffected by whatever the
  /// test recorded to get a session started.
  List<EnrichedEvent> get sessionStops =>
      events.where((e) => e.eventType == zSessionStopEventType).toList();
}

/// Fails after suspending — the case a synchronous throw does not cover, and
/// the one that escapes as an unhandled async error if the emission is not
/// awaited inside its own guard.
class _AsyncFailingSender implements Sender {
  int sendCount = 0;

  @override
  Future<void> send(EnrichedEvent event) async {
    sendCount++;
    await Future<void>.delayed(Duration.zero);
    throw StateError('async sender failure');
  }
}

void main() {
  group('session stop event emission', () {
    const app = AppMetadata(
      appId: 'testApp1',
      packageName: 'com.example',
      versionName: '1.0.0',
      title: 'Test',
    );
    const device = DeviceMetadata(
      platform: 'iOS',
      platformVersion: '17.0',
      manufacturer: 'Apple',
      model: 'iPhone',
      locale: 'en_US',
    );
    const sdk = SdkMetadata(name: 'amplify-flutter', version: '2.0.0');
    const timeout = Duration(seconds: 5);

    EventEnrichmentClient buildClient(
      Sender sender, {
      bool autoSessionTracking = true,
    }) => EventEnrichmentClient(
      appMetadata: app,
      deviceMetadata: device,
      sdkMetadata: sdk,
      clientId: 'device-123',
      sender: sender,
      options: EventEnrichmentClientOptions(
        autoSessionTracking: autoSessionTracking,
        sessionTimeout: timeout,
      ),
    );

    late _RecordingSender sender;
    late EventEnrichmentClient client;

    setUp(() {
      sender = _RecordingSender();
      client = buildClient(sender);
    });

    group('emits', () {
      test(
        'on an explicit stopSession(), carrying the stopped session',
        () async {
          final started = client.sessionManager.session!;

          await client.stopSession();

          expect(sender.sessionStops, hasLength(1));
          final event = sender.sessionStops.single;
          expect(event.eventType, '_session.stop');
          expect(
            event.session.id,
            started.id,
            reason: 'the event must carry the session that ended',
          );
          expect(event.session.startTimestamp, started.startTimestamp);
          expect(event.session.stopTimestamp, isNotNull);
          expect(event.session.duration, isNotNull);
        },
      );

      test('with the same enrichment a recorded event gets', () async {
        client
          ..setUserId('user-1')
          ..addGlobalAttribute('env', 'prod')
          ..addGlobalMetric('score', 4.5);

        await client.stopSession();

        final event = sender.sessionStops.single;
        expect(event.app.appId, 'testApp1');
        expect(event.device.platform, 'iOS');
        expect(event.sdk.name, 'amplify-flutter');
        expect(event.clientId, 'device-123');
        expect(event.userId, 'user-1');
        expect(event.eventId, isNotEmpty);
        // Pinpoint stamped its globals on _session.stop too, so these are
        // deliberately present rather than stripped.
        expect(event.attributes['env'], 'prod');
        expect(event.metrics['score'], 4.5);
      });

      test('when a paused session is stopped', () async {
        client.handleAppPaused();
        expect(client.sessionManager.state, SessionState.paused);

        await client.stopSession();

        expect(sender.sessionStops, hasLength(1));
      });

      test('when the session timeout expires while backgrounded', () {
        fakeAsync((async) {
          final timeoutSender = _RecordingSender();
          final timeoutClient = buildClient(timeoutSender);
          final started = timeoutClient.sessionManager.session!;

          timeoutClient.handleAppPaused();
          // The timer callback has no caller to await, so drain the emission
          // the way the event loop would.
          async
            ..elapse(timeout)
            ..flushMicrotasks();

          expect(timeoutSender.sessionStops, hasLength(1));
          expect(timeoutSender.sessionStops.single.session.id, started.id);
          expect(timeoutSender.sessionStops.single.session.duration, isNotNull);
        });
      });

      test('on close() when a session is still running', () async {
        final started = client.sessionManager.session!;

        await client.close();

        expect(sender.sessionStops, hasLength(1));
        expect(sender.sessionStops.single.session.id, started.id);
      });

      test('for the session startSession() displaces', () async {
        final displaced = client.sessionManager.session!;

        await client.startSession();

        expect(sender.sessionStops, hasLength(1));
        expect(
          sender.sessionStops.single.session.id,
          displaced.id,
          reason: 'the displaced session is the one that ended',
        );
        expect(
          client.sessionManager.session!.id,
          isNot(displaced.id),
          reason: 'a new session must be active afterwards',
        );
      });
    });

    group('does not emit', () {
      test('when no session was ever started', () async {
        final idle = buildClient(sender, autoSessionTracking: false);
        expect(idle.sessionManager.session, isNull);

        await idle.stopSession();

        expect(sender.sessionStops, isEmpty);
        await idle.close();
      });

      test('on close() when no session was ever started', () async {
        final idle = buildClient(sender, autoSessionTracking: false);

        await idle.close();

        expect(sender.sessionStops, isEmpty);
      });

      test('a second time when stopSession() is called twice', () async {
        await client.stopSession();
        await client.stopSession();

        expect(sender.sessionStops, hasLength(1));
      });

      test('a second time on close() after an explicit stop', () async {
        await client.stopSession();
        await client.close();

        expect(
          sender.sessionStops,
          hasLength(1),
          reason: 'the session already ended, so close() has nothing to end',
        );
      });

      test('a second time on close() after a session timeout', () {
        fakeAsync((async) {
          final timeoutSender = _RecordingSender();
          final timeoutClient = buildClient(timeoutSender)..handleAppPaused();

          async
            ..elapse(timeout)
            ..flushMicrotasks();
          expect(timeoutSender.sessionStops, hasLength(1));

          timeoutClient.close();
          async.flushMicrotasks();

          expect(timeoutSender.sessionStops, hasLength(1));
        });
      });
      test('on the first startSession() when nothing is running', () async {
        final idle = buildClient(sender, autoSessionTracking: false);

        await idle.startSession();

        expect(sender.sessionStops, isEmpty);
        expect(idle.sessionManager.state, SessionState.active);
        await idle.close();
      });

      test('when a pause and resume stay within the timeout', () {
        fakeAsync((async) {
          final pauseSender = _RecordingSender();
          final pauseClient = buildClient(pauseSender);
          final started = pauseClient.sessionManager.session!;

          pauseClient.handleAppPaused();
          async.elapse(const Duration(seconds: 3));
          pauseClient.handleAppResumed();
          async.flushMicrotasks();

          expect(pauseSender.sessionStops, isEmpty);
          expect(pauseClient.sessionManager.session!.id, started.id);
        });
      });

      test('again when handleAppResumed follows an explicit stop', () async {
        await client.stopSession();
        client.handleAppResumed();

        expect(sender.sessionStops, hasLength(1));
        expect(client.sessionManager.state, SessionState.stopped);
      });

      test('again from the pause timer after an explicit stop', () {
        // The pending timeout still fires after an explicit stop (the stop
        // cancels the timer, but a timer that slipped through would find the
        // session already ended). Either way it must not report it twice.
        fakeAsync((async) {
          final lateSender = _RecordingSender();
          buildClient(lateSender)
            ..handleAppPaused()
            ..stopSession();

          async
            ..flushMicrotasks()
            ..elapse(timeout * 2)
            ..flushMicrotasks();

          expect(lateSender.sessionStops, hasLength(1));
        });
      });

      test('again from the pause timer after close()', () {
        fakeAsync((async) {
          final lateSender = _RecordingSender();
          buildClient(lateSender)
            ..handleAppPaused()
            ..close();

          async
            ..flushMicrotasks()
            ..elapse(timeout * 2)
            ..flushMicrotasks();

          expect(lateSender.sessionStops, hasLength(1));
        });
      });

      test(
        'again when record() lazily starts a session after a stop',
        () async {
          await client.record('first');
          await client.stopSession();
          await client.record('second');

          expect(
            sender.sessionStops,
            hasLength(1),
            reason: 'the lazy start displaces nothing, so it ends nothing',
          );
          expect(sender.events.map((e) => e.eventType), [
            'first',
            zSessionStopEventType,
            'second',
          ]);
        },
      );
    });

    test('each session is reported exactly once across a timeout cycle', () {
      // Two sessions live and die here, so two stops — one per session, and
      // never two for the same one.
      fakeAsync((async) {
        final cycleSender = _RecordingSender();
        final cycleClient = buildClient(cycleSender);
        final first = cycleClient.sessionManager.session!;

        cycleClient.handleAppPaused();
        async
          ..elapse(timeout)
          ..flushMicrotasks();
        cycleClient.handleAppResumed();
        final second = cycleClient.sessionManager.session!;
        expect(second.id, isNot(first.id));

        cycleClient.stopSession();
        async.flushMicrotasks();

        expect(cycleSender.sessionStops.map((e) => e.session.id), [
          first.id,
          second.id,
        ]);
      });
    });

    group('sender failures', () {
      test('are logged rather than thrown out of stopSession()', () async {
        final failing = _AsyncFailingSender();
        final failingClient = buildClient(failing);

        // The sender suspends before failing, so this only passes because the
        // emission awaits send() inside its own guard. An error escaping to
        // the zone fails this test.
        await expectLater(failingClient.stopSession(), completes);
        expect(failing.sendCount, 1);
        expect(failingClient.sessionManager.state, SessionState.stopped);

        await expectLater(failingClient.close(), completes);
      });

      test('are logged rather than thrown out of close()', () async {
        final failing = _AsyncFailingSender();
        final failingClient = buildClient(failing);

        await expectLater(failingClient.close(), completes);
        expect(failing.sendCount, 1);
        expect(failingClient.isClosed, isTrue);
      });

      test('do not stop a later session from being started', () async {
        final failing = _AsyncFailingSender();
        final failingClient = buildClient(failing);

        await failingClient.stopSession();
        final result = await failingClient.record('after_failure');

        expect(
          result,
          isA<Error<EnrichedEvent>>(),
          reason: 'record() still surfaces its own send failure',
        );
        expect(failingClient.sessionManager.state, SessionState.active);
        await failingClient.close();
      });
    });

    test('no session stop event is emitted without a sender', () async {
      final senderless = EventEnrichmentClient(
        appMetadata: app,
        deviceMetadata: device,
        sdkMetadata: sdk,
        clientId: 'device-123',
      );

      // Nothing to assert on but the absence of a throw: the emission path is
      // a no-op with no sender configured.
      await expectLater(senderless.stopSession(), completes);
      await expectLater(senderless.close(), completes);
    });
  });
}
