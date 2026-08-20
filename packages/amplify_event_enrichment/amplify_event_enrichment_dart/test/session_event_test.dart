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

  /// Only the session-boundary events, so counts and ordering are unaffected by
  /// whatever the test recorded to move a session along.
  List<EnrichedEvent> get sessionEvents => events
      .where(
        (e) =>
            e.eventType == zSessionStartEventType ||
            e.eventType == zSessionStopEventType,
      )
      .toList();

  List<EnrichedEvent> get sessionStarts =>
      events.where((e) => e.eventType == zSessionStartEventType).toList();

  List<EnrichedEvent> get sessionStops =>
      events.where((e) => e.eventType == zSessionStopEventType).toList();

  List<String> get types => events.map((e) => e.eventType).toList();
}

/// Records when each send begins and completes, so a test can tell an ordered
/// hand-off from two sends that are in flight at the same time. A sender that
/// appends synchronously cannot see the difference.
class _InterleavingSender implements Sender {
  final List<String> log = [];

  @override
  Future<void> send(EnrichedEvent event) async {
    log.add('${event.eventType} begin');
    await Future<void>.delayed(Duration.zero);
    log.add('${event.eventType} end');
  }
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
  group('session event emission', () {
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

    group('emits a start', () {
      test('at construction when autoSessionTracking is on', () async {
        // The client under test is built in setUp, so the start is already out.
        await pumpEventQueue();

        expect(sender.sessionStarts, hasLength(1));
        final event = sender.sessionStarts.single;
        expect(event.eventType, '_session.start');
        expect(event.session.id, client.sessionManager.session!.id);
        expect(event.session.startTimestamp, isNotEmpty);
        expect(
          event.session.stopTimestamp,
          isNull,
          reason: 'a session that just started has not stopped',
        );
        expect(event.session.duration, isNull);
      });

      test('ahead of an event recorded straight after construction', () async {
        // The eager start has no caller to await it, so this only holds
        // because a start with nothing to displace is reported synchronously.
        final eagerSender = _RecordingSender();
        final eagerClient = buildClient(eagerSender);
        await eagerClient.record('first');

        expect(eagerSender.types, [zSessionStartEventType, 'first']);
        await eagerClient.close();
      });

      test('with the same enrichment a recorded event gets', () async {
        final enrichedSender = _RecordingSender();
        final enrichedClient =
            buildClient(enrichedSender, autoSessionTracking: false)
              ..setUserId('user-1')
              ..addGlobalAttribute('env', 'prod')
              ..addGlobalMetric('score', 4.5);
        addTearDown(enrichedClient.close);

        await enrichedClient.startSession();

        final event = enrichedSender.sessionStarts.single;
        expect(event.app.appId, 'testApp1');
        expect(event.device.platform, 'iOS');
        expect(event.sdk.name, 'amplify-flutter');
        expect(event.clientId, 'device-123');
        expect(event.userId, 'user-1');
        expect(event.eventId, isNotEmpty);
        // Pinpoint stamped its globals on _session.start too.
        expect(event.attributes['env'], 'prod');
        expect(event.metrics['score'], 4.5);
      });

      test('on an explicit startSession(), after the displaced stop', () async {
        final displaced = client.sessionManager.session!;

        await client.startSession();

        // Pinpoint stopped the running session before starting its
        // replacement, so the pair must arrive in that order.
        expect(sender.sessionEvents.map((e) => e.eventType), [
          zSessionStartEventType,
          zSessionStopEventType,
          zSessionStartEventType,
        ]);
        expect(sender.sessionStops.single.session.id, displaced.id);
        expect(sender.sessionStarts.last.session.id, isNot(displaced.id));
        expect(
          sender.sessionStarts.last.session.id,
          client.sessionManager.session!.id,
        );
      });

      test("on record()'s lazy start, before the recorded event", () async {
        final lazySender = _RecordingSender();
        final lazyClient = buildClient(lazySender, autoSessionTracking: false);
        addTearDown(lazyClient.close);

        await lazyClient.record('first');

        expect(lazySender.types, [zSessionStartEventType, 'first']);
        expect(
          lazySender.sessionStarts.single.session.id,
          lazyClient.sessionManager.session!.id,
        );
      });

      test('when a resume follows a session timeout', () {
        fakeAsync((async) {
          final cycleSender = _RecordingSender();
          final cycleClient = buildClient(cycleSender);
          final first = cycleClient.sessionManager.session!;

          cycleClient.handleAppPaused();
          async
            ..elapse(timeout)
            ..flushMicrotasks();
          cycleClient.handleAppResumed();
          async.flushMicrotasks();

          final second = cycleClient.sessionManager.session!;
          expect(second.id, isNot(first.id));
          expect(cycleSender.sessionStarts, hasLength(2));
          expect(cycleSender.sessionStarts.last.session.id, second.id);
        });
      });
    });

    group('ordering', () {
      test('a displaced stop completes before the new start begins', () async {
        final seq = _InterleavingSender();
        final seqClient = buildClient(seq, autoSessionTracking: false);
        addTearDown(seqClient.close);

        await seqClient.startSession();
        seq.log.clear();

        await seqClient.startSession();

        // Interleaved begins would mean two sends in flight at once. The stop
        // must be fully handed off before the start that replaced it starts.
        expect(seq.log, [
          '$zSessionStopEventType begin',
          '$zSessionStopEventType end',
          '$zSessionStartEventType begin',
          '$zSessionStartEventType end',
        ]);
      });

      test("a lazy start completes before record()'s own send", () async {
        final seq = _InterleavingSender();
        final seqClient = buildClient(seq, autoSessionTracking: false);
        addTearDown(seqClient.close);

        await seqClient.record('first');

        expect(seq.log, [
          '$zSessionStartEventType begin',
          '$zSessionStartEventType end',
          'first begin',
          'first end',
        ]);
      });
    });

    group('does not emit a start', () {
      test('at construction when autoSessionTracking is off', () async {
        final idleSender = _RecordingSender();
        final idle = buildClient(idleSender, autoSessionTracking: false);
        await pumpEventQueue();

        expect(idleSender.sessionEvents, isEmpty);
        await idle.close();
      });

      test('when a pause and resume stay within the timeout', () {
        fakeAsync((async) {
          final pauseSender = _RecordingSender();
          final pauseClient = buildClient(pauseSender);
          final started = pauseClient.sessionManager.session!;
          async.flushMicrotasks();

          pauseClient.handleAppPaused();
          async.elapse(const Duration(seconds: 3));
          pauseClient.handleAppResumed();
          async.flushMicrotasks();

          expect(
            pauseSender.sessionStarts,
            hasLength(1),
            reason: 'still the same session, so no new boundary',
          );
          expect(pauseSender.sessionStops, isEmpty);
          expect(pauseClient.sessionManager.session!.id, started.id);
        });
      });

      test('when a resume follows an explicit stop', () async {
        await client.stopSession();
        client.handleAppResumed();
        await pumpEventQueue();

        expect(sender.sessionStarts, hasLength(1));
        expect(client.sessionManager.state, SessionState.stopped);
      });

      test('for a stop, a close, or a cleared session', () async {
        await client.stopSession();
        await client.close();

        expect(
          sender.sessionStarts,
          hasLength(1),
          reason: 'only the construction start; ending never starts anything',
        );
      });
    });

    group('emits a stop', () {
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

    group('does not emit a stop', () {
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
          expect(sender.types, [
            zSessionStartEventType,
            'first',
            zSessionStopEventType,
            zSessionStartEventType,
            'second',
          ]);
        },
      );
    });

    test('each session is reported exactly once across a timeout cycle', () {
      // Two sessions live and die here, so two starts and two stops, one pair
      // per session, interleaved and never doubled.
      fakeAsync((async) {
        final cycleSender = _RecordingSender();
        final cycleClient = buildClient(cycleSender);
        final first = cycleClient.sessionManager.session!;
        async.flushMicrotasks();

        cycleClient.handleAppPaused();
        async
          ..elapse(timeout)
          ..flushMicrotasks();
        cycleClient.handleAppResumed();
        async.flushMicrotasks();
        final second = cycleClient.sessionManager.session!;
        expect(second.id, isNot(first.id));

        cycleClient.stopSession();
        async.flushMicrotasks();

        expect(cycleSender.sessionEvents.map((e) => e.eventType), [
          zSessionStartEventType,
          zSessionStopEventType,
          zSessionStartEventType,
          zSessionStopEventType,
        ]);
        expect(cycleSender.sessionEvents.map((e) => e.session.id), [
          first.id,
          first.id,
          second.id,
          second.id,
        ]);
      });
    });

    group('sender failures', () {
      test('are logged rather than thrown out of startSession()', () async {
        final failing = _AsyncFailingSender();
        final failingClient = buildClient(failing, autoSessionTracking: false);

        // The sender suspends before failing, so this only passes because the
        // emission awaits send() inside its own guard. An error escaping to
        // the zone fails this test.
        await expectLater(failingClient.startSession(), completes);
        expect(failing.sendCount, 1, reason: 'the start was attempted');
        expect(failingClient.sessionManager.state, SessionState.active);

        await expectLater(failingClient.close(), completes);
      });

      test('are logged rather than thrown out of stopSession()', () async {
        final failing = _AsyncFailingSender();
        final failingClient = buildClient(failing, autoSessionTracking: false);

        await expectLater(failingClient.startSession(), completes);
        await expectLater(failingClient.stopSession(), completes);
        expect(
          failing.sendCount,
          2,
          reason: 'both the start and the stop were attempted and both failed',
        );
        expect(failingClient.sessionManager.state, SessionState.stopped);

        await expectLater(failingClient.close(), completes);
      });

      test('are logged rather than thrown out of close()', () async {
        final failing = _AsyncFailingSender();
        final failingClient = buildClient(failing);

        await expectLater(failingClient.close(), completes);
        expect(
          failing.sendCount,
          2,
          reason: "the construction start and close's stop both failed",
        );
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

    test('no session event is emitted without a sender', () async {
      final senderless = EventEnrichmentClient(
        appMetadata: app,
        deviceMetadata: device,
        sdkMetadata: sdk,
        clientId: 'device-123',
      );

      // Nothing to assert on but the absence of a throw: the emission path is
      // a no-op with no sender configured.
      await expectLater(senderless.startSession(), completes);
      await expectLater(senderless.stopSession(), completes);
      await expectLater(senderless.close(), completes);
    });
  });
}
