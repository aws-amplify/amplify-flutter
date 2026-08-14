// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment/amplify_event_enrichment.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart' show Ok;
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  });

  group('EventEnrichmentClientFlutter session controls', () {
    test('stopSession then record starts a fresh session', () async {
      final client = await EventEnrichmentClientFlutter.create(
        appId: 'test-app',
        sdkMetadata: sdk,
      );
      addTearDown(client.close);

      final first = (await client.record('first') as Ok<EnrichedEvent>).value;
      client.stopSession();
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
      client.startSession();
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
}
