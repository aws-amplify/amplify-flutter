// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
    final mockLifecycleProvider = MockLifecycleProvider();

    late Stream<TestEvent> eventsStream;

    setUp(() async {
      await configureAnalytics(
        appLifecycleProvider: mockLifecycleProvider,
      );
      eventsStream = await subscribeToEvents();
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

        // Ensure app background/foreground does not auto send event
        mockLifecycleProvider.triggerOnBackgroundListener();
        mockLifecycleProvider.triggerOnForegroundListener();

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
