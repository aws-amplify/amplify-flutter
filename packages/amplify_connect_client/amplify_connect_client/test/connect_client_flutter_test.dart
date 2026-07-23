// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_connect_client/amplify_connect_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('SharedPreferencesDeviceIdStore', () {
    setUp(() => SharedPreferences.setMockInitialValues({}));

    test('creates and persists a device id, then reuses it', () async {
      final store = SharedPreferencesDeviceIdStore();

      final first = await store.getOrCreateDeviceId();
      expect(first, isNotEmpty);

      final second = await store.getOrCreateDeviceId();
      expect(second, first, reason: 'device id should be stable');
      expect(await store.readDeviceId(), first);
    });

    test(
      'reads an id written by another package under the shared key',
      () async {
        // Simulates the event enrichment client having already created the id.
        SharedPreferences.setMockInitialValues({
          'com.amplifyframework.device_id': 'shared-device-id',
        });
        final store = SharedPreferencesDeviceIdStore();

        expect(await store.getOrCreateDeviceId(), 'shared-device-id');
        expect(await store.readDeviceId(), 'shared-device-id');
      },
    );

    test('clear removes the device id', () async {
      final store = SharedPreferencesDeviceIdStore();
      await store.getOrCreateDeviceId();

      await store.clear();

      expect(await store.readDeviceId(), isNull);
    });
  });

  group('AmplifyConnectClientFlutter.createFromAmplifyOutputs', () {
    test('throws for a missing section', () {
      expect(
        () => AmplifyConnectClientFlutter.createFromAmplifyOutputs(
          amplifyOutputs: const {'auth': <String, dynamic>{}},
        ),
        throwsA(isA<ConnectConfigurationException>()),
      );
    });

    test('builds a client from a valid section', () {
      final client = AmplifyConnectClientFlutter.createFromAmplifyOutputs(
        amplifyOutputs: const {
          'notifications': {
            'amazon_connect_customer_profiles': {
              'endpoint': 'https://abc.execute-api.us-east-1.amazonaws.com',
              'aws_region': 'us-east-1',
            },
          },
        },
      );
      expect(client, isA<AmplifyConnectClientFlutter>());
    });
  });
}
