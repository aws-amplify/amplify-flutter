import 'dart:ui';

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// CallbackDispatcher is a standalone function that must reside in the gloabal scope with the vm:entry-point annotation. It has the following responsibilities,
/// 1. Initialize a background channel that is used to communicate with the Dart isolate
/// 2. Make sure Flutter Widget binding are available through WidgetsFlutterBinding.ensureInitialized()
@pragma('vm:entry-point')
void callbackDispatcher() {
  print('CallbackDispatcher was called');

  WidgetsFlutterBinding.ensureInitialized();
  const backgroundChannel = MethodChannel(
    'plugins.flutter.io/amplify_push_notification_plugin_background',
  );
  // ignore: cascade_invocations
  backgroundChannel.setMethodCallHandler((MethodCall call) async {
    final args = call.arguments as List<dynamic>;
    for (final element in args) {
      final callback = PluginUtilities.getCallbackFromHandle(
        CallbackHandle.fromRawHandle(element as int),
      );
      assert(callback != null);

      // TODO: Pass along the notification from the broadcast receiver
      callback!(PushNotificationMessage());
    }
  });

  print('CallbackDispatcher was initialized');

  backgroundChannel
      .invokeMethod('PushNotificationBackgroundService.initialized');
}
