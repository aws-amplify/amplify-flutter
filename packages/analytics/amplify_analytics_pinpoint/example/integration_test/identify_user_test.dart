// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart'
    show EndpointLocation;
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';
import 'utils/test_event.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('identifyUser', () {
    late Stream<TestEvent> eventsStream;

    setUpAll(() async {
      await configureAnalytics();
      eventsStream = await subscribeToEvents();
    });

    testWidgets(
      'properties of identityUser() added to all future events',
      (_) async {
        final userId = DateTime.now().toIso8601String();
        const name = 'name';
        const email = 'email';
        const plan = 'plan';

        const latitude = 43.0;
        const longitude = 12.0;
        const postalCode = '94070';
        const city = 'city';
        const region = 'region';
        const country = 'USA';

        final location = AnalyticsUserProfileLocation(
          latitude: latitude,
          longitude: longitude,
          postalCode: postalCode,
          city: city,
          region: region,
          country: country,
        );

        final properties = AnalyticsProperties()
          ..addBoolProperty(boolProperty.key, boolProperty.value)
          ..addDoubleProperty(doubleProperty.key, doubleProperty.value)
          ..addIntProperty(intProperty.key, intProperty.value)
          ..addStringProperty(stringProperty.key, stringProperty.value);

        await Amplify.Analytics.identifyUser(
          userId: userId,
          userProfile: AWSPinpointUserProfile(
            name: name,
            email: email,
            plan: plan,
            location: location,
            analyticsProperties: properties,
            userAttributes: properties,
          ),
        );

        const customEventName = 'identify user event name';
        final customEvent = AnalyticsEvent(customEventName);

        await Amplify.Analytics.recordEvent(event: customEvent);
        await Amplify.Analytics.flushEvents();

        await expectLater(
          eventsStream,
          emits(
            isA<TestEvent>()
                .having((e) => e.eventType, 'eventType', customEventName)
                .having(
                  (e) => e.endpoint.endpointStatus,
                  'EndpointStatus',
                  'ACTIVE',
                )
                .having((e) => e.endpoint.optOut, 'OptOut', 'ALL')
                .having(
                  (e) => e.endpoint.location,
                  'Location',
                  EndpointLocation(
                    latitude: latitude,
                    longitude: longitude,
                    postalCode: postalCode,
                    city: city,
                    region: region,
                    country: country,
                  ),
                )
                .having((e) => e.endpoint.user?.userId, 'UserId', userId)
                .having(
                  (e) => e.endpoint.user?.userAttributes?.toMap() ?? const {},
                  'Attributes',
                  equals({
                    boolProperty.key: [stringifiedBoolProperty.value],
                    stringProperty.key: [stringProperty.value],
                    intProperty.key: [intProperty.value.toString()],
                    doubleProperty.key: [doubleProperty.value.toString()],
                  }),
                )
                .having(
                  (e) => e.endpoint.attributes?.toMap() ?? const {},
                  'Attributes',
                  equals({
                    boolProperty.key: [stringifiedBoolProperty.value],
                    stringProperty.key: [stringProperty.value],
                    'name': [name],
                    'plan': [plan],
                    'email': [email],
                  }),
                )
                .having(
                  (e) => e.endpoint.metrics?.toMap() ?? const {},
                  'Metrics',
                  equals(
                    Map.fromEntries([
                      lossyDoubleProperty,
                      intProperty,
                    ]),
                  ),
                ),
          ),
        );
      },
      timeout: const Timeout(Duration(minutes: 3)),
    );
  });
}
