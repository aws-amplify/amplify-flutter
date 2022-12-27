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
