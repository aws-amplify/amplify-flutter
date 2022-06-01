/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  final username = generateUsername();
  final password = generatePassword();

  group('auth hub', () {
    setUpAll(() async {
      await configureAuth(additionalPlugins: [
        AmplifyAPI(),
      ]);

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      await signOutUser();
    });

    testWidgets(
      'should broadcast events for sign in and sign out',
      (WidgetTester tester) async {
        // setup
        Future<HubEvent> nextEvent;
        HubEvent event;
        var eventCount = 0;
        var authEventStream = Amplify.Hub.availableStreams[HubChannel.Auth]!;
        authEventStream.listen((event) => eventCount++);

        // assert sign in event is broadcast
        nextEvent = authEventStream.first;
        await Amplify.Auth.signIn(username: username, password: password);
        event = await nextEvent;
        expect(
          event.eventName,
          'SIGNED_IN',
        );

        // assert sign out event is broadcast
        nextEvent = authEventStream.first;
        await Amplify.Auth.signOut();
        event = await nextEvent;
        expect(event.eventName, 'SIGNED_OUT');

        // assert a second sign in event is broadcast
        nextEvent = authEventStream.first;
        await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        event = await nextEvent;
        expect(event.eventName, 'SIGNED_IN');

        // assert a second sign out event is broadcast
        nextEvent = authEventStream.first;
        await Amplify.Auth.signOut();
        event = await nextEvent;
        expect(event.eventName, 'SIGNED_OUT');

        // assert that no other events are broadcast
        expect(eventCount, 4);
      },
    );

    testWidgets(
      'should broadcast events for deleteUser',
      (WidgetTester tester) async {
        // setup
        Future<HubEvent> signinEvent;
        Future<HubEvent> deleteEvent;
        Future<HubEvent> signoutEvent;
        var eventCount = 0;
        var authEventStream = Amplify.Hub.availableStreams[HubChannel.Auth]!;
        authEventStream.listen((event) => eventCount++);

        // assert sign in event is broadcast
        signinEvent =
            authEventStream.firstWhere((el) => el.eventName == 'SIGNED_IN');
        deleteEvent =
            authEventStream.firstWhere((el) => el.eventName == 'USER_DELETED');
        signoutEvent =
            authEventStream.firstWhere((el) => el.eventName == 'SIGNED_OUT');

        await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        var event1 = await signinEvent;
        expect(event1.eventName, 'SIGNED_IN');

        // assert signed out event is broadcast
        await Amplify.Auth.deleteUser();
        var event2 = await signoutEvent;
        var event3 = await deleteEvent;
        expect(event2.eventName, 'SIGNED_OUT');

        expect(event3.eventName, 'USER_DELETED');

        expect(eventCount, 3);
      },
    );
  });
}
