// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/amplify_event_enrichment.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:test/test.dart';

class _MockSender implements Sender {
  final List<EnrichedEvent> events = [];

  @override
  Future<void> send(EnrichedEvent event) async => events.add(event);
}

/// Throws synchronously, before returning a future at all.
class _ThrowingSender implements Sender {
  @override
  Future<void> send(EnrichedEvent event) => throw StateError('sender failure');
}

/// Suspends first, then fails — the case a sync sender contract could not
/// express and the try/catch in record() could not catch.
class _AsyncFailingSender implements Sender {
  @override
  Future<void> send(EnrichedEvent event) async {
    await Future<void>.delayed(Duration.zero);
    throw StateError('async sender failure');
  }
}

void main() {
  group('EventEnrichmentClient', () {
    late EventEnrichmentClient client;
    late _MockSender sender;

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

    setUp(() {
      sender = _MockSender();
      client = EventEnrichmentClient(
        appMetadata: app,
        deviceMetadata: device,
        sdkMetadata: sdk,
        clientId: 'device-123',
        sender: sender,
      );
    });

    tearDown(() async {
      if (!client.isClosed) await client.close();
    });

    test('record() returns Ok with correct metadata', () async {
      final result = await client.record('test_event');
      expect(result, isA<Ok<EnrichedEvent>>());
      final event = (result as Ok<EnrichedEvent>).value;
      expect(event.eventType, 'test_event');
      expect(event.app.appId, 'testApp1');
      expect(event.device.platform, 'iOS');
      expect(event.sdk.name, 'amplify-flutter');
      expect(event.clientId, 'device-123');
      expect(event.session.id, isNotEmpty);
    });

    test('record() dispatches to the sender when configured', () async {
      await client.record('test_event');
      expect(sender.events, hasLength(1));
      expect(sender.events.first.eventType, 'test_event');
    });

    test('record() does not fail when no sender is configured', () async {
      final noSenderClient = EventEnrichmentClient(
        appMetadata: app,
        deviceMetadata: device,
        sdkMetadata: sdk,
        clientId: 'c',
      );
      final result = await noSenderClient.record('test');
      expect(result, isA<Ok<EnrichedEvent>>());
      await noSenderClient.close();
    });

    test('record() returns Error after close()', () async {
      await client.close();
      final result = await client.record('test');
      expect(result, isA<Error<EnrichedEvent>>());
    });

    test('per-event attributes override globals', () async {
      client.addGlobalAttribute('key', 'global');
      final event =
          (await client.record('test', attributes: {'key': 'local'})
                  as Ok<EnrichedEvent>)
              .value;
      expect(event.attributes['key'], 'local');
    });

    test('per-event metrics override globals', () async {
      client.addGlobalMetric('m', 1);
      final event =
          (await client.record('test', metrics: {'m': 2.0})
                  as Ok<EnrichedEvent>)
              .value;
      expect(event.metrics['m'], 2.0);
    });

    test('global attributes appear on events', () async {
      client.addGlobalAttribute('env', 'prod');
      final event = (await client.record('test') as Ok<EnrichedEvent>).value;
      expect(event.attributes['env'], 'prod');
    });

    test('removed global attributes do not appear', () async {
      client
        ..addGlobalAttribute('env', 'prod')
        ..removeGlobalAttribute('env');
      final event = (await client.record('test') as Ok<EnrichedEvent>).value;
      expect(event.attributes.containsKey('env'), isFalse);
    });

    test('setUserId appears on subsequent events', () async {
      client.setUserId('user-1');
      final event = (await client.record('test') as Ok<EnrichedEvent>).value;
      expect(event.userId, 'user-1');
    });

    test('setUserId(null) clears userId', () async {
      client
        ..setUserId('user-1')
        ..setUserId(null);
      final event = (await client.record('test') as Ok<EnrichedEvent>).value;
      expect(event.userId, isNull);
    });

    test('handleAppPaused and handleAppResumed maintain session', () async {
      final firstEvent =
          (await client.record('before') as Ok<EnrichedEvent>).value;
      final sessionId = firstEvent.session.id;

      client
        ..handleAppPaused()
        ..handleAppResumed();

      final secondEvent =
          (await client.record('after') as Ok<EnrichedEvent>).value;
      expect(secondEvent.session.id, sessionId);
    });

    test('record() after stopSession() starts a fresh session', () async {
      final firstEvent =
          (await client.record('first') as Ok<EnrichedEvent>).value;
      final firstSessionId = firstEvent.session.id;
      expect(firstEvent.session.stopTimestamp, isNull);

      await client.stopSession();

      final secondEvent =
          (await client.record('second') as Ok<EnrichedEvent>).value;
      expect(
        secondEvent.session.id,
        isNot(firstSessionId),
        reason: 'a stopped session must not be reused on the next record()',
      );
      expect(
        secondEvent.session.stopTimestamp,
        isNull,
        reason: 'the fresh session must not carry a stop_timestamp',
      );
    });

    test(
      'handleAppResumed does not restart a session stopped explicitly',
      () async {
        await client.record('first');
        final stopped = client.sessionManager.session!;

        await client.stopSession();
        client.handleAppResumed();

        expect(client.sessionManager.state, SessionState.stopped);
        expect(client.sessionManager.session!.id, stopped.id);
      },
    );

    test('record() still starts a session after an explicit stop', () async {
      // The lazy start in record() is deliberately unaffected by the explicit
      // stop flag: recording an event always produces one with a session.
      await client.stopSession();
      final result = await client.record('after_stop');
      expect(result, isA<Ok<EnrichedEvent>>());
      expect(client.sessionManager.state, SessionState.active);
      expect((result as Ok<EnrichedEvent>).value.session.stopTimestamp, isNull);
    });

    test('close() drops the session and blocks lifecycle restarts', () async {
      await client.record('before_close');
      await client.close();
      client.handleAppResumed();

      expect(client.sessionManager.session, isNull);
      expect(client.sessionManager.state, SessionState.stopped);
    });

    test('record() surfaces a sender failure through Result.error', () async {
      final throwingClient = EventEnrichmentClient(
        appMetadata: app,
        deviceMetadata: device,
        sdkMetadata: sdk,
        clientId: 'device-123',
        sender: _ThrowingSender(),
      );
      addTearDown(throwingClient.close);

      // Must return an Error result rather than throwing out of record().
      final result = await throwingClient.record('boom');
      expect(result, isA<Error<EnrichedEvent>>());
      expect(
        (result as Error<EnrichedEvent>).error,
        isA<EventEnrichmentRecordException>(),
      );
    });

    test(
      'record() catches a sender that fails asynchronously without propagating',
      () async {
        final failingClient = EventEnrichmentClient(
          appMetadata: app,
          deviceMetadata: device,
          sdkMetadata: sdk,
          clientId: 'device-123',
          sender: _AsyncFailingSender(),
        );
        addTearDown(failingClient.close);

        // The sender suspends before throwing, so this only passes because
        // record() awaits send() inside its try/catch. Any error escaping to
        // the zone would fail this test.
        final result = await failingClient.record('boom');
        expect(result, isA<Error<EnrichedEvent>>());
        final error = (result as Error<EnrichedEvent>).error;
        expect(error, isA<EventEnrichmentRecordException>());
        expect(
          (error as EventEnrichmentRecordException).cause,
          isA<StateError>(),
        );
      },
    );
  });
}
