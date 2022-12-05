// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.

import 'dart:async';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('recordEvent', () {
    late Stream<Map<String, Object?>> eventsStream;

    setUp(() async {
      eventsStream = await configureAnalytics();
    });

    testWidgets(
      'custom events are automatically submitted without calls to Analytics.flushEvents()',
      (_) async {
        const customEventName = 'my custom event type name';
        final customEvent = AnalyticsEvent(customEventName);

        await Amplify.Analytics.recordEvent(event: customEvent);

        await expectLater(
          eventsStream,
          emits(
            containsPair('event_type', customEventName),
          ),
        );
      },
      timeout: const Timeout(Duration(minutes: 3)),
    );

    testWidgets(
      'recorded custom event is sent with correct custom and meta properties',
      (_) async {
        const customEventName = 'my custom event type name';
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
          emits(allOf([
            containsPair('event_type', customEventName),
            containsPair(
              'attributes',
              // Boolean properties are recorded as strings
              Map.fromEntries([stringifiedBoolProperty, stringProperty]),
            ),
            containsPair(
              'metrics',
              // There is some lossiness behavior to doubles
              Map.fromEntries([lossyDoubleProperty, intProperty]),
            ),
            // Session is valid before timestamp
            containsPair(
                'endpoint',
                allOf(
                  containsPair('EndpointStatus', 'ACTIVE'),
                  containsPair('OptOut', 'ALL'),
                  // TODO(fjnoyp): Are you sure about this?
                  // containsPair('Attributes', {}),
                  // containsPair('Metrics', {}),
                ))
          ])),
        );
      },
      timeout: const Timeout(Duration(minutes: 3)),
    );

    test(
      'Analytics.register and unregister of GlobalProperties adds and removes properties in future events',
      () async {
        const customEventName = 'my custom event type name';
        final customEvent = AnalyticsEvent(customEventName);

        // Add local event properties
        customEvent.properties.addStringProperty(
          secondStringProperty.key,
          secondStringProperty.value,
        );
        customEvent.properties.addIntProperty(
          secondIntProperty.key,
          secondIntProperty.value,
        );

        // Add attribute global property types
        final attributeGlobalProperties = AnalyticsProperties()
          ..addBoolProperty(boolProperty.key, boolProperty.value)
          ..addStringProperty(stringProperty.key, stringProperty.value);

        await Amplify.Analytics.registerGlobalProperties(
            globalProperties: attributeGlobalProperties);

        await Amplify.Analytics.recordEvent(event: customEvent);
        await Amplify.Analytics.flushEvents();

        // Verify local and global properties are present in sent event
        await expectLater(
          eventsStream,
          emits(allOf([
            containsPair('event_type', customEventName),
            containsPair(
              'attributes',
              // Boolean properties are recorded as strings
              Map.fromEntries([
                stringifiedBoolProperty,
                stringProperty,
                secondStringProperty
              ]),
            ),
            containsPair(
              'metrics',
              // There is some lossiness behavior to doubles
              Map.fromEntries([secondIntProperty]),
            ),
          ])),
        );

        await Amplify.Analytics.unregisterGlobalProperties(
          propertyNames: [stringifiedBoolProperty.key, stringProperty.key],
        );

        // Add metric global property types
        final metricGlobalProperties = AnalyticsProperties()
          ..addIntProperty(intProperty.key, intProperty.value)
          ..addDoubleProperty(doubleProperty.key, doubleProperty.value);

        await Amplify.Analytics.registerGlobalProperties(
            globalProperties: metricGlobalProperties);

        await Amplify.Analytics.recordEvent(event: customEvent);
        await Amplify.Analytics.flushEvents();

        // Verify local and global properties are present in sent event
        await expectLater(
          eventsStream,
          emits(allOf([
            containsPair('event_type', customEventName),
            containsPair(
              'attributes',
              // Boolean properties are recorded as strings
              Map.fromEntries([secondStringProperty]),
            ),
            containsPair(
              'metrics',
              // There is some lossiness behavior to doubles
              Map.fromEntries(
                  [lossyDoubleProperty, intProperty, secondIntProperty]),
            ),
          ])),
        );

        await Amplify.Analytics.unregisterGlobalProperties();

        await Amplify.Analytics.recordEvent(event: customEvent);
        await Amplify.Analytics.flushEvents();

        // Verify only local properties are present in sent event
        await expectLater(
          eventsStream,
          emits(allOf([
            containsPair('event_type', customEventName),
            containsPair(
              'attributes',
              Map.fromEntries([secondStringProperty]),
            ),
            containsPair(
              'metrics',
              Map.fromEntries([secondIntProperty]),
            ),
          ])),
        );
      },
      timeout: const Timeout(Duration(minutes: 3)),
    );
  });
}
