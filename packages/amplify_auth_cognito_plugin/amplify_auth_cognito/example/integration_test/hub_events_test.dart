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

import 'dart:io' show Platform;
import 'package:amplify_test/amplify_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_api/amplify_api.dart';

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
        var nextEvent;
        var event;
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
        var nextEvent;
        var event;
        var eventCount = 0;
        var authEventStream = Amplify.Hub.availableStreams[HubChannel.Auth]!;
        authEventStream.listen((event) => eventCount++);

        // assert sign in event is broadcast
        nextEvent = authEventStream.first;
        await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        event = await nextEvent;
        expect(event.eventName, 'SIGNED_IN');

        // assert signed out event is broadcast
        nextEvent = authEventStream.first;
        await Amplify.Auth.deleteUser();
        event = await nextEvent;
        expect(event.eventName, 'SIGNED_OUT');

        // assert delete user event is broadcast
        nextEvent = authEventStream.first;
        event = await nextEvent;
        expect(event.eventName, 'USER_DELETED');

        // assert 3 total events are broadcast
        expect(eventCount, 3);
      },
      skip: !Platform.isIOS,
    );
  });
}
