// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';
import 'utils/test_event.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('recordEvent', () {
    late Stream<TestEvent> eventsStream;

    setUp(() async {
      await configureAnalytics();
      eventsStream = await subscribeToEvents();
    });

    testWidgets(
      'custom events are automatically submitted without calls to '
      'Analytics.flushEvents()',
      (_) async {
        const customEventName = 'custom events auto submitted event';
        final customEvent = AnalyticsEvent(customEventName);

        await Amplify.Analytics.recordEvent(event: customEvent);

        await expectLater(
          eventsStream,
          emits(
            isA<TestEvent>().having(
              (e) => e.eventType,
              'eventType',
              customEventName,
            ),
          ),
        );
      },
      timeout: const Timeout(Duration(minutes: 3)),
    );

    testWidgets(
      'recorded custom event is sent with correct custom and meta properties',
      (_) async {
        const customEventName = 'events sent with properties name';
        final customEvent = AnalyticsEvent(customEventName);

        customEvent.properties
          ..addBoolProperty(boolProperty.key, boolProperty.value)
          ..addDoubleProperty(doubleProperty.key, doubleProperty.value)
          ..addIntProperty(intProperty.key, intProperty.value)
          ..addStringProperty(stringProperty.key, stringProperty.value);

        // Verify local analyticsEvent has proper fields
        expect(
          customEvent.properties.getAllProperties(),
          Map.fromEntries([
            boolProperty,
            doubleProperty,
            intProperty,
            stringProperty,
          ]),
        );
        expect(
          customEvent.properties.getAllPropertiesTypes(),
          {
            boolProperty.key: 'BOOL',
            doubleProperty.key: 'DOUBLE',
            intProperty.key: 'INT',
            stringProperty.key: 'STRING',
          },
        );

        await Amplify.Analytics.recordEvent(event: customEvent);
        await Amplify.Analytics.flushEvents();

        // Verify event sent to Pinpoint has proper fields
        await expectLater(
          eventsStream,
          emits(
            isA<TestEvent>()
                .having((e) => e.eventType, 'eventType', customEventName)
                .having(
                  (e) => e.attributes,
                  'attributes',
                  equals(Map.fromEntries(
                    [stringifiedBoolProperty, stringProperty],
                  )),
                )
                .having(
                  (e) => e.metrics,
                  'metrics',
                  equals(Map.fromEntries(
                    [lossyDoubleProperty, intProperty],
                  )),
                )
                .having(
                  (e) => e.endpoint.endpointStatus,
                  'EndpointStatus',
                  'ACTIVE',
                )
                .having((e) => e.endpoint.optOut, 'OptOut', 'ALL')
                .having(
                  (e) => e.endpoint.attributes?.toMap() ?? const {},
                  'Attributes',
                  isEmpty,
                )
                .having(
                  (e) => e.endpoint.metrics?.toMap() ?? const {},
                  'Metrics',
                  isEmpty,
                ),
          ),
        );
      },
      timeout: const Timeout(Duration(minutes: 3)),
    );

    testWidgets(
      'Analytics.register and unregister of GlobalProperties adds and removes '
      'properties in future events',
      (_) async {
        // Add attribute global property types
        final firstEvent = createEvent('global props first event name');

        final attributeGlobalProperties = AnalyticsProperties()
          ..addBoolProperty(boolProperty.key, boolProperty.value)
          ..addStringProperty(stringProperty.key, stringProperty.value);

        await Amplify.Analytics.registerGlobalProperties(
            globalProperties: attributeGlobalProperties);

        await Amplify.Analytics.recordEvent(event: firstEvent);
        await Amplify.Analytics.flushEvents();

        // Verify local and global properties are present in sent event
        await expectLater(
          eventsStream,
          emits(
            isA<TestEvent>()
                .having((e) => e.eventType, 'eventType', firstEvent.name)
                .having(
                  (e) => e.attributes,
                  'attributes',
                  equals(
                    Map.fromEntries([
                      stringifiedBoolProperty,
                      stringProperty,
                      secondStringProperty
                    ]),
                  ),
                )
                .having(
                  (e) => e.metrics,
                  'metrics',
                  equals(Map.fromEntries([secondIntProperty])),
                ),
          ),
          reason:
              'Step 1 - Verify local and global properties are present in send event',
        );

        await Amplify.Analytics.unregisterGlobalProperties(
          propertyNames: [boolProperty.key, stringProperty.key],
        );

        // Add metric global property types
        final secondEvent = createEvent('global props second event name');

        final metricGlobalProperties = AnalyticsProperties()
          ..addIntProperty(intProperty.key, intProperty.value)
          ..addDoubleProperty(doubleProperty.key, doubleProperty.value);

        await Amplify.Analytics.registerGlobalProperties(
            globalProperties: metricGlobalProperties);

        await Amplify.Analytics.recordEvent(event: secondEvent);
        await Amplify.Analytics.flushEvents();

        // Verify local and global properties are present in sent event
        await expectLater(
          eventsStream,
          emits(
            isA<TestEvent>()
                .having((e) => e.eventType, 'eventType', secondEvent.name)
                .having(
                  (e) => e.attributes,
                  'attributes',
                  equals(
                    Map.fromEntries([secondStringProperty]),
                  ),
                )
                .having(
                  (e) => e.metrics,
                  'metrics',
                  equals(Map.fromEntries(
                    [lossyDoubleProperty, intProperty, secondIntProperty],
                  )),
                ),
          ),
          reason:
              'Step 2 - Verify local and global properties are present in send event',
        );

        await Amplify.Analytics.unregisterGlobalProperties();

        // Verify only local properties are present in sent event
        final thirdEvent = createEvent('global props third event name');

        await Amplify.Analytics.recordEvent(event: thirdEvent);
        await Amplify.Analytics.flushEvents();

        await expectLater(
          eventsStream,
          emits(
            isA<TestEvent>()
                .having((e) => e.eventType, 'eventType', thirdEvent.name)
                .having(
                  (e) => e.attributes,
                  'attributes',
                  equals(Map.fromEntries([secondStringProperty])),
                )
                .having(
                  (e) => e.metrics,
                  'metrics',
                  equals(Map.fromEntries([secondIntProperty])),
                ),
          ),
          reason:
              'Step 3 - Verify only local properties are present in sent event',
        );
      },
      timeout: const Timeout(Duration(minutes: 3)),
    );
  });
}

AnalyticsEvent createEvent(String name) {
  final customEvent = AnalyticsEvent(name);

  // Add local event properties
  customEvent.properties.addStringProperty(
    secondStringProperty.key,
    secondStringProperty.value,
  );
  customEvent.properties.addIntProperty(
    secondIntProperty.key,
    secondIntProperty.value,
  );
  return customEvent;
}
