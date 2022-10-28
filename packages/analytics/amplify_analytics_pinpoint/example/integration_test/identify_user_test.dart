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
    late final Stream<Map<String, Object?>> eventsStream;

    setUpAll(() async {
      eventsStream = await configureAnalytics();
    });

    tearDownAll(Amplify.reset);

    // TODO(fjnoyp): Running this locally too many times will cause max endpoint error of 15 from Pinpoint
    // We need to delete/reset Analytics backend somehow
    test(
      'properties of identityUser() added to all future events',
      () async {
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

        try {
          await Amplify.Analytics.identifyUser(
              userId: userId,
              userProfile: AnalyticsUserProfile(
                name: name,
                email: email,
                plan: plan,
                location: location,
                analyticsProperties: properties,
              ));

          const customEventName = 'my custom event type name';
          final customEvent = AnalyticsEvent(customEventName);

          expect(
            eventsStream,
            emits(allOf([
              containsPair('event_type', customEventName),
              // Session is valid before timestamp
              containsPair(
                  'endpoint',
                  allOf(
                    containsPair('EndpointStatus', 'ACTIVE'),
                    containsPair('OptOut', 'ALL'),
                    containsPair(
                      'Location',
                      allOf(
                        containsPair('Latitude', latitude),
                        containsPair('Longitude', longitude),
                        containsPair('PostalCode', postalCode),
                        containsPair('City', city),
                        containsPair('Region', region),
                        containsPair('Country', country),
                      ),
                    ),
                    containsPair(
                      'User',
                      containsPair(
                        'UserId',
                        userId,
                      ),
                    ),
                    containsPair('Attributes', {
                      boolProperty.key: [stringifiedBoolProperty.value],
                      stringProperty.key: [stringProperty.value],
                      'name': [name],
                      'plan': [plan],
                      'email': [email],
                    }),
                    containsPair(
                      'Metrics',
                      // There is some lossiness behavior to doubles
                      Map.fromEntries([
                        lossyDoubleProperty,
                        intProperty,
                      ]),
                    ),
                  ))
            ])),
          );

          await Amplify.Analytics.recordEvent(event: customEvent);
          await Amplify.Analytics.flushEvents();
        } on AnalyticsException catch (e) {
          expect(e.message, 'Exceeded maximum endpoint per user count:15');
        }
      },
      timeout: const Timeout(Duration(minutes: 2)),
    );
  });
}
