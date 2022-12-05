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

  group('auto session tracking', () {
    final mockLifecycleObserver = MockLifecycleProvider();

    late Stream<Map<String, Object?>> eventsStream;

    setUp(() async {
      eventsStream = await configureAnalytics(
        appLifecycleProvider: mockLifecycleObserver,
      );
    });

    testWidgets(
      'manual trigger of onBackground/onForeground triggers session start/end events ',
      (_) async {
        mockLifecycleObserver.triggerOnBackgroundListener();

        Map<String, dynamic>? originalSession;

        // Verify new session has newer values than old session
        final streamSubscription = eventsStream.listen(
          expectAsync1(
            count: 2,
            (event) {
              expect(event['session'], isNotEmpty);

              final session = event['session'] as Map<String, dynamic>;
              if (originalSession == null) {
                originalSession = session;
                return;
              }
              final newSession = session;

              expect(
                originalSession!['session_id'],
                isNot(newSession['session_id']),
              );

              final stopTimestamp = DateTime.fromMillisecondsSinceEpoch(
                originalSession!['stop_timestamp'] as int,
              );

              final startTimestamp = DateTime.fromMillisecondsSinceEpoch(
                newSession['start_timestamp'] as int,
              );

              expect(startTimestamp.isAfter(stopTimestamp), isTrue);
            },
          ),
        );
        addTearDown(streamSubscription.cancel);

        await expectLater(
          eventsStream,
          emits(
            containsPair('event_type', '_session.stop'),
          ),
        );

        mockLifecycleObserver.triggerOnForegroundListener();

        await Amplify.Analytics.flushEvents();

        await expectLater(
          eventsStream,
          emits(
            containsPair('event_type', '_session.start'),
          ),
        );
      },
      timeout: const Timeout(Duration(minutes: 2)),
    );
  });
}
