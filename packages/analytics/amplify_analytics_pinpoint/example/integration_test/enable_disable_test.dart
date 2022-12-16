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
import 'utils/test_event.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('enable/disable', () {
    final mockLifecycleObserver = MockLifecycleProvider();

    late Stream<TestEvent> eventsStream;

    setUp(() async {
      eventsStream = await configureAnalytics(
        appLifecycleProvider: mockLifecycleObserver,
      );
    });

    testWidgets(
      'disable prevents events from being auto flushed and sessions from '
      'being auto tracked',
      (_) async {
        await Amplify.Analytics.disable();

        // Wait for all previous events to pass through
        final streamSubscription = eventsStream.listen((event) {
          fail('Analytics disabled but events were still sent!');
        });

        const customEventName = 'enable disable event name';
        final customEvent = AnalyticsEvent(customEventName);

        await Amplify.Analytics.recordEvent(event: customEvent);

        mockLifecycleObserver.triggerOnBackgroundListener();
        mockLifecycleObserver.triggerOnForegroundListener();

        // Give time for events to propagate if they were sent to remote server
        // to ensure the failure is not triggered
        await Future<void>.delayed(const Duration(minutes: 1));

        streamSubscription.cancel();

        // Ensure data sent, if sent manually
        await Amplify.Analytics.flushEvents();

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
  });
}
