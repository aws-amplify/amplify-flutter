// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:ui';

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const _backgroundChannel = MethodChannel(
  'plugins.flutter.io/amplify_push_notification_plugin_background',
);

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

  // ignore: cascade_invocations
  _backgroundChannel
    ..setMethodCallHandler((MethodCall call) async {
      final args = call.arguments as List<dynamic>;
      for (final element in args.cast<Map<Object?, Object?>>()) {
        final callback = PluginUtilities.getCallbackFromHandle(
          CallbackHandle.fromRawHandle(element['handle'] as int),
        );
        if (callback == null) {
          throw StateError('Callback not found');
        }
        if (callback is! OnRemoteMessageCallback) {
          throw StateError('Invalid callback type: ${callback.runtimeType}');
        }
        await callback(
          PushNotificationMessage.fromJson(element['notification'] as Map),
        );
      }
    })
    ..invokeMethod('PushNotificationBackgroundService.initialized');
}
