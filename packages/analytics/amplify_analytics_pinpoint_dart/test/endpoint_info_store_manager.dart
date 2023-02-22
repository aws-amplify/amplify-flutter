// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_info_store_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
import 'package:test/test.dart';

import 'common/endpoint_global_fields_storage.dart';
import 'common/mock_secure_storage.dart';
import 'common/mock_values.dart';

/// Test that [EndpointInfoStoreManager] stores endpoint
/// information differently depending on pinpointId
///
/// Note: There are no plans to support
/// different pinpointIds in the same app.
void main() {
  group('EndpointInfoStoreManager ', () {
    const appIdA = 'appIdA';
    const appIdB = 'appIdB';

    late MockSecureStorage store;
    late EndpointInfoStoreManager storeManagerA;
    late EndpointInfoStoreManager storeManagerB;

    setUp(() async {
      store = MockSecureStorage();

      storeManagerA = EndpointInfoStoreManager(
        store: store,
      );
      await storeManagerA.init(pinpointAppId: appIdA);

      storeManagerB = EndpointInfoStoreManager(
        store: store,
      );
      await storeManagerB.init(pinpointAppId: appIdB);
    });

    test('stores version in shared location', () async {
      final version = await store.read(key: EndpointStoreKey.version.name);
      expect(version, EndpointStoreVersion.v1.name);
    });

    test('stores different endpoint ids per pinpoint app id', () async {
      final endpointIdA = storeManagerA.endpointId;
      final endpointIdB = storeManagerB.endpointId;

      expect(endpointIdA != endpointIdB, true);

      // Verify storage location
      final storedEndpointIdA =
          await store.read(key: appIdA + EndpointStoreKey.endpointId.name);
      expect(storedEndpointIdA, endpointIdA);

      final storedEndpointIdB =
          await store.read(key: appIdB + EndpointStoreKey.endpointId.name);
      expect(storedEndpointIdB, endpointIdB);
    });

    test('stores different endpoint global fields per pinpoint app id',
        () async {
      final endpointFields = storeManagerA.endpointFields;

      await endpointFields.addAttribute(stringProperty, stringValue);
      await endpointFields.addMetric(doubleProperty, doubleValue);

      final attributesA = await getStoredAttributes(appId: appIdA, store);
      final metricsA = await getStoredMetrics(appId: appIdA, store);

      expect(attributesA[stringProperty], stringValue);
      expect(metricsA[doubleProperty], doubleValue);

      final attributesB = await getStoredAttributes(appId: appIdB, store);
      final metricsB = await getStoredMetrics(appId: appIdB, store);

      expect(attributesB, isEmpty);
      expect(metricsB, isEmpty);
    });
  });
}
