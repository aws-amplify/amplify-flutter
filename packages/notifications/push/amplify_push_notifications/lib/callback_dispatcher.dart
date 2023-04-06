// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:ui';

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const _backgroundChannel = MethodChannel(
  'plugins.flutter.io/amplify_push_notification_plugin_background',
);
final AmplifyLogger _logger = AmplifyLogger.category(Category.pushNotifications)
    .createChild('AmplifyPushNotification');

/// CallbackDispatcher is a standalone function that must reside in the
/// global scope with the vm:entry-point annotation.
///
/// It has the following responsibilities,
/// 1. Initialize a background channel that is used to
/// communicate with the Dart isolate
/// 2. Make sure Flutter Widget binding are available
/// through WidgetsFlutterBinding.ensureInitialized()
@pragma('vm:entry-point')
void callbackDispatcher() {
  WidgetsFlutterBinding.ensureInitialized();

  _backgroundChannel
    ..setMethodCallHandler((MethodCall call) async {
      // TODO(Samaritan1011001): Record Analytics

      final callbackInfo = call.arguments as Map<Object?, Object?>;
      // Call the external callback only if it is registered
      final externalHandle = callbackInfo['externalHandle'] as int?;
      if (externalHandle == null) {
        return;
      }
      final externalCallback = PluginUtilities.getCallbackFromHandle(
        CallbackHandle.fromRawHandle(externalHandle),
      );
      if (externalCallback == null) {
        _logger.debug('Could not locate callback for handle: $externalHandle');
        return;
      }
      if (externalCallback is! OnRemoteMessageCallback) {
        throw StateError(
          'Invalid callback type: ${externalCallback.runtimeType}',
        );
      }
      await externalCallback(
        PushNotificationMessage.fromJson(
          callbackInfo['notification'] as Map,
        ),
      );
    })
    ..invokeMethod('callbackDispatcherInitialized');
}
