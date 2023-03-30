// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications/amplify_push_notifications.dart';
import 'package:amplify_push_notifications_pinpoint/amplify_push_notifications_pinpoint.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

const _backgroundChannel = MethodChannel(
  'plugins.flutter.io/amplify_push_notification_plugin_background',
);

/// {@template amplify_push_notifications_pinpoint.amplify_background_processor}
/// Dart entry point function that facilitates recording of notificaiton event when the app is killed.
///
/// Securely stored config is used to configure Amplify with Pinpoint push notifications plugin that
/// can record the notificaiton received event when the app is in a killed state.
/// {@endtemplate}
@pragma('vm:entry-point')
Future<void> amplifyBackgroundProcessing({
  @visibleForTesting AmplifySecureStorage? amplifySecureStorage,
}) async {
  WidgetsFlutterBinding.ensureInitialized();
  final amplifySecureStorage0 = amplifySecureStorage ??
      AmplifySecureStorage(
        config: AmplifySecureStorageConfig(
          scope: 'amplifyPushNotifications',
        ),
      );
  final amplifyconfigStr = await amplifySecureStorage0.read(
    key: configSecureStorageKey,
  );
  if (amplifyconfigStr == null) {
    throw const PushNotificationException(
      'Cached config was not found.',
      recoverySuggestion:
          'Make sure a valid config was given to Amplify.configure',
    );
  }
  final notificationsPlugin = AmplifyPushNotificationsPinpoint();
  final authPlugin = AmplifyAuthCognito();
  if (!Amplify.isConfigured) {
    await Amplify.addPlugins([authPlugin, notificationsPlugin]);
    await Amplify.configure(amplifyconfigStr);
  }

  // Signal that this method finished running so queued up native to dart events if any can be flushed.
  await _backgroundChannel.invokeMethod(
    'amplifyBackgroundProcessorFinished',
  );
}
