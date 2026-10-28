// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment/amplify_event_enrichment.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show AmplifyLogging, LogLevel, LogMessage, LogSink, Ok;
import 'package:flutter/services.dart' show StringCodec;
import 'package:flutter/widgets.dart' show AppLifecycleState;
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_platform_interface/shared_preferences_platform_interface.dart';

class _ThrowingDeviceMetadataProvider implements DeviceMetadataProvider {
  @override
  Future<DeviceMetadata> getDeviceMetadata() async =>
      throw StateError('provider failure');
}

class _FixedClientIdProvider implements ClientIdProvider {
  const _FixedClientIdProvider(this.id);

  final String id;

  @override
  Future<String> getClientId() async => id;
}

class _ThrowingClientIdProvider implements ClientIdProvider {
  @override
  Future<String> getClientId() async => throw StateError('provider failure');
}

/// A store whose writes the platform rejects.
class _RejectingStore extends InMemorySharedPreferencesStore {
  _RejectingStore() : super.empty();

  @override
  Future<bool> setValue(String valueType, String key, Object value) async =>
      false;
}

class _CapturingLogSink implements LogSink {
  final List<LogMessage> messages = [];

  @override
  bool isEnabled(LogLevel logLevel) => true;

  @override
  void emit(LogMessage message) => messages.add(message);
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
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  const sdk = SdkMetadata(name: 'amplify-flutter', version: '2.0.0');

  group('EventEnrichmentClientFlutter.create', () {
    test('degrades gracefully when device metadata resolution fails', () async {
      // create() must not throw when a provider fails; it falls back to empty
      // device metadata and the client stays usable.
      final client = await EventEnrichmentClientFlutter.create(
        appId: 'test-app',
        sdkMetadata: sdk,
        deviceMetadataProvider: _ThrowingDeviceMetadataProvider(),
      );
      addTearDown(client.close);

      final result = await client.record('event');
      expect(result, isA<Ok<EnrichedEvent>>());
    });

    test('uses an injected clientIdProvider', () async {
      final client = await EventEnrichmentClientFlutter.create(
        appId: 'test-app',
        sdkMetadata: sdk,
        clientIdProvider: const _FixedClientIdProvider('injected-id'),
      );
      addTearDown(client.close);

      final event = (await client.record('event') as Ok<EnrichedEvent>).value;
      expect(event.clientId, 'injected-id');
    });

    test('degrades gracefully when clientIdProvider fails', () async {
      final client = await EventEnrichmentClientFlutter.create(
        appId: 'test-app',
        sdkMetadata: sdk,
        clientIdProvider: _ThrowingClientIdProvider(),
      );
      addTearDown(client.close);

      // Falls back to an ephemeral id rather than throwing out of create().
      final event = (await client.record('event') as Ok<EnrichedEvent>).value;
      expect(event.clientId, isNotEmpty);
    });

    test('defaults to the shared preferences client ID', () async {
      final client = await EventEnrichmentClientFlutter.create(
        appId: 'test-app',
        sdkMetadata: sdk,
      );
      addTearDown(client.close);

      final event = (await client.record('event') as Ok<EnrichedEvent>).value;
      final persisted = await const SharedPreferencesClientIdProvider()
          .getClientId();
      expect(event.clientId, persisted);
    });

    test('uses an ephemeral ID when the client ID write is rejected', () async {
      SharedPreferencesStorePlatform.instance = _RejectingStore();
      final logs = _CapturingLogSink();
      AmplifyLogging.addSink(logs);
      addTearDown(() => AmplifyLogging.removeSink(logs));

      final client = await EventEnrichmentClientFlutter.create(
        appId: 'test-app',
        sdkMetadata: sdk,
      );
      addTearDown(client.close);

      final event = (await client.record('event') as Ok<EnrichedEvent>).value;
      expect(event.clientId, isNotEmpty);
      expect(
        logs.messages.where(
          (m) => m.level == LogLevel.warn && m.error is StateError,
        ),
        hasLength(1),
      );
    });

    test('throws when appMetadata.appId differs from appId', () async {
      await expectLater(
        EventEnrichmentClientFlutter.create(
          appId: 'test-app',
          sdkMetadata: sdk,
          appMetadata: const AppMetadata(appId: 'other-app'),
        ),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.name,
            'name',
            'appMetadata.appId',
          ),
        ),
      );
    });

    test('uses appMetadata when its appId matches appId', () async {
      final client = await EventEnrichmentClientFlutter.create(
        appId: 'test-app',
        sdkMetadata: sdk,
        appMetadata: const AppMetadata(appId: 'test-app', title: 'Title'),
      );
      addTearDown(client.close);

      final event = (await client.record('event') as Ok<EnrichedEvent>).value;
      expect(event.app.appId, 'test-app');
      expect(event.app.title, 'Title');
    });
  });

  group('EventEnrichmentClientFlutter session controls', () {
    test('stopSession then record starts a fresh session', () async {
      final client = await EventEnrichmentClientFlutter.create(
        appId: 'test-app',
        sdkMetadata: sdk,
      );
      addTearDown(client.close);

      final first = (await client.record('first') as Ok<EnrichedEvent>).value;
      await client.stopSession();
      final second = (await client.record('second') as Ok<EnrichedEvent>).value;

      expect(second.session.id, isNot(first.session.id));
      expect(second.session.stopTimestamp, isNull);
    });

    test('startSession begins a new session', () async {
      final client = await EventEnrichmentClientFlutter.create(
        appId: 'test-app',
        sdkMetadata: sdk,
      );
      addTearDown(client.close);

      final first = (await client.record('first') as Ok<EnrichedEvent>).value;
      await client.startSession();
      final second = (await client.record('second') as Ok<EnrichedEvent>).value;

      expect(second.session.id, isNot(first.session.id));
    });

    test('handleAppPaused then handleAppResumed keeps the session', () async {
      final client = await EventEnrichmentClientFlutter.create(
        appId: 'test-app',
        sdkMetadata: sdk,
      );
      addTearDown(client.close);

      final first = (await client.record('first') as Ok<EnrichedEvent>).value;
      client
        ..handleAppPaused()
        ..handleAppResumed();
      final second = (await client.record('second') as Ok<EnrichedEvent>).value;

      expect(second.session.id, first.session.id);
    });

    test(
      'record after a stop and a lifecycle cycle gets a fresh session',
      () async {
        final client = await EventEnrichmentClientFlutter.create(
          appId: 'test-app',
          sdkMetadata: sdk,
        );
        addTearDown(client.close);

        final first = (await client.record('first') as Ok<EnrichedEvent>).value;
        await client.stopSession();
        client
          ..handleAppPaused()
          ..handleAppResumed();

        final second =
            (await client.record('second') as Ok<EnrichedEvent>).value;
        expect(second.session.id, isNot(first.session.id));
        expect(second.session.stopTimestamp, isNull);
      },
    );
    // Note: that a resume does not itself resurrect the stopped session is
    // asserted in flutter_lifecycle_observer_test.dart, which can observe
    // SessionManager state. The wrapper deliberately does not expose it, so
    // both outcomes look the same through record() alone.

    test('records with autoSessionTracking disabled', () async {
      // No session is started up front and no lifecycle observer is installed,
      // but the first record() lazily starts one.
      final client = await EventEnrichmentClientFlutter.create(
        appId: 'test-app',
        sdkMetadata: sdk,
        options: const EventEnrichmentClientOptions(autoSessionTracking: false),
      );
      addTearDown(client.close);

      final event = (await client.record('event') as Ok<EnrichedEvent>).value;
      expect(event.session.id, isNotEmpty);
    });
  });

  group('EventEnrichmentClientFlutter session events', () {
    Future<(EventEnrichmentClientFlutter, _RecordingSender)> createClient({
      bool autoSessionTracking = true,
    }) async {
      final sender = _RecordingSender();
      final client = await EventEnrichmentClientFlutter.create(
        appId: 'test-app',
        sdkMetadata: sdk,
        sender: sender,
        options: EventEnrichmentClientOptions(
          autoSessionTracking: autoSessionTracking,
        ),
      );
      return (client, sender);
    }

    test('create emits a start when autoSessionTracking is on', () async {
      final (client, sender) = await createClient();
      addTearDown(client.close);

      final first = (await client.record('first') as Ok<EnrichedEvent>).value;

      expect(sender.sessionStarts, hasLength(1));
      final event = sender.sessionStarts.single;
      expect(event.eventType, zSessionStartEventType);
      expect(event.session.id, first.session.id);
      expect(event.session.stopTimestamp, isNull);
    });

    test('create emits nothing when autoSessionTracking is off', () async {
      final (client, sender) = await createClient(autoSessionTracking: false);
      addTearDown(client.close);

      expect(sender.sessionEvents, isEmpty);
    });

    test(
      'create passes the initial user id and globals to the start',
      () async {
        // create() resolves providers asynchronously before constructing the
        // delegate, so the launch start is the first chance to stamp these and
        // setUserId afterwards would already be too late for it.
        final sender = _RecordingSender();
        final client = await EventEnrichmentClientFlutter.create(
          appId: 'test-app',
          sdkMetadata: sdk,
          sender: sender,
          initialUserId: 'user-1',
          initialGlobalAttributes: const {'env': 'prod'},
          initialGlobalMetrics: const {'score': 4.5},
        );
        addTearDown(client.close);
        // The launch start is queued, so create() can return before the sender
        // has seen it.
        await pumpEventQueue();

        final event = sender.sessionStarts.single;
        expect(event.userId, 'user-1');
        expect(event.attributes['env'], 'prod');
        expect(event.metrics['score'], 4.5);
      },
    );

    test(
      'create keeps a setUserId made straight after it off the start',
      () async {
        final sender = _RecordingSender();
        final client =
            await EventEnrichmentClientFlutter.create(
                appId: 'test-app',
                sdkMetadata: sdk,
                sender: sender,
              )
              ..setUserId('user-2');
        addTearDown(client.close);
        await pumpEventQueue();

        expect(sender.sessionStarts.single.userId, isNull);
        final recorded = await client.record('event');
        expect((recorded as Ok<EnrichedEvent>).value.userId, 'user-2');
      },
    );

    test('create leaves them absent when not supplied', () async {
      final (client, sender) = await createClient();
      addTearDown(client.close);
      await pumpEventQueue();

      final event = sender.sessionStarts.single;
      expect(event.userId, isNull);
      expect(event.attributes, isEmpty);
      expect(event.metrics, isEmpty);
    });

    test('stopSession emits one stop, carrying the stopped session', () async {
      final (client, sender) = await createClient();
      addTearDown(client.close);

      final first = (await client.record('first') as Ok<EnrichedEvent>).value;
      await client.stopSession();

      expect(sender.sessionStops, hasLength(1));
      final event = sender.sessionStops.single;
      expect(event.eventType, zSessionStopEventType);
      expect(event.session.id, first.session.id);
      expect(event.session.stopTimestamp, isNotNull);
      expect(event.session.duration, isNotNull);
    });

    test('close emits one stop for a running session', () async {
      final (client, sender) = await createClient();

      final first = (await client.record('first') as Ok<EnrichedEvent>).value;
      await client.close();

      expect(sender.sessionStops, hasLength(1));
      expect(sender.sessionStops.single.session.id, first.session.id);
    });

    test('close after stopSession does not emit a second stop', () async {
      final (client, sender) = await createClient();

      await client.record('first');
      await client.stopSession();
      await client.close();

      expect(sender.sessionStops, hasLength(1));
    });

    test('startSession emits the displaced stop then the new start', () async {
      final (client, sender) = await createClient();
      addTearDown(client.close);

      final first = (await client.record('first') as Ok<EnrichedEvent>).value;
      await client.startSession();

      expect(sender.sessionEvents.map((e) => e.eventType), [
        zSessionStartEventType,
        zSessionStopEventType,
        zSessionStartEventType,
      ]);
      expect(sender.sessionStops.single.session.id, first.session.id);
      expect(sender.sessionStarts.last.session.id, isNot(first.session.id));
    });

    test('close emits nothing when no session ever started', () async {
      final (client, sender) = await createClient(autoSessionTracking: false);

      await client.close();

      expect(sender.sessionEvents, isEmpty);
    });
  });

  group('EventEnrichmentClientFlutter create while backgrounded', () {
    // create() resolves its providers before the observer can register, so a
    // background transition in that window is only visible through the
    // lifecycle state the delegate is seeded from.
    Future<void> setLifecycleState(AppLifecycleState state) =>
        TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
            .handlePlatformMessage(
              'flutter/lifecycle',
              const StringCodec().encodeMessage(state.toString()),
              (_) {},
            );

    // Fake time, so the timeout only elapses when a test pumps past it.
    const shortTimeout = Duration(milliseconds: 50);
    const pastTimeout = Duration(milliseconds: 300);

    tearDown(() => setLifecycleState(AppLifecycleState.resumed));

    Future<(EventEnrichmentClientFlutter, _RecordingSender)> createClient(
      WidgetTester tester,
    ) async {
      final sender = _RecordingSender();
      final client = await EventEnrichmentClientFlutter.create(
        appId: 'test-app',
        sdkMetadata: sdk,
        sender: sender,
        options: const EventEnrichmentClientOptions(
          sessionTimeout: shortTimeout,
        ),
      );
      await tester.pump();
      return (client, sender);
    }

    testWidgets('pauses the launch session so it can time out', (tester) async {
      await setLifecycleState(AppLifecycleState.paused);

      final (client, sender) = await createClient(tester);

      expect(sender.sessionStarts, hasLength(1));
      expect(sender.sessionStops, isEmpty);

      await tester.pump(pastTimeout);

      expect(
        sender.sessionStops,
        hasLength(1),
        reason: 'a session launched into the background must still time out',
      );
      expect(
        sender.sessionStops.single.session.id,
        sender.sessionStarts.single.session.id,
      );
      await client.close();
    });

    testWidgets('treats a hidden app as backgrounded too', (tester) async {
      await setLifecycleState(AppLifecycleState.hidden);

      final (client, sender) = await createClient(tester);

      await tester.pump(pastTimeout);

      expect(sender.sessionStops, hasLength(1));
      await client.close();
    });

    testWidgets('leaves a foreground launch session running', (tester) async {
      await setLifecycleState(AppLifecycleState.resumed);

      final (client, sender) = await createClient(tester);

      await tester.pump(pastTimeout);

      expect(
        sender.sessionStops,
        isEmpty,
        reason: 'nothing pauses a foreground session, so nothing times out',
      );
      await client.close();
    });
  });
}
