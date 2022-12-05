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
import 'package:amplify_analytics_pinpoint_example/amplifyconfiguration.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mock_key_value_store.dart';

Future<Stream<Map<String, Object?>>> configureAnalytics(
    {AppLifecycleProvider? appLifecycleProvider}) async {
  final Stream<Map<String, Object?>> eventsStream;

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
      keyValueStore: mockKeyValueStore,
    ),
    AmplifyAPI(),
  ]);
  await Amplify.configure(amplifyconfig);
  await Amplify.Analytics.enable();

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

  final subscriptionEstablished = Completer<void>.sync();

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
  }).where((payload) {
    // Filter for endpoint IDs which match this test suite since there may be
    // multiple tests running concurrently in CI.
    final endpoint = payload['endpoint'] as Map<String, dynamic>;
    final endpointId = endpoint['Id'] as String;
    return endpointId == mockEndpointId;
  }).asBroadcastStream();

  await subscriptionEstablished.future.timeout(
    const Duration(seconds: 30),
    onTimeout: () => fail('Subscription could not be established'),
  );

  await Amplify.Analytics.flushEvents();

  await expectLater(
    eventsStream,
    emitsThrough(
      containsPair('event_type', '_session.start'),
    ),
  );

  return eventsStream;
}
