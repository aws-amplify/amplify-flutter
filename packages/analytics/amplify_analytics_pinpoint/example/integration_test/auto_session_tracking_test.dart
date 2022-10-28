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

    late final Stream<Map<String, Object?>> eventsStream;

    setUpAll(() async {
      eventsStream = await configureAnalytics(
        appLifecycleProvider: mockLifecycleObserver,
      );
    });

    tearDownAll(Amplify.reset);

    test(
      'manual trigger of onBackground/onForeground triggers session start/end events ',
      () async {
        mockLifecycleObserver.triggerOnBackgroundListener();

        Map<String, String>? originalSession;

        // Verify new session has newer values than old session
        final streamSubscription = eventsStream.listen((event) {
          expect(event['session'], isNotEmpty);

          final session = event['session'] as Map<String, String>?;
          if (originalSession == null) {
            originalSession = session;
          } else {
            final newSession = session;

            expect(originalSession!['id'], isNot(newSession!['id']));

            final stopTimestamp =
                DateTime.parse(originalSession!['stopTimestamp']!);

            final startTimestamp =
                DateTime.parse(newSession['startTimestamp']!);

            expect(startTimestamp.isAfter(stopTimestamp), isTrue);
          }
        });

        await expectLater(
          eventsStream,
          emits(
            containsPair('event_type', '_session.stop'),
          ),
        );

        mockLifecycleObserver.triggerOnForegroundListener();

        expect(
          eventsStream,
          emitsThrough(
            containsPair('event_type', '_session.start'),
          ),
        );

        await Amplify.Analytics.flushEvents();

        await streamSubscription.cancel();
      },
      timeout: const Timeout(Duration(minutes: 2)),
    );
  });
}
