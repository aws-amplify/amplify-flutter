// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

void main() {
  testRunner.setupTests();

  group('Auth Hub', () {
    final authEventStream =
        Amplify.Hub.availableStreams[HubChannel.Auth]!.cast<AuthHubEvent>();

    final username = generateUsername();
    final password = generatePassword();

    setUpAll(() async {
      await testRunner.configure();

      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
      );

      await signOutUser();
    });

    tearDownAll(Amplify.reset);

    Matcher hasEventName(String name) =>
        isA<AuthHubEvent>().having((e) => e.eventName, 'eventName', name);

    asyncTest(
      'should broadcast events for sign in and sign out',
      (expectations) async {
        expectations.add(
          expectLater(
            authEventStream,
            emitsInOrder([
              hasEventName('SIGNED_IN'),
              hasEventName('SIGNED_OUT'),
              hasEventName('SIGNED_IN'),
              hasEventName('SIGNED_OUT'),
            ]),
          ),
        );

        await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        await Amplify.Auth.signOut();
        await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        await Amplify.Auth.signOut();
      },
    );

    asyncTest('should broadcast events for deleteUser', (expectations) async {
      expectations.add(
        expectLater(
          authEventStream,
          emitsInOrder([
            hasEventName('SIGNED_IN'),
            hasEventName('SIGNED_OUT'),
            hasEventName('USER_DELETED'),
          ]),
        ),
      );

      await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      await Amplify.Auth.deleteUser();
    });
  });
}
