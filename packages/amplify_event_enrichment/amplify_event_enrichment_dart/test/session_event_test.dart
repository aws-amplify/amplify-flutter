// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_event_enrichment_dart/amplify_event_enrichment_dart.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:fake_async/fake_async.dart';
import 'package:test/test.dart';

/// A timer that never runs its callback, standing in for iOS suspending the
/// Dart event loop while the app is backgrounded.
class _NeverFiringTimer implements Timer {
  @override
  void cancel() {}

  @override
  bool get isActive => true;

  @override
  int get tick => 0;
}

class _RecordingSender implements EnrichedEventSender {
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
class _InterleavingSender implements EnrichedEventSender {
  final List<String> log = [];

  @override
  Future<void> send(EnrichedEvent event) async {
    log.add('${event.eventType} begin');
    await Future<void>.delayed(Duration.zero);
    log.add('${event.eventType} end');
  }
}

/// Holds one event type in flight until the test releases it, so other calls
/// can run while an emission is still pending.
class _GatedSender implements EnrichedEventSender {
  _GatedSender(this._gatedType);

  final String _gatedType;
  final Completer<void> _gate = Completer<void>();
  final List<EnrichedEvent> events = [];

  List<String> get types => events.map((e) => e.eventType).toList();

  /// Only the session boundaries, so a record still queued behind the gate
  /// cannot shift the sequence under test.
  List<EnrichedEvent> get boundaries => events
      .where(
        (e) =>
            e.eventType == zSessionStartEventType ||
            e.eventType == zSessionStopEventType,
      )
      .toList();

  void release() => _gate.complete();

  @override
  Future<void> send(EnrichedEvent event) async {
    events.add(event);
    if (event.eventType == _gatedType) await _gate.future;
  }
}

/// Fails after suspending. The case a synchronous throw does not cover, and
/// the one that escapes as an unhandled async error if the emission is not
/// awaited inside its own guard.
class _AsyncFailingSender implements EnrichedEventSender {
  int sendCount = 0;

  @override
  Future<void> send(EnrichedEvent event) async {
    sendCount++;
    await Future<void>.delayed(Duration.zero);
    throw StateError('async sender failure');
  }
}

/// Fails one event type and records the rest, so a test can tell whether a
/// failed send stalls the queue behind it.
class _SelectivelyFailingSender implements EnrichedEventSender {
  _SelectivelyFailingSender(this._failingType);

  final String _failingType;
  final List<String> types = [];

  @override
  Future<void> send(EnrichedEvent event) async {
    types.add(event.eventType);
    await Future<void>.delayed(Duration.zero);
    if (event.eventType == _failingType) throw StateError('sender failure');
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
      EnrichedEventSender sender, {
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
        // because the record queues behind it.
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

      test('a second close() waits for the same teardown', () async {
        final seq = _InterleavingSender();
        final seqClient = buildClient(seq, autoSessionTracking: false);
        await seqClient.startSession();
        seq.log.clear();

        final first = seqClient.close();
        expect(
          seqClient.isClosed,
          isTrue,
          reason: 'closed from the first call',
        );
        final second = seqClient.close();
        await second;

        // The second caller gets the first call's future, so it cannot
        // complete while the final stop is still in flight.
        expect(seq.log, [
          '$zSessionStopEventType begin',
          '$zSessionStopEventType end',
        ]);

        await first;
        expect(
          seq.log,
          hasLength(2),
          reason: 'the teardown ran once, so there is only one stop',
        );
      });
    });

    group('close() racing a record()', () {
      test('does not fail the record whose session the close drops', () async {
        // The lazy start is still reporting when close() ends that session and
        // clears it, so the session the record belongs to has to come out of
        // the start itself and not out of a read taken afterwards.
        final gated = _GatedSender(zSessionStartEventType);
        final racing = buildClient(gated, autoSessionTracking: false);

        final recorded = racing.record('button_clicked');
        final started = racing.sessionManager.session!;
        final teardown = racing.close();
        await pumpEventQueue();
        gated.release();

        final result = await recorded;
        await teardown;

        expect(
          result,
          isA<Ok<EnrichedEvent>>(),
          reason: 'the record was accepted before the close, so it completes',
        );
        expect((result as Ok<EnrichedEvent>).value.session.id, started.id);
        expect(gated.types, contains('button_clicked'));
        expect(racing.sessionManager.session, isNull);
      });

      test(
        'rejects a record() made while the final stop is in flight',
        () async {
          // Same turn as the close(), with its stop emission still pending: the
          // closed flag has to be set before the teardown starts, or an event
          // recorded here lands behind the final stop.
          final gated = _GatedSender(zSessionStopEventType);
          final closing = buildClient(gated, autoSessionTracking: false);
          await closing.startSession();

          final teardown = closing.close();
          final rejected = closing.record('too_late');

          final result = await rejected;
          expect(result, isA<Error<EnrichedEvent>>());
          expect(
            (result as Error<EnrichedEvent>).error,
            isA<EventEnrichmentClosedException>(),
          );

          gated.release();
          await teardown;

          expect(
            gated.types,
            isNot(contains('too_late')),
            reason: 'an event recorded after close() must never be sent',
          );
          expect(gated.types, [zSessionStartEventType, zSessionStopEventType]);
        },
      );

      test(
        'sends the record before the final stop on an active session',
        () async {
          // The record is past the closed check, so close() owes it a send ahead
          // of the final stop even though the record suspends in between.
          final gated = _GatedSender('button_clicked');
          final racing = buildClient(gated);
          await pumpEventQueue();

          final order = <String>[];
          final recorded = racing
              .record('button_clicked')
              .whenComplete(() => order.add('record'));
          final teardown = racing.close().whenComplete(
            () => order.add('close'),
          );
          await pumpEventQueue();

          expect(
            order,
            isEmpty,
            reason: 'close() cannot finish while the record is still sending',
          );
          expect(gated.types, [zSessionStartEventType, 'button_clicked']);

          gated.release();
          await recorded;
          await teardown;

          expect(gated.types, [
            zSessionStartEventType,
            'button_clicked',
            zSessionStopEventType,
          ], reason: 'the final stop is the last event the sender sees');
          expect(order, ['record', 'close']);
        },
      );

      test(
        'sends the record before the final stop on a fresh session',
        () async {
          // Same race, but the record has to start the session first, so it
          // suspends twice before its own send.
          final gated = _GatedSender('button_clicked');
          final racing = buildClient(gated, autoSessionTracking: false);

          final order = <String>[];
          final recorded = racing
              .record('button_clicked')
              .whenComplete(() => order.add('record'));
          final teardown = racing.close().whenComplete(
            () => order.add('close'),
          );
          await pumpEventQueue();

          expect(order, isEmpty);
          expect(gated.types, [zSessionStartEventType, 'button_clicked']);

          gated.release();
          await recorded;
          await teardown;

          expect(gated.types, [
            zSessionStartEventType,
            'button_clicked',
            zSessionStopEventType,
          ]);
          expect(order, ['record', 'close']);
        },
      );

      test('keeps the lifecycle callbacks inert while close() drains', () {
        // close() is suspended on the record, so the session is still active
        // and a pause would arm a timer that ends it ahead of the final stop.
        fakeAsync((async) {
          final gated = _GatedSender('button_clicked');
          final racing = buildClient(gated);
          async.flushMicrotasks();

          unawaited(racing.record('button_clicked'));
          unawaited(racing.close());
          async.flushMicrotasks();

          racing.handleAppPaused();
          async.elapse(timeout * 2);

          expect(
            gated.types,
            [zSessionStartEventType, 'button_clicked'],
            reason: 'a closed client arms no pause timer, so nothing timed out',
          );

          racing.handleAppResumed();
          async.flushMicrotasks();

          expect(gated.types, [
            zSessionStartEventType,
            'button_clicked',
          ], reason: 'and no resume revives the session being torn down');

          gated.release();
          async.flushMicrotasks();

          expect(gated.types, [
            zSessionStartEventType,
            'button_clicked',
            zSessionStopEventType,
          ]);
          expect(racing.sessionManager.session, isNull);
        });
      });
    });

    group('a closed client', () {
      test('does not start a session on startSession()', () async {
        final closedSender = _RecordingSender();
        final closed = buildClient(closedSender);
        await closed.close();
        final afterClose = List.of(closedSender.types);

        await closed.startSession();
        await pumpEventQueue();

        expect(closedSender.types, afterClose);
        expect(
          closedSender.sessionStarts,
          hasLength(1),
          reason: 'only the launch start, never a start a close cannot stop',
        );
        expect(closedSender.types.last, zSessionStopEventType);
        expect(closed.sessionManager.session, isNull);
      });

      test('does not report anything on stopSession()', () async {
        final closedSender = _RecordingSender();
        final closed = buildClient(closedSender);
        await closed.close();
        final afterClose = List.of(closedSender.types);

        await closed.stopSession();
        await pumpEventQueue();

        expect(closedSender.types, afterClose);
        expect(closedSender.sessionStops, hasLength(1));
      });

      test('does not restart on handleAppResumed()', () async {
        final closedSender = _RecordingSender();
        final closed = buildClient(closedSender);
        await closed.close();
        final afterClose = List.of(closedSender.types);

        closed
          ..handleAppPaused()
          ..handleAppResumed();
        await pumpEventQueue();

        expect(closedSender.types, afterClose);
        expect(closed.sessionManager.state, SessionState.stopped);
      });

      test('stays inert when startSession() races the teardown', () async {
        // The teardown is still reporting the final stop, so a start accepted
        // here would outlive the client.
        final gated = _GatedSender(zSessionStopEventType);
        final closing = buildClient(gated);
        await pumpEventQueue();

        final teardown = closing.close();
        final revived = closing.startSession();
        await pumpEventQueue();

        gated.release();
        await revived;
        await teardown;

        expect(gated.types, [zSessionStartEventType, zSessionStopEventType]);
      });
    });

    group('a pending stop', () {
      test('reaches the sender before the start a resume reports', () {
        // The timeout ended the session and nobody awaited that report, so the
        // resume has to chain its start behind it.
        fakeAsync((async) {
          final gated = _GatedSender(zSessionStopEventType);
          final resuming = buildClient(gated);
          async.flushMicrotasks();

          resuming.handleAppPaused();
          async.elapse(timeout);

          expect(gated.types, [
            zSessionStartEventType,
            zSessionStopEventType,
          ], reason: 'the timeout fired and its stop is still in flight');

          resuming.handleAppResumed();
          async.elapse(timeout);

          expect(gated.types, [
            zSessionStartEventType,
            zSessionStopEventType,
          ], reason: 'the new start waits for the stop it replaced');

          gated.release();
          async.flushMicrotasks();

          expect(gated.types, [
            zSessionStartEventType,
            zSessionStopEventType,
            zSessionStartEventType,
          ]);
        });
      });

      test(
        'reaches the sender before the start startSession() reports',
        () async {
          final gated = _GatedSender(zSessionStopEventType);
          final restarting = buildClient(gated);
          await pumpEventQueue();

          final stopping = restarting.stopSession();
          final starting = restarting.startSession();
          await pumpEventQueue();

          expect(gated.types, [
            zSessionStartEventType,
            zSessionStopEventType,
          ], reason: 'the start cannot overtake a stop nobody awaited');

          gated.release();
          await stopping;
          await starting;

          expect(gated.types, [
            zSessionStartEventType,
            zSessionStopEventType,
            zSessionStartEventType,
          ]);
          await restarting.close();
        },
      );

      test("reaches the sender before record()'s lazy start", () async {
        final gated = _GatedSender(zSessionStopEventType);
        final recording = buildClient(gated);
        await pumpEventQueue();

        final stopping = recording.stopSession();
        final recorded = recording.record('button_clicked');
        await pumpEventQueue();

        expect(gated.types, [zSessionStartEventType, zSessionStopEventType]);

        gated.release();
        await stopping;
        await recorded;

        expect(gated.types, [
          zSessionStartEventType,
          zSessionStopEventType,
          zSessionStartEventType,
          'button_clicked',
        ], reason: 'the lazy start chains after the stop, then the event');
        await recording.close();
      });
    });

    group('a record waits for the boundaries queued ahead of it', () {
      /// A client whose pause timer never fires, so the resume, not the timer,
      /// is what ends an expired session.
      EventEnrichmentClient suspendedTimerClient(EnrichedEventSender sender) {
        final built = buildClient(sender);
        built.sessionManager.timerFactory = (_, _) => _NeverFiringTimer();
        return built;
      }

      test('when a resume past the timeout replaced the session', () {
        // The session the record names is already active, so only the queue
        // can hold the record behind that session's own start.
        fakeAsync((async) {
          final gated = _GatedSender(zSessionStopEventType);
          final resuming = suspendedTimerClient(gated);
          async.flushMicrotasks();
          final first = resuming.sessionManager.session!;

          resuming.handleAppPaused();
          async.elapse(timeout * 2);
          resuming.handleAppResumed();
          final second = resuming.sessionManager.session!;
          unawaited(resuming.record('button_clicked'));
          async.flushMicrotasks();

          expect(second.id, isNot(first.id));
          expect(gated.types, [
            zSessionStartEventType,
            zSessionStopEventType,
          ], reason: 'the gated stop holds everything queued behind it');

          gated.release();
          async.flushMicrotasks();

          expect(gated.types, [
            zSessionStartEventType,
            zSessionStopEventType,
            zSessionStartEventType,
            'button_clicked',
          ], reason: 'the record cannot precede the start of its own session');
          expect(gated.events.last.session.id, second.id);
        });
      });

      test('when an unawaited startSession() replaced the session', () async {
        final gated = _GatedSender(zSessionStopEventType);
        final restarting = buildClient(gated);
        await pumpEventQueue();
        final first = restarting.sessionManager.session!;

        unawaited(restarting.startSession());
        final second = restarting.sessionManager.session!;
        final recorded = restarting.record('button_clicked');
        await pumpEventQueue();

        expect(second.id, isNot(first.id));
        expect(gated.types, [zSessionStartEventType, zSessionStopEventType]);

        gated.release();
        await recorded;

        expect(gated.types, [
          zSessionStartEventType,
          zSessionStopEventType,
          zSessionStartEventType,
          'button_clicked',
        ]);
        expect(gated.events.last.session.id, second.id);
        await restarting.close();
      });
    });

    group('every stop precedes its own start', () {
      test('across two restarts nobody awaited', () async {
        // Two ends are outstanding at once, so a design that remembers only the
        // most recent one lets the older start fall behind the newer stop.
        final gated = _GatedSender(zSessionStopEventType);
        final restarting = buildClient(gated);
        await pumpEventQueue();
        final a = restarting.sessionManager.session!;

        unawaited(restarting.startSession());
        final b = restarting.sessionManager.session!;
        unawaited(restarting.startSession());
        final c = restarting.sessionManager.session!;
        await pumpEventQueue();

        gated.release();
        await pumpEventQueue();

        expect(gated.boundaries.map((e) => e.eventType), [
          zSessionStartEventType,
          zSessionStopEventType,
          zSessionStartEventType,
          zSessionStopEventType,
          zSessionStartEventType,
        ]);
        expect(gated.boundaries.map((e) => e.session.id), [
          a.id,
          a.id,
          b.id,
          b.id,
          c.id,
        ], reason: 'each pair belongs to one session, in that session order');
        await restarting.close();
      });

      test('across records that replace expired paused sessions', () {
        fakeAsync((async) {
          final gated = _GatedSender(zSessionStopEventType);
          final backgrounded = buildClient(gated);
          backgrounded.sessionManager.timerFactory = (_, _) =>
              _NeverFiringTimer();
          async.flushMicrotasks();
          final a = backgrounded.sessionManager.session!;

          backgrounded.handleAppPaused();
          async.elapse(timeout * 2);
          unawaited(backgrounded.record('first'));
          async.flushMicrotasks();
          final b = backgrounded.sessionManager.session!;

          async.elapse(timeout * 2);
          unawaited(backgrounded.record('second'));
          async.flushMicrotasks();
          final c = backgrounded.sessionManager.session!;

          gated.release();
          async.flushMicrotasks();

          expect(gated.boundaries.map((e) => e.eventType), [
            zSessionStartEventType,
            zSessionStopEventType,
            zSessionStartEventType,
            zSessionStopEventType,
            zSessionStartEventType,
          ]);
          expect(gated.boundaries.map((e) => e.session.id), [
            a.id,
            a.id,
            b.id,
            b.id,
            c.id,
          ]);
        });
      });
    });

    group('close() waits for a stop already in flight', () {
      test('one the pause timer started', () {
        fakeAsync((async) {
          final gated = _GatedSender(zSessionStopEventType);
          final closing = buildClient(gated);
          async.flushMicrotasks();

          closing.handleAppPaused();
          async
            ..elapse(timeout)
            ..flushMicrotasks();

          expect(gated.types, [
            zSessionStartEventType,
            zSessionStopEventType,
          ], reason: 'the timeout ended the session and its stop is pending');

          final order = <String>[];
          unawaited(closing.close().whenComplete(() => order.add('close')));
          async.flushMicrotasks();

          expect(
            order,
            isEmpty,
            reason: 'close() has nothing left to end but must still wait',
          );

          gated.release();
          async.flushMicrotasks();

          expect(order, ['close']);
          expect(gated.types, [
            zSessionStartEventType,
            zSessionStopEventType,
          ], reason: 'the pending stop is the only one, and the last event');
        });
      });

      test('one an unawaited stopSession() started', () async {
        final gated = _GatedSender(zSessionStopEventType);
        final closing = buildClient(gated);
        await pumpEventQueue();

        final order = <String>[];
        final stopping = closing.stopSession().whenComplete(
          () => order.add('stop'),
        );
        await pumpEventQueue();

        final teardown = closing.close().whenComplete(() => order.add('close'));
        await pumpEventQueue();

        expect(
          order,
          isEmpty,
          reason: 'close() found nothing to end but a stop is still sending',
        );
        expect(gated.types, [zSessionStartEventType, zSessionStopEventType]);

        gated.release();
        await stopping;
        await teardown;

        // Both settle off the same send, and which callback observes it first
        // is a future-propagation detail, so only completion is pinned.
        expect(order, unorderedEquals(['stop', 'close']));
        expect(gated.types, [zSessionStartEventType, zSessionStopEventType]);
      });
    });

    group('a cleared session manager', () {
      test('reports nothing when driven directly after close()', () async {
        // The manager is reachable through the public getter, so the guards on
        // the client alone would not stop a start the client cannot ever stop.
        final closedSender = _RecordingSender();
        final closed = buildClient(closedSender);
        await closed.close();
        final afterClose = List.of(closedSender.types);
        final manager = closed.sessionManager;

        await manager.startSession();
        manager.handleAppResumed();
        await manager.stopSession();
        manager.handleAppPaused();
        await pumpEventQueue();

        expect(
          closedSender.types,
          afterClose,
          reason: 'nothing a closed client cannot stop may be started',
        );
        expect(closedSender.sessionStarts, hasLength(1));
        expect(closedSender.types.last, zSessionStopEventType);
        expect(manager.session, isNull);
        expect(manager.state, SessionState.stopped);
      });

      test('reports no start made through the getter during close()', () async {
        // close() is waiting on the final stop, and the getter still hands
        // out the manager.
        final gated = _GatedSender(zSessionStopEventType);
        final closing = buildClient(gated);
        await pumpEventQueue();

        final teardown = closing.close();
        final revived = closing.sessionManager.startSession();
        await pumpEventQueue();
        gated.release();
        await revived;
        await teardown;
        await pumpEventQueue();

        expect(gated.types, [zSessionStartEventType, zSessionStopEventType]);
        expect(closing.sessionManager.session, isNull);
      });

      test(
        'rejects sessionForRecording() in the same turn as close()',
        () async {
          final closingSender = _RecordingSender();
          final closing = buildClient(closingSender);
          await pumpEventQueue();

          final teardown = closing.close();
          expect(closing.sessionManager.sessionForRecording, throwsStateError);
          await teardown;
          await pumpEventQueue();

          expect(closingSender.types, [
            zSessionStartEventType,
            zSessionStopEventType,
          ], reason: 'no session may start behind the final stop');
        },
      );

      test('fails sessionForRecording() with a StateError', () async {
        final closedSender = _RecordingSender();
        final closed = buildClient(closedSender);
        await closed.close();

        expect(closed.sessionManager.sessionForRecording, throwsStateError);
        expect(
          closedSender.sessionStarts,
          hasLength(1),
          reason: 'a loud failure rather than a phantom session',
        );
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

    group('the launch start carries the initial fields', () {
      test('when they are passed to the constructor', () async {
        // The whole point of the parameters: the eager start emits from the
        // constructor, so setUserId and addGlobalAttribute cannot reach it.
        final initialSender = _RecordingSender();
        final initialClient = EventEnrichmentClient(
          appMetadata: app,
          deviceMetadata: device,
          sdkMetadata: sdk,
          clientId: 'device-123',
          initialUserId: 'user-1',
          initialGlobalAttributes: const {'env': 'prod'},
          initialGlobalMetrics: const {'score': 4.5},
          sender: initialSender,
          options: const EventEnrichmentClientOptions(sessionTimeout: timeout),
        );
        addTearDown(initialClient.close);
        await pumpEventQueue();

        final event = initialSender.sessionStarts.single;
        expect(event.userId, 'user-1');
        expect(event.attributes['env'], 'prod');
        expect(event.metrics['score'], 4.5);
      });

      test('and nothing when they are not', () async {
        // client comes from setUp, which passes none of them.
        await pumpEventQueue();

        final event = sender.sessionStarts.single;
        expect(event.userId, isNull);
        expect(event.attributes, isEmpty);
        expect(event.metrics, isEmpty);
      });

      test('and they keep applying to later events', () async {
        final initialSender = _RecordingSender();
        final initialClient = EventEnrichmentClient(
          appMetadata: app,
          deviceMetadata: device,
          sdkMetadata: sdk,
          clientId: 'device-123',
          initialUserId: 'user-1',
          initialGlobalAttributes: const {'env': 'prod'},
          sender: initialSender,
          options: const EventEnrichmentClientOptions(sessionTimeout: timeout),
        );
        addTearDown(initialClient.close);

        await initialClient.record('button_clicked');

        final recorded = initialSender.events.last;
        expect(recorded.eventType, 'button_clicked');
        expect(recorded.userId, 'user-1');
        expect(recorded.attributes['env'], 'prod');
      });

      test('and not fields set in the same turn as construction', () async {
        // The launch start is built in the constructor, not when it is sent.
        final sameTurnSender = _RecordingSender();
        final sameTurnClient = buildClient(sameTurnSender)
          ..setUserId('user-2')
          ..addGlobalAttribute('env', 'prod');
        addTearDown(sameTurnClient.close);
        await pumpEventQueue();

        final event = sameTurnSender.sessionStarts.single;
        expect(event.userId, isNull);
        expect(event.attributes, isEmpty);
      });

      test('and setUserId still overrides afterwards', () async {
        final initialSender = _RecordingSender();
        final initialClient = EventEnrichmentClient(
          appMetadata: app,
          deviceMetadata: device,
          sdkMetadata: sdk,
          clientId: 'device-123',
          initialUserId: 'user-1',
          sender: initialSender,
          options: const EventEnrichmentClientOptions(sessionTimeout: timeout),
        );
        addTearDown(initialClient.close);
        // Let the queued launch start reach the sender before overriding the
        // user id.
        await pumpEventQueue();
        initialClient.setUserId('user-2');

        await initialClient.record('button_clicked');

        expect(initialSender.sessionStarts.single.userId, 'user-1');
        expect(initialSender.events.last.userId, 'user-2');
      });
    });

    group('recording during a pause', () {
      /// A client whose pause timer never fires, so only the elapsed-time
      /// comparison can tell the session expired.
      EventEnrichmentClient suspendedTimerClient(EnrichedEventSender sender) {
        final built = buildClient(sender);
        // Armed on pause, which has not happened yet, so replacing the factory
        // after construction still covers every timer this client arms.
        built.sessionManager.timerFactory = (_, _) => _NeverFiringTimer();
        return built;
      }

      test('past the timeout, the dead session is replaced first', () {
        fakeAsync((async) {
          final pausedSender = _RecordingSender();
          final pausedClient = suspendedTimerClient(pausedSender);
          final first = pausedClient.sessionManager.session!;
          async.flushMicrotasks();

          pausedClient.handleAppPaused();
          async.elapse(const Duration(minutes: 20));
          pausedClient.record('button_clicked');
          async.flushMicrotasks();

          expect(pausedSender.types, [
            zSessionStartEventType,
            zSessionStopEventType,
            zSessionStartEventType,
            'button_clicked',
          ], reason: 'the expired session must be closed out before the event');
          expect(pausedSender.sessionStops.single.session.id, first.id);
          expect(
            pausedSender.events.last.session.id,
            isNot(first.id),
            reason:
                'the event belongs to the session that is live now, not to '
                'one that ended 20 minutes ago',
          );
          expect(
            pausedSender.events.last.session.id,
            pausedClient.sessionManager.session!.id,
          );
        });
      });

      test('the replacement stays paused, since the app still is', () {
        fakeAsync((async) {
          final pausedSender = _RecordingSender();
          final pausedClient = suspendedTimerClient(pausedSender)
            ..handleAppPaused();
          async.elapse(const Duration(minutes: 20));
          pausedClient.record('button_clicked');
          async.flushMicrotasks();

          expect(pausedClient.sessionManager.state, SessionState.paused);
        });
      });

      test('inside the timeout, the same session is used silently', () {
        fakeAsync((async) {
          final pausedSender = _RecordingSender();
          final pausedClient = suspendedTimerClient(pausedSender);
          final first = pausedClient.sessionManager.session!;
          async.flushMicrotasks();

          pausedClient.handleAppPaused();
          async.elapse(const Duration(seconds: 3));
          pausedClient.record('button_clicked');
          async.flushMicrotasks();

          expect(pausedSender.types, [
            zSessionStartEventType,
            'button_clicked',
          ], reason: 'still the same session, so no boundary');
          expect(pausedSender.events.last.session.id, first.id);
          expect(pausedClient.sessionManager.state, SessionState.paused);
        });
      });
    });

    group('the single send queue', () {
      test('puts a record ahead of a stop called in the same turn', () async {
        // A record that resolved its session asynchronously would land behind
        // that session's own stop.
        final gapSender = _RecordingSender();
        final gapClient = buildClient(gapSender, autoSessionTracking: false);

        unawaited(gapClient.record('a'));
        await gapClient.stopSession();

        expect(gapSender.types, [
          zSessionStartEventType,
          'a',
          zSessionStopEventType,
        ]);
        await gapClient.close();
      });

      test('does the same on a session that is already active', () async {
        final activeSender = _RecordingSender();
        final activeClient = buildClient(activeSender);
        await pumpEventQueue();

        unawaited(activeClient.record('a'));
        await activeClient.stopSession();

        expect(activeSender.types, [
          zSessionStartEventType,
          'a',
          zSessionStopEventType,
        ]);
        await activeClient.close();
      });

      test('holds a stop until a gated record has finished sending', () async {
        final gated = _GatedSender('a');
        final gatedClient = buildClient(gated);
        await pumpEventQueue();

        unawaited(gatedClient.record('a'));
        final stopping = gatedClient.stopSession();
        await pumpEventQueue();

        expect(gated.types, [
          zSessionStartEventType,
          'a',
        ], reason: 'the sender is still in the record, so it gets no stop yet');

        gated.release();
        await stopping;

        expect(gated.types, [
          zSessionStartEventType,
          'a',
          zSessionStopEventType,
        ]);
        await gatedClient.close();
      });

      test('completes each send before it begins the next', () async {
        // Stronger than call order: no two sends are ever in flight at once.
        final seq = _InterleavingSender();
        final seqClient = buildClient(seq, autoSessionTracking: false);

        unawaited(seqClient.record('a'));
        await seqClient.stopSession();

        expect(seq.log, [
          '$zSessionStartEventType begin',
          '$zSessionStartEventType end',
          'a begin',
          'a end',
          '$zSessionStopEventType begin',
          '$zSessionStopEventType end',
        ]);
        await seqClient.close();
      });

      test('keeps close() behind a gated record without a drain', () async {
        final gated = _GatedSender('a');
        final closing = buildClient(gated);
        await pumpEventQueue();

        final order = <String>[];
        final recorded = closing
            .record('a')
            .whenComplete(() => order.add('record'));
        final teardown = closing.close().whenComplete(() => order.add('close'));
        await pumpEventQueue();

        expect(
          order,
          isEmpty,
          reason: 'the queue, not a set of in-flight records, holds the stop',
        );
        expect(gated.types, [zSessionStartEventType, 'a']);

        gated.release();
        await recorded;
        await teardown;

        expect(gated.types, [
          zSessionStartEventType,
          'a',
          zSessionStopEventType,
        ]);
        expect(order, ['record', 'close']);
      });

      test('runs the boundaries behind a record that failed', () async {
        final failing = _SelectivelyFailingSender('a');
        final failingClient = buildClient(failing);
        await pumpEventQueue();

        final result = await failingClient.record('a');
        await failingClient.stopSession();
        await failingClient.startSession();

        expect(result, isA<Error<EnrichedEvent>>());
        expect(failing.types, [
          zSessionStartEventType,
          'a',
          zSessionStopEventType,
          zSessionStartEventType,
        ], reason: 'a failed send must not poison the queue behind it');
        await failingClient.close();
      });

      test('keeps every stop behind its own start across restarts', () async {
        final restartSender = _RecordingSender();
        final restarting = buildClient(restartSender);
        await pumpEventQueue();
        final a = restarting.sessionManager.session!;

        unawaited(restarting.startSession());
        final b = restarting.sessionManager.session!;
        await restarting.startSession();
        final c = restarting.sessionManager.session!;

        expect(restartSender.sessionEvents.map((e) => e.eventType), [
          zSessionStartEventType,
          zSessionStopEventType,
          zSessionStartEventType,
          zSessionStopEventType,
          zSessionStartEventType,
        ]);
        expect(restartSender.sessionEvents.map((e) => e.session.id), [
          a.id,
          a.id,
          b.id,
          b.id,
          c.id,
        ]);
        await restarting.close();
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

    group('with emitSessionEvents off', () {
      EventEnrichmentClient buildQuietClient(
        EnrichedEventSender sender, {
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
          emitSessionEvents: false,
        ),
      );

      test('the option defaults to true', () {
        expect(const EventEnrichmentClientOptions().emitSessionEvents, isTrue);
      });

      test(
        'only the records are sent, each stamped with its session',
        () async {
          final quietSender = _RecordingSender();
          final quiet = buildQuietClient(
            quietSender,
            autoSessionTracking: false,
          );

          await quiet.record('first');
          await quiet.stopSession();
          await quiet.record('second');
          await quiet.close();

          expect(quietSender.types, ['first', 'second']);
          final [first, second] = quietSender.events;
          expect(first.session.id, isNotEmpty);
          expect(
            second.session.id,
            isNot(first.session.id),
            reason: 'the stop ended the first session',
          );
        },
      );

      test('the automatic and manual boundaries are not sent', () async {
        final quietSender = _RecordingSender();
        final quiet = buildQuietClient(quietSender);
        await pumpEventQueue();
        final launchId = quiet.sessionManager.session?.id;

        await quiet.startSession();
        expect(
          quiet.sessionManager.session?.id,
          allOf(isNotNull, isNot(launchId)),
          reason: 'sessions are still tracked',
        );
        await quiet.stopSession();
        await quiet.close();

        expect(launchId, isNotNull);
        expect(quietSender.events, isEmpty);
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
