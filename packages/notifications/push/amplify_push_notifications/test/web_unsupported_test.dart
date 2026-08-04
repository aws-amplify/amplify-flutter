// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Push notifications have no web implementation. `configure()` must fail fast
// on web with a clear `PushNotificationException` instead of the cryptic
// `MissingPluginException` the native channel calls would otherwise throw.
//
// `zIsWeb` is a compile-time constant, so this can only be exercised on a web
// target. Run with: flutter test test/web_unsupported_test.dart --platform chrome
@TestOn('browser')
library;

import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/notifications/notifications_outputs.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_data/test_amplify_push_notifications_impl.dart';

class _NoopServiceProviderClient implements ServiceProviderClient {
  @override
  Future<void> init({
    required NotificationsOutputs config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {}

  @override
  Future<void> registerDevice(String deviceToken) async {}

  @override
  Future<void> recordNotificationEvent({
    required PinpointEventType eventType,
    required PushNotificationMessage notification,
  }) async {}

  @override
  Future<void> identifyUser({
    required String userId,
    UserProfile? userProfile,
  }) async {}
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('configure() throws PushNotificationException on web', () async {
    final plugin = TestAmplifyPushNotifications(
      serviceProviderClient: _NoopServiceProviderClient(),
      backgroundProcessor: () async {},
    );

    await expectLater(
      plugin.configure(authProviderRepo: AmplifyAuthProviderRepository()),
      throwsA(
        isA<PushNotificationException>().having(
          (e) => e.message,
          'message',
          contains('only supported on iOS and Android'),
        ),
      ),
    );
  });
}
