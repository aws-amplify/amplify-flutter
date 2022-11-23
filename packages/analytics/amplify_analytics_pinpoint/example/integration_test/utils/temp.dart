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

/*
import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_analytics_pinpoint_example/amplifyconfiguration.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('recordEvent', () {
    const boolProperty = MapEntry('boolProperty', true);
    // Boolean properties are recorded as strings
    const stringifiedBoolProperty = MapEntry('boolProperty', 'true');

    const doubleProperty = MapEntry('doubleProperty', pi);
    // There is some lossiness behavior to doubles
    const lossyDoubleProperty = MapEntry('doubleProperty', 3.141592653589793);

    const intProperty = MapEntry('intProperty', 42);
    const stringProperty = MapEntry('stringProperty', 'Hello, world');

    late final Stream<Map<String, Object?>> eventsStream;

    setUpAll(() async {
      await Amplify.addPlugins([
        AmplifyAuthCognito(
          credentialStorage: AmplifySecureStorage(
            config: AmplifySecureStorageConfig(
              scope: 'analyticsAuth',
              macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
            ),
          ),
        ),
        AmplifyAnalyticsPinpoint(
          keyValueStore: AmplifySecureStorage(
            config: AmplifySecureStorageConfig(
              scope: 'analytics',
              macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
            ),
          ),
        ),
        AmplifyAPI(),
      ]);
      await Amplify.configure(amplifyconfig);

      final subscriptionEstablished = Completer<void>();

      eventsStream = Amplify.API
          .subscribe(
        GraphQLRequest<String>(
          document: '''
            subscription {
              onCreateRecord {
                id
                payload
              }
            }
            ''',
        ),
        onEstablished: subscriptionEstablished.complete,
      )
          .map((event) {
        if (event.hasErrors) {
          return {'errors': event.errors};
        }
        final data = event.data;
        if (data == null) {
          return const <String, Object?>{};
        }
        final json = jsonDecode(data) as Map<String, Object?>;
        return jsonDecode((json['onCreateRecord'] as Map)['payload'] as String)
            as Map<String, Object?>;
      }).asBroadcastStream();

      expect(
        eventsStream,
        emitsThrough(
          containsPair('event_type', '_session.start'),
        ),
      );

      await subscriptionEstablished.future.timeout(
        const Duration(seconds: 30),
        onTimeout: () => fail('Subscription could not be established'),
      );
    });

    test(
      'can record custom event',
      () async {
        final customEventId = uuid();
        final customEvent = AnalyticsEvent(customEventId);

        customEvent.properties
          ..addBoolProperty(boolProperty.key, boolProperty.value)
          ..addDoubleProperty(doubleProperty.key, doubleProperty.value)
          ..addIntProperty(intProperty.key, intProperty.value)
          ..addStringProperty(stringProperty.key, stringProperty.value);

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

        expect(
          eventsStream,
          emitsThrough(allOf([
            containsPair('event_type', customEventId),
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
          ])),
        );

        await Amplify.Analytics.recordEvent(event: customEvent);
        await Amplify.Analytics.flushEvents();
      },
      timeout: const Timeout(Duration(minutes: 2)),
    );
  });
}

 */
