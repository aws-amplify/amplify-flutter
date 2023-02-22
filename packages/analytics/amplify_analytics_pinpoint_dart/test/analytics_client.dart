// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/index_db/in_memory_queued_item_store.dart';
import 'package:test/test.dart';

import 'common/endpoint_global_fields_storage.dart';
import 'common/mock_secure_storage.dart';
import 'common/mocktail_mocks.dart';

/// Test instances of AnalyticsClients does not change stored values of other instance
void main() {
  group('Multiple AnalyticsClients ', () {
    const analyticsPinpointAppId = 'analyticsPinpointAppId';
    const notificationsPinpointAppId = 'notificationsPinpointAppId';

    late final MockSecureStorage analyticsStore;
    late final MockSecureStorage notificationsStore;

    late final InMemoryQueuedItemStore analyticsEventStore;
    late final InMemoryQueuedItemStore notificationsEventStore;

    late final AnalyticsClient analyticsClient;
    late final AnalyticsClient notificationsClient;

    setUpAll(() async {
      analyticsStore = MockSecureStorage();

      final analyticsPinpointClient = MockPinpointClient();
      analyticsEventStore = InMemoryQueuedItemStore();

      analyticsClient = AnalyticsClient(
        endpointInfoStoreManager: EndpointInfoStoreManager(
          store: analyticsStore,
        ),
      );
      await analyticsClient.initWithClient(
        pinpointAppId: analyticsPinpointAppId,
        pinpointClient: analyticsPinpointClient,
        eventStore: analyticsEventStore,
      );

      notificationsStore = MockSecureStorage();

      final notificationsPinpointClient = MockPinpointClient();
      notificationsEventStore = InMemoryQueuedItemStore();

      notificationsClient = AnalyticsClient(
        endpointInfoStoreManager: EndpointInfoStoreManager(
          store: notificationsStore,
        ),
      );
      await notificationsClient.initWithClient(
        pinpointAppId: notificationsPinpointAppId,
        pinpointClient: notificationsPinpointClient,
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

      final analyticsAttributes = await getStoredAttributes(
        appId: analyticsPinpointAppId,
        analyticsStore,
      );
      final analyticsMetrics =
          await getStoredMetrics(appId: analyticsPinpointAppId, analyticsStore);

      final notificationsAttributes = await getStoredAttributes(
        appId: notificationsPinpointAppId,
        notificationsStore,
      );
      final notificationsMetrics = await getStoredMetrics(
        appId: notificationsPinpointAppId,
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
