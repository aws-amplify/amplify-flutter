// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications_pinpoint/src/pinpoint_provider.dart';
import 'package:aws_common/testing.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('HTTP', () {
    testWidgets('includes user agent', (_) async {
      final client = MockAWSHttpClient(
        expectAsync2(
          (request, isCancelled) {
            expect(
              request.headers[AWSHeaders.platformUserAgent],
              contains(PinpointProvider.userAgent),
            );
            return AWSHttpResponse(
              statusCode: 500,
            );
          },
        ),
      );

      await loadConfiguration();

      final dependencies =
          // ignore: invalid_use_of_protected_member
          Amplify.dependencies;
      final amplifyClient = AmplifyHttpClient(dependencies, baseClient: client);
      dependencies.addInstance(amplifyClient);
      try {
        await Amplify.Notifications.Push.identifyUser(
          userId: 'test',
          userProfile: const UserProfile(),
        );
      } on Object {
        // ignore
      }
    });
  });
}
