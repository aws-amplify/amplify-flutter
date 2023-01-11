// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/amplify_analytics_pinpoint_dart.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_lifecycle_provider.dart';
import 'utils/setup_utils.dart';
import 'utils/test_event.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('auto session tracking', () {
    final mockLifecycleProvider = MockLifecycleProvider();

    late Stream<TestEvent> eventsStream;

    setUp(() async {
      await configureAnalytics(
        appLifecycleProvider: mockLifecycleProvider,
      );
      eventsStream = await subscribeToEvents();
    });

    testWidgets(
      'manual trigger of onBackground/onForeground triggers session '
      'start/end events ',
      (_) async {
        mockLifecycleProvider.triggerOnBackgroundListener();

        TestSession? sessionStop;

        // Verify new session has newer values than old session
        final streamSubscription = eventsStream.listen(
          expectAsync1(
            count: 2,
            (event) async {
              if (sessionStop == null) {
                expect(event.eventType, zSessionStopEventType);
                sessionStop = event.session;
                mockLifecycleProvider.triggerOnForegroundListener();
                await Amplify.Analytics.flushEvents();
              } else {
                expect(event.eventType, zSessionStartEventType);
                final sessionStart = event.session;
                expect(
                  sessionStop!.sessionId,
                  isNot(sessionStart.sessionId),
                );
                expect(
                  sessionStart.startTimestamp
                      .isAfter(sessionStop!.stopTimestamp!),
                  isTrue,
                  reason: 'onForeground was called after onBackground',
                );
              }
            },
          ),
        );
        addTearDown(streamSubscription.cancel);

        /*
        await expectLater(
          eventsStream,
          emits(
            isA<TestEvent>().having(
              (e) => e.eventType,
              'eventType',
              zSessionStopEventType,
            ),
          ),
        );

        mockLifecycleProvider.triggerOnForegroundListener();

        await Amplify.Analytics.flushEvents();

        await expectLater(
          eventsStream,
          emits(
            isA<TestEvent>().having(
              (e) => e.eventType,
              'eventType',
              zSessionStartEventType,
            ),
          ),
        );

         */
      },
      timeout: const Timeout(Duration(minutes: 3)),
    );
  });
}
