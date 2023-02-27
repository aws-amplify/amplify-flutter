// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_info_store_manager.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_store_keys.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/event_client.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/event_storage_adapter.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/index_db/in_memory_queued_item_store.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/common/serializers.dart';
import 'package:amplify_analytics_pinpoint_dart/src/version.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'common/mock_device_context_info.dart';
import 'common/mock_event_values.dart';
import 'common/mock_secure_storage.dart';
import 'common/mock_values.dart';
import 'common/mocktail_mocks.dart';

void main() {
  late EventClient eventClient;
  late MockPinpointClient pinpointClient;
  late EndpointClient endpointClient;
  late InMemoryQueuedItemStore eventStore;
  final mockEndpointId = uuid();

  // For deserializing stored events
  late final jsonSerializers = () {
    // Create Serializer
    // jsonDecode JsonString -> Map
    // Serializer Map -> Actual Class Instance
    final serializerBuilder = (Serializers().toBuilder()..addAll(serializers));
    for (final entry in builderFactories.entries) {
      serializerBuilder.addBuilderFactory(entry.key, entry.value);
    }
    final builtSerializers = serializerBuilder.build();
    return builtSerializers;
  }();

  group('EventClient ', () {
    setUpAll(() async {
      // To allow mocked calls to PutEvents
      registerFallbackValue(
        PutEventsRequest(
          applicationId: 'test',
          eventsRequest: EventsRequest(batchItem: {}),
        ),
      );

      pinpointClient = MockPinpointClient();

      final mockStore = MockSecureStorage()
        ..write(
          key: pinpointAppId + EndpointStoreKey.endpointId.name,
          value: mockEndpointId,
        );
      final mockEndpointInfoStoreManager =
          EndpointInfoStoreManager(store: mockStore);
      await mockEndpointInfoStoreManager.init(pinpointAppId: pinpointAppId);

      endpointClient = EndpointClient(
        pinpointAppId: pinpointAppId,
        pinpointClient: pinpointClient,
        endpointInfoStoreManager: mockEndpointInfoStoreManager,
        deviceContextInfo: mockDeviceContextInfo,
      );
    });

    setUp(() {
      eventStore = InMemoryQueuedItemStore();

      eventClient = EventClient(
        pinpointAppId: pinpointAppId,
        pinpointClient: pinpointClient,
        endpointClient: endpointClient,
        eventStore: eventStore,
        deviceContextInfo: mockDeviceContextInfo,
      );

      when(() => pinpointClient.putEvents(any<PutEventsRequest>())).thenReturn(
        mockSmithyOperation(
          () => PutEventsResponse(
            eventsResponse: EventsResponse(),
          ),
        ),
      );
    });

    tearDown(() {
      resetMocktailState();
      reset(pinpointClient);
    });

    test('recordEvent stores event in eventStorage', () async {
      await eventClient.recordEvent(
        eventType: eventType,
        session: session,
        properties: analyticsProperties,
      );

      final item = eventStore.getCount(1).elementAt(0);

      final storedEvent = StoredEvent(item, jsonSerializers);
      final event = storedEvent.event;

      expect(event.eventType, eventType);
      expect(event.appPackageName, mockDeviceContextInfo.appPackageName);
      expect(event.appTitle, mockDeviceContextInfo.appName);
      expect(event.appVersionCode, mockDeviceContextInfo.appVersion);
      expect(event.clientSdkVersion, packageVersion);
      expect(event.sdkName, 'amplify-flutter');
      expect(event.session, session);

      // Attributes
      expect(event.attributes, isNotNull);
      final attributes = event.attributes!;

      expect(attributes[stringProperty], stringValue);
      expect(attributes[boolProperty], boolValue.toString());

      // Metrics
      expect(event.metrics, isNotNull);
      final metrics = event.metrics!;

      expect(metrics[doubleProperty], doubleValue);
      expect(metrics[intProperty], intValue);
    });

    test('flushEvents flushes all stored events and clears eventStorage',
        () async {
      const storeCount = 10;

      for (var i = 0; i < storeCount; i++) {
        await eventClient.recordEvent(
          eventType: eventType,
          session: session,
          properties: analyticsProperties,
        );
      }

      var storedItems = eventStore.getCount(storeCount * 2);
      expect(storedItems.length, storeCount);

      await eventClient.flushEvents();

      storedItems = eventStore.getCount(storeCount * 2);
      expect(storedItems.length, 0);
    });

    test('flushEvents creates a proper PutEventsRequest', () async {
      await eventClient.recordEvent(
        eventType: eventType,
        session: session,
        properties: analyticsProperties,
      );

      await eventClient.flushEvents();

      final captured = verify(() => pinpointClient.putEvents(captureAny()))
          .captured[0] as PutEventsRequest;

      expect(captured.applicationId, pinpointAppId);

      final batchItem = captured.eventsRequest.batchItem;

      expect(batchItem[mockEndpointId], isNotNull);
      final eventsBatch = batchItem[mockEndpointId]!;

      expect(eventsBatch.endpoint, endpointClient.getPublicEndpoint());

      // Event
      expect(eventsBatch.events.length, 1);
      expect(eventsBatch.events['0'], isNotNull);
      final event = eventsBatch.events['0']!;

      expect(event.appPackageName, mockDeviceContextInfo.appPackageName);
      expect(event.appTitle, mockDeviceContextInfo.appName);
      expect(event.appVersionCode, mockDeviceContextInfo.appVersion);
      expect(event.eventType, eventType);

      expect(event.clientSdkVersion, packageVersion);
      expect(event.sdkName, 'amplify-flutter');
      expect(event.session, session);

      // Attributes
      expect(event.attributes, isNotNull);
      final attributes = event.attributes!;

      expect(attributes[stringProperty], stringValue);
      expect(attributes[boolProperty], boolValue.toString());

      // Metrics
      expect(event.metrics, isNotNull);
      final metrics = event.metrics!;

      expect(metrics[doubleProperty], doubleValue);
      expect(metrics[intProperty], intValue);
    });

    test('properties added by registerGlobalProperties are sent with events',
        () async {
      eventClient.registerGlobalProperties(analyticsProperties);

      await eventClient.recordEvent(
        eventType: eventType,
        session: session,
      );

      await eventClient.flushEvents();

      final captured = verify(() => pinpointClient.putEvents(captureAny()))
          .captured[0] as PutEventsRequest;

      final batchItem = captured.eventsRequest.batchItem;

      expect(batchItem[mockEndpointId], isNotNull);
      final eventsBatch = batchItem[mockEndpointId]!;

      // Event
      expect(eventsBatch.events.length, 1);
      expect(eventsBatch.events['0'], isNotNull);
      final event = eventsBatch.events['0']!;

      // Attributes
      expect(event.attributes, isNotNull);
      final attributes = event.attributes!;

      expect(attributes[stringProperty], stringValue);
      expect(attributes[boolProperty], boolValue.toString());

      // Metrics
      expect(event.metrics, isNotNull);
      final metrics = event.metrics!;

      expect(metrics[doubleProperty], doubleValue);
      expect(metrics[intProperty], intValue);
    });

    test(
        'properties removed by unregisterGlobalProperties are not sent with events',
        () async {
      eventClient.unregisterGlobalProperties([
        stringProperty,
        doubleProperty,
        boolProperty,
        intProperty,
      ]);

      await eventClient.recordEvent(
        eventType: eventType,
        session: session,
      );

      await eventClient.flushEvents();

      final captured = verify(() => pinpointClient.putEvents(captureAny()))
          .captured[0] as PutEventsRequest;

      final batchItem = captured.eventsRequest.batchItem;

      expect(batchItem[mockEndpointId], isNotNull);
      final eventsBatch = batchItem[mockEndpointId]!;

      // Event
      expect(eventsBatch.events.length, 1);
      expect(eventsBatch.events['0'], isNotNull);
      final event = eventsBatch.events['0']!;

      expect(event.attributes, isEmpty);
      expect(event.metrics, isEmpty);
    });

    test(
        'flushEvents does not delete events that fail with retryable exception',
        () async {
      await eventClient.recordEvent(
        eventType: successEventType,
      );
      await eventClient.recordEvent(
        eventType: retryableFailEventType,
      );

      when(() => pinpointClient.putEvents(any<PutEventsRequest>())).thenReturn(
        mockSmithyOperation(
          () => PutEventsResponse(
            eventsResponse: EventsResponse(
              results: {
                mockEndpointId: ItemResponse(
                  endpointItemResponse: EndpointItemResponse(
                    message: 'message',
                    statusCode: 200,
                  ),
                  eventsItemResponse: {
                    '0': EventItemResponse(
                      message: 'Accepted',
                      statusCode: 200,
                    ),
                    // TODO(kylechen): retryable exceptions should only be status code >=500 <600
                    '1': EventItemResponse(
                      message: 'Retryable Exception',
                      statusCode: 500,
                    )
                  },
                ),
              },
            ),
          ),
        ),
      );

      await eventClient.flushEvents();

      final items = eventStore.getCount(100);
      expect(items.length, 1);

      final storedEvent = StoredEvent(items.elementAt(0), jsonSerializers);
      final event = storedEvent.event;

      expect(event.eventType, retryableFailEventType);
    });

    test('flushEvents deletes events with non retryable exception', () async {
      await eventClient.recordEvent(
        eventType: successEventType,
      );
      await eventClient.recordEvent(
        eventType: failEventType,
      );

      when(() => pinpointClient.putEvents(any<PutEventsRequest>())).thenReturn(
        mockSmithyOperation(
          () => PutEventsResponse(
            eventsResponse: EventsResponse(
              results: {
                mockEndpointId: ItemResponse(
                  endpointItemResponse: EndpointItemResponse(
                    message: 'message',
                    statusCode: 200,
                  ),
                  eventsItemResponse: {
                    '0': EventItemResponse(
                      message: 'Accepted',
                      statusCode: 200,
                    ),
                    // TODO(kylechen): retryable exceptions should only be status code >=500 <600
                    '1': EventItemResponse(
                      message: 'ValidationException',
                      statusCode: 400,
                    )
                  },
                ),
              },
            ),
          ),
        ),
      );

      await eventClient.flushEvents();

      final items = eventStore.getCount(100);
      expect(items.length, 0);
    });

    test(
        'flushEvents does not delete events if pinpointClient throws retryable exception',
        () async {
      await eventClient.recordEvent(
        eventType: successEventType,
      );
      await eventClient.recordEvent(
        eventType: failEventType,
      );

      when(() => pinpointClient.putEvents(any<PutEventsRequest>()))
          .thenThrow(BadRequestException());

      await eventClient.flushEvents();

      final items = eventStore.getCount(100);
      expect(items.length, 2);
    });

    test(
        'flushEvents deletes events if pinpointClient throws non retryable exception',
        () async {
      await eventClient.recordEvent(
        eventType: successEventType,
      );
      await eventClient.recordEvent(
        eventType: failEventType,
      );

      when(() => pinpointClient.putEvents(any<PutEventsRequest>()))
          .thenThrow(PayloadTooLargeException());

      await eventClient.flushEvents();

      final items = eventStore.getCount(100);
      expect(items.length, 0);
    });
  });
}
