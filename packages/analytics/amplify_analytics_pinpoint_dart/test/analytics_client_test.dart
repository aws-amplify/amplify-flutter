// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/analytics_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_global_fields_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_info_store_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/index_db/in_memory_queued_item_store.dart';
import 'package:test/test.dart';

import 'common/mock_secure_storage.dart';
import 'common/mocktail_mocks.dart';

/// Test instances of AnalyticsClients do not change the stored values of other instance
void main() {
  group('Multiple AnalyticsClients ', () {
    const analyticsPinpointAppId = 'analyticsPinpointAppId';
    const analyticsRegion = 'region';
    const notificationsPinpointAppId = 'notificationsPinpointAppId';

    late final MockSecureStorage store;

    late final InMemoryQueuedItemStore analyticsEventStore;
    late final InMemoryQueuedItemStore notificationsEventStore;

    late final AnalyticsClient analyticsClient;
    late final AnalyticsClient notificationsClient;

    setUpAll(() async {
      store = MockSecureStorage();

      analyticsEventStore = InMemoryQueuedItemStore();
      analyticsClient = AnalyticsClient(
        endpointStorage: store,
      );
      await analyticsClient.init(
        pinpointAppId: analyticsPinpointAppId,
        region: analyticsRegion,
        authProvider: MockIamAuthProvider(),
        eventStore: analyticsEventStore,
      );

      notificationsEventStore = InMemoryQueuedItemStore();
      notificationsClient = AnalyticsClient(
        endpointStorage: store,
      );
      await notificationsClient.init(
        pinpointAppId: notificationsPinpointAppId,
        region: analyticsRegion,
        authProvider: MockIamAuthProvider(),
        eventStore: notificationsEventStore,
      );
    });

    test('endpoint ids are different', () async {
      expect(
        analyticsClient.endpointClient.fixedEndpointId !=
            notificationsClient.endpointClient.fixedEndpointId,
        true,
      );
    });

    test('endpoint global fields stored separately', () async {
      final analyticsEndpointClient = analyticsClient.endpointClient;

      const attributeKey = 'analyticsAttributeKey';
      const attributeValue = 'analyticsAttributeValue';

      const metricKey = 'analyticsMetricKey';
      const metricValue = 123.45;

      await analyticsEndpointClient.addAttribute(attributeKey, attributeValue);
      await analyticsEndpointClient.addMetric(metricKey, metricValue);

      final analyticsStore = EndpointStore(analyticsPinpointAppId, store);

      final analyticsAttributes =
          await EndpointGlobalFieldsManager.getStoredAttributes(
        analyticsStore,
      );
      final analyticsMetrics =
          await EndpointGlobalFieldsManager.getStoredMetrics(analyticsStore);

      final notificationsStore =
          EndpointStore(notificationsPinpointAppId, store);

      final notificationsAttributes =
          await EndpointGlobalFieldsManager.getStoredAttributes(
        notificationsStore,
      );
      final notificationsMetrics =
          await EndpointGlobalFieldsManager.getStoredMetrics(
        notificationsStore,
      );

      expect(analyticsAttributes[attributeKey], attributeValue);
      expect(analyticsMetrics[metricKey], metricValue);

      expect(notificationsAttributes, isEmpty);
      expect(notificationsMetrics, isEmpty);
    });

    test('cached events are stored separately', () async {
      final analyticsEventClient = analyticsClient.eventClient;

      const eventType = 'analyticsEventType';
      await analyticsEventClient.recordEvent(eventType: eventType);

      expect(analyticsEventStore.getCount(100).length, 1);
      expect(notificationsEventStore.getCount(100), isEmpty);
    });
  });
}
