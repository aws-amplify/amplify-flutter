// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Integration tests for the Amplify Connect client against a real deployed
/// Customer Profiles write endpoint.
///
/// These require a provisioned backend (see `tool/pull_test_backend.sh`). They
/// are not run in PR CI; without configured outputs the suite fails fast in
/// [setUpAll] rather than silently passing.
library;

import 'package:amplify_connect_client/amplify_connect_client.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/setup_utils.dart';

void main() {
  setUpAll(() {
    if (!isConfigured) {
      fail(
        'Test backend not configured. Run tool/pull_test_backend.sh or place '
        'amplify_outputs.dart in lib/.',
      );
    }
  });

  // Authenticated caller: requests are SigV4-signed with the signed-in user's
  // Cognito Identity Pool credentials.
  group('authenticated', () {
    late AmplifyConnectClientFlutter client;

    setUp(() async {
      await configureAmplify();
      await signInNewUser();
      client = buildClient();
    });

    testWidgets('identifyUser writes a profile', (tester) async {
      await expectLater(
        client.identifyUser(
          userProfile: const UserProfile(
            email: 'integ@example.com',
            name: 'Integ User',
            customAttributes: {'plan': 'gold'},
          ),
        ),
        completes,
      );
    });

    testWidgets('registerDevice then removeDevice round-trip', (tester) async {
      await expectLater(
        client.registerDevice(token: 'integ-device-token'),
        completes,
      );
      await expectLater(client.removeDevice(), completes);
    });
  });

  // Guest caller: no sign-in, requests are SigV4-signed with guest Identity
  // Pool credentials. This exercises real signing, which the unit tests cannot.
  group('guest (SigV4, no sign-in)', () {
    late AmplifyConnectClientFlutter client;

    setUp(() async {
      await configureAmplify();
      client = buildClient();
    });

    testWidgets('guest identifyUser writes a profile', (tester) async {
      await expectLater(
        client.identifyUser(
          userProfile: const UserProfile(name: 'Integ Guest'),
        ),
        completes,
      );
    });
  });
}
