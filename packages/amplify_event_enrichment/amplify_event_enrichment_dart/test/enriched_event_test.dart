// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_event_enrichment_dart/amplify_event_enrichment.dart';
import 'package:test/test.dart';

void main() {
  group('EnrichedEvent.toJson()', () {
    late EnrichedEvent event;

    setUp(() {
      event = const EnrichedEvent(
        eventId: 'test-event-id',
        eventType: 'product_viewed',
        eventTimestamp: 1700000000000,
        session: Session(
          id: 'testApp1-uuid0000-20231114-120000000',
          startTimestamp: '2023-11-14T12:00:00.000Z',
        ),
        attributes: {'category': 'electronics'},
        metrics: {'price': 29.99},
        device: DeviceMetadata(
          platform: 'iOS',
          platformVersion: '17.0',
          manufacturer: 'Apple',
          model: 'iPhone 15',
          locale: 'en_US',
        ),
        app: AppMetadata(
          appId: 'testApp1',
          packageName: 'com.example.app',
          versionName: '1.0.0',
          versionCode: '1',
          title: 'Test App',
        ),
        sdk: SdkMetadata(name: 'amplify-flutter', version: '2.0.0'),
        clientId: 'device-uuid-123',
        userId: 'user-42',
      );
    });

    test('produces valid JSON', () {
      final json = event.toJson();
      expect(() => jsonDecode(json), returnsNormally);
    });

    test('contains event_type and event_version', () {
      final map = jsonDecode(event.toJson()) as Map<String, dynamic>;
      expect(map['event_type'], 'product_viewed');
      expect(map['event_version'], '3.1');
    });

    test('contains timestamps', () {
      final map = jsonDecode(event.toJson()) as Map<String, dynamic>;
      expect(map['event_timestamp'], 1700000000000);
      expect(map['arrival_timestamp'], 1700000000000);
    });

    test('contains application with sdk nested', () {
      final map = jsonDecode(event.toJson()) as Map<String, dynamic>;
      final app = map['application'] as Map<String, dynamic>;
      expect(app['app_id'], 'testApp1');
      expect(app['package_name'], 'com.example.app');
      expect(app['version_name'], '1.0.0');
      expect(app['version_code'], '1');
      expect(app['title'], 'Test App');
      final sdk = app['sdk'] as Map<String, dynamic>;
      expect(sdk['name'], 'amplify-flutter');
      expect(sdk['version'], '2.0.0');
    });

    test('contains client with user_id', () {
      final map = jsonDecode(event.toJson()) as Map<String, dynamic>;
      final client = map['client'] as Map<String, dynamic>;
      expect(client['client_id'], 'device-uuid-123');
      expect(client['user_id'], 'user-42');
    });

    test('omits user_id when null', () {
      const noUser = EnrichedEvent(
        eventId: 'id',
        eventType: 'test',
        eventTimestamp: 0,
        session: Session(id: 's', startTimestamp: 't'),
        attributes: {},
        metrics: {},
        device: DeviceMetadata(),
        app: AppMetadata(appId: 'a'),
        sdk: SdkMetadata(name: 'n', version: 'v'),
        clientId: 'c',
      );
      final map = jsonDecode(noUser.toJson()) as Map<String, dynamic>;
      final client = map['client'] as Map<String, dynamic>;
      expect(client.containsKey('user_id'), isFalse);
    });

    test('contains device with platform nested', () {
      final map = jsonDecode(event.toJson()) as Map<String, dynamic>;
      final device = map['device'] as Map<String, dynamic>;
      final platform = device['platform'] as Map<String, dynamic>;
      expect(platform['name'], 'iOS');
      expect(platform['version'], '17.0');
      expect(device['make'], 'Apple');
      expect(device['model'], 'iPhone 15');
      expect((device['locale'] as Map)['code'], 'en_US');
    });

    test('contains session fields', () {
      final map = jsonDecode(event.toJson()) as Map<String, dynamic>;
      final session = map['session'] as Map<String, dynamic>;
      expect(session['id'], contains('testApp1'));
      expect(session['start_timestamp'], '2023-11-14T12:00:00.000Z');
    });

    test('contains attributes and metrics', () {
      final map = jsonDecode(event.toJson()) as Map<String, dynamic>;
      expect(map['attributes'], {'category': 'electronics'});
      expect(map['metrics'], {'price': 29.99});
    });

    test('omits attributes and metrics when empty', () {
      const empty = EnrichedEvent(
        eventId: 'id',
        eventType: 'test',
        eventTimestamp: 0,
        session: Session(id: 's', startTimestamp: 't'),
        attributes: {},
        metrics: {},
        device: DeviceMetadata(),
        app: AppMetadata(appId: 'a'),
        sdk: SdkMetadata(name: 'n', version: 'v'),
        clientId: 'c',
      );
      final map = jsonDecode(empty.toJson()) as Map<String, dynamic>;
      expect(map.containsKey('attributes'), isFalse);
      expect(map.containsKey('metrics'), isFalse);
    });
  });
}
