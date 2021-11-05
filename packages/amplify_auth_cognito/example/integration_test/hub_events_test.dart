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

import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  final username = generateUsername();
  final password = generatePassword();

  group('auth hub', () {
    setUpAll(() async {
      await configureAuth();

      await Amplify.Auth.signUp(
          username: username,
          password: password,
          options: CognitoSignUpOptions(userAttributes: {
            CognitoUserAttributes.email: generateEmail(),
            CognitoUserAttributes.phoneNumber: mockPhoneNumber
          }));

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
        expect(event.eventName, 'SIGNED_IN');

        // assert sign out event is broadcast
        nextEvent = authEventStream.first;
        await Amplify.Auth.signOut();
        event = await nextEvent;
        expect(event.eventName, 'SIGNED_OUT');

        // assert a second sign in event is broadcast
        nextEvent = authEventStream.first;
        await Amplify.Auth.signIn(username: username, password: password);
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
  });
}
