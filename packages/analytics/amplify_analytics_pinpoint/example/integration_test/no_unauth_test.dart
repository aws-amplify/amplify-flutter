// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_analytics_pinpoint_example/amplifyconfiguration.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_secure_storage.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
      'Amplify.configure should complete even when unauthenticated access is disabled.',
      () {
    tearDown(Amplify.reset);

    for (final environmentName in const [
      'no-unauth-access',
      'no-unauth-identities',
    ]) {
      testWidgets(environmentName, (_) async {
        storageFactory(scope) => setupAndCreateMockPersistedSecuredStorage();
        await Amplify.addPlugins([
          AmplifyAuthCognito(
            secureStorageFactory: storageFactory,
          ),
          AmplifyAnalyticsPinpoint(
            secureStorageFactory: storageFactory,
          ),
          AmplifyAPI(),
        ]);
        await completesWithoutError(
          () => Amplify.configure(amplifyEnvironments[environmentName]!),
        );
      });
    }
  });
}

/// Tests that [callback] can complete without an error, while ignoring any errors
/// that are not the direct result of [callback].
///
/// This is useful for testing methods that may initiate other async functions
/// without waiting for them to complete. If async functions that are not awaited
/// on result in an error, they are ignored.
///
/// Once analytics is configured, events will be sent to pinpoint every n seconds.
/// If the user is not signed in and guest access is not enabled, these requests
/// will fail until the user logs in. These failures are expected and should not
/// fail the test.
Future<void> completesWithoutError(Future<Object?> Function() callback) async {
  await runZonedGuarded(
    () async {
      await callback().onError(
        (error, stackTrace) {
          fail('should complete without error but failed with $error');
        },
      );
    },
    (error, stack) {
      if (error is TestFailure) {
        fail(error.message ?? 'should complete without error');
      } else {
        // ignore errors that do not arise from the provided callback
      }
    },
  );
}
