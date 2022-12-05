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

import 'utils/mock_lifecycle_provider.dart';
import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('enable/disable', () {
    final mockLifecycleObserver = MockLifecycleProvider();

    late Stream<Map<String, Object?>> eventsStream;

    setUp(() async {
      eventsStream = await configureAnalytics(
        appLifecycleProvider: mockLifecycleObserver,
      );
    });

    test(
      'disable prevents events from being auto flushed and sessions from being auto tracked',
      () async {
        await Amplify.Analytics.disable();

        // Wait for all previous events to pass through
        final streamSubscription = eventsStream.listen((event) {
          fail('Analytics disabled but events were still sent!');
        });
        addTearDown(streamSubscription.cancel);

        const customEventName = 'my custom event type name';
        final customEvent = AnalyticsEvent(customEventName);

        await Amplify.Analytics.recordEvent(event: customEvent);

        mockLifecycleObserver.triggerOnBackgroundListener();
        mockLifecycleObserver.triggerOnForegroundListener();

        // Give time for events to propogate if they were sent to remote server
        // to ensure the failure above does not execute.
        await Future<void>.delayed(const Duration(minutes: 1));
      },
      timeout: const Timeout(Duration(minutes: 2)),
    );
  });
}
