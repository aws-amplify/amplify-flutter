// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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

  group('unathenticated access restricted', () {
    tearDown(Amplify.reset);

    for (final environmentName in const [
      'no-unauth-access',
      'no-unauth-identities'
    ]) {
      testWidgets(environmentName, (_) async {
        storageFactory(scope) => mockPersistedSecuredStorage;
        await Amplify.addPlugins([
          AmplifyAuthCognito(
            secureStorageFactory: storageFactory,
          ),
          AmplifyAnalyticsPinpoint(
            secureStorageFactory: storageFactory,
          ),
          AmplifyAPI(),
        ]);
        await expectLater(
          Amplify.configure(amplifyEnvironments[environmentName]!),
          throwsA(isA<UnknownException>()),
        );
      });
    }
  });
}
