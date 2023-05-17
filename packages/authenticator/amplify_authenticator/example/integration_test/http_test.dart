// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:aws_common/testing.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

void main() {
  testRunner.setupTests();

  group('HTTP', () {
    testWidgets('includes user agent', (_) async {
      final client = MockAWSHttpClient(
        expectAsync2((request, isCancelled) {
          expect(
            request.headers[AWSHeaders.platformUserAgent],
            contains(AmplifyAuthService.userAgent),
          );
          return AWSHttpResponse(statusCode: 500);
        }),
      );

      await testRunner.configure(environmentName: 'main');

      // ignore: invalid_use_of_protected_member
      final dependencies = Amplify.Auth.defaultPlugin.dependencies;
      final amplifyClient = AmplifyHttpClient(dependencies, baseClient: client);
      dependencies.addInstance(amplifyClient);

      try {
        await AmplifyAuthService().signUp(
          generateUsername(),
          generatePassword(),
          const {},
        );
      } on Object {
        // OK
      }
    });
  });
}
