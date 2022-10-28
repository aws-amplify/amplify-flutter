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

Future<Stream<Map<String, Object?>>> configureAnalytics(
    {AppLifecycleProvider? appLifecycleProvider}) async {
  final Stream<Map<String, Object?>> eventsStream;

  await Amplify.addPlugins([
    AmplifyAuthCognito(),
    AmplifyAnalyticsPinpoint(
      appLifecycleProvider: appLifecycleProvider,
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
    if (event.errors.isNotEmpty) {
      return {'errors': event.errors};
    }
    final data = event.data;
    if (data == null) {
      return const <String, Object?>{};
    }
    final json = jsonDecode(data) as Map<String, Object?>;
    final mapData =
        jsonDecode((json['onCreateRecord'] as Map)['payload'] as String)
            as Map<String, Object?>;
    return mapData;
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

  addTearDown(Amplify.reset);

  return eventsStream;
}
