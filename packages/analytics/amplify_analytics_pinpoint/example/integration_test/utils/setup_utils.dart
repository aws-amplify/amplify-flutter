//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
//

import 'dart:async';
import 'dart:convert';

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_analytics_pinpoint_example/amplifyconfiguration.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mock_secure_storage.dart';
import 'test_event.dart';

Future<void> configureAnalytics({
  AppLifecycleProvider? appLifecycleProvider,
}) async {
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
      appLifecycleProvider: appLifecycleProvider,
      analyticsClient: AnalyticsClient(
        endpointInfoStoreManager:
            EndpointInfoStoreManager(store: mockEndpointInfoStore),
      ),
    ),
    AmplifyAPI(),
  ]);
  await Amplify.configure(amplifyconfig);

  addTearDown(() async {
    // Flush pending events.
    await Amplify.Analytics.flushEvents();
    try {
      await Amplify.Auth.signOut();
    } on Exception {
      // ok
    }
    await Amplify.reset();
  });
}

Future<Stream<TestEvent>> subscribeToEvents() async {
  final subscriptionEstablished = Completer<void>.sync();

  final eventsStream = Amplify.API
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
      throw Exception(event.errors);
    }
    final data = event.data;
    if (data == null) {
      throw Exception('No data');
    }
    final json = jsonDecode(data) as Map<String, Object?>;
    final payload =
        jsonDecode((json['onCreateRecord'] as Map)['payload'] as String)
            as Map<String, Object?>;
    return TestEvent.fromJson(payload);
  }).where((payload) {
    // Filter for endpoint IDs which match this test suite since there may be
    // multiple tests running concurrently in CI.
    return payload.endpoint.id == mockEndpointId;
  }).asBroadcastStream();

  await subscriptionEstablished.future.timeout(
    const Duration(seconds: 10), // Auto-flush duration
    onTimeout: () => fail('Subscription could not be established'),
  );

  await Amplify.Analytics.flushEvents();

  await expectLater(
    eventsStream,
    emitsThrough(
      isA<TestEvent>().having(
        (e) => e.eventType,
        'eventType',
        zSessionStartEventType,
      ),
    ),
  );

  return eventsStream;
}
