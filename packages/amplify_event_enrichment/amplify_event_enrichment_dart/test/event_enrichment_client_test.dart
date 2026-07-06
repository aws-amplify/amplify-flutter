// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/amplify_event_enrichment.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:test/test.dart';

class _MockSink implements EventSink {
  final List<EnrichedEvent> events = [];

  @override
  void send(EnrichedEvent event) => events.add(event);
}

void main() {
  group('EventEnrichmentClient', () {
    late EventEnrichmentClient client;
    late _MockSink sink;

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
      sink = _MockSink();
      client = EventEnrichmentClient(
        appMetadata: app,
        deviceMetadata: device,
        sdkMetadata: sdk,
        clientId: 'device-123',
        sink: sink,
      );
    });

    tearDown(() {
      if (!client.isClosed) client.close();
    });

    test('record() returns Ok with correct metadata', () {
      final result = client.record('test_event');
      expect(result, isA<Ok<EnrichedEvent>>());
      final event = (result as Ok<EnrichedEvent>).value;
      expect(event.eventType, 'test_event');
      expect(event.app.appId, 'testApp1');
      expect(event.device.platform, 'iOS');
      expect(event.sdk.name, 'amplify-flutter');
      expect(event.clientId, 'device-123');
      expect(event.session.id, isNotEmpty);
    });

    test('record() dispatches to sink when configured', () {
      client.record('test_event');
      expect(sink.events, hasLength(1));
      expect(sink.events.first.eventType, 'test_event');
    });

    test('record() does not fail when sink is null', () {
      final noSinkClient = EventEnrichmentClient(
        appMetadata: app,
        deviceMetadata: device,
        sdkMetadata: sdk,
        clientId: 'c',
      );
      final result = noSinkClient.record('test');
      expect(result, isA<Ok<EnrichedEvent>>());
      noSinkClient.close();
    });

    test('record() returns Error after close()', () {
      client.close();
      final result = client.record('test');
      expect(result, isA<Error<EnrichedEvent>>());
    });

    test('per-event attributes override globals', () {
      client.addGlobalAttribute('key', 'global');
      final event =
          (client.record('test', attributes: {'key': 'local'})
                  as Ok<EnrichedEvent>)
              .value;
      expect(event.attributes['key'], 'local');
    });

    test('per-event metrics override globals', () {
      client.addGlobalMetric('m', 1);
      final event =
          (client.record('test', metrics: {'m': 2.0}) as Ok<EnrichedEvent>)
              .value;
      expect(event.metrics['m'], 2.0);
    });

    test('global attributes appear on events', () {
      client.addGlobalAttribute('env', 'prod');
      final event = (client.record('test') as Ok<EnrichedEvent>).value;
      expect(event.attributes['env'], 'prod');
    });

    test('removed global attributes do not appear', () {
      client
        ..addGlobalAttribute('env', 'prod')
        ..removeGlobalAttribute('env');
      final event = (client.record('test') as Ok<EnrichedEvent>).value;
      expect(event.attributes.containsKey('env'), isFalse);
    });

    test('setUserId appears on subsequent events', () {
      client.setUserId('user-1');
      final event = (client.record('test') as Ok<EnrichedEvent>).value;
      expect(event.userId, 'user-1');
    });

    test('setUserId(null) clears userId', () {
      client
        ..setUserId('user-1')
        ..setUserId(null);
      final event = (client.record('test') as Ok<EnrichedEvent>).value;
      expect(event.userId, isNull);
    });

    test('handleAppPaused and handleAppResumed maintain session', () {
      final firstEvent = (client.record('before') as Ok<EnrichedEvent>).value;
      final sessionId = firstEvent.session.id;

      client
        ..handleAppPaused()
        ..handleAppResumed();

      final secondEvent = (client.record('after') as Ok<EnrichedEvent>).value;
      expect(secondEvent.session.id, sessionId);
    });

    test('record() after stopSession() starts a fresh session', () {
      final firstEvent = (client.record('first') as Ok<EnrichedEvent>).value;
      final firstSessionId = firstEvent.session.id;
      expect(firstEvent.session.stopTimestamp, isNull);

      client.stopSession();

      final secondEvent = (client.record('second') as Ok<EnrichedEvent>).value;
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
  });
}
