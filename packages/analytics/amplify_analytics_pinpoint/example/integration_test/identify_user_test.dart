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
      eventsStream = await configureAnalytics();
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
          userProfile: AnalyticsUserProfile(
            name: name,
            email: email,
            plan: plan,
            location: location,
            analyticsProperties: properties,
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
