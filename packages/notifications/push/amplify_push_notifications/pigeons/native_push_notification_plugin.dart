// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@ConfigurePigeon(
  PigeonOptions(
    copyrightHeader: '../../../../tool/license.txt',
    dartOut: 'lib/src/native_push_notifications_plugin.g.dart',
    javaOptions: JavaOptions(
      className: 'PushNotificationsHostApiBindings',
      package: 'com.amazonaws.amplify.amplify_push_notifications',
    ),
    javaOut:
        'android/src/main/kotlin/com/amazonaws/amplify/amplify_push_notifications/PushNotificationsNativePluginBindings.java',
    objcOptions: ObjcOptions(
      headerIncludePath: 'PushNotificationsNativePlugin.h',
    ),
    objcHeaderOut: 'ios/Classes/PushNotificationsNativePlugin.h',
    objcSourceOut: 'ios/Classes/PushNotificationsNativePlugin.m',
  ),
)
library push_notifications_plugin;

import 'package:pigeon/pigeon.dart';

class PermissionsOptions {
  PermissionsOptions({
    required this.alert,
    required this.sound,
    required this.badge,
  });

  bool alert;
  bool sound;
  bool badge;
}

class GetPermissionStatusResult {
  GetPermissionStatusResult({
    required this.status,
  });

  final PermissionStatus status;
}

enum PermissionStatus {
  shouldRequest,
  shouldExplainThenRequest,
  granted,
  denied,
}

enum CallbackType {
  dispatcher,
  externalFunction,
}

@FlutterApi()
abstract class PushNotificationsFlutterApi {
  @async
  void onNotificationReceivedInBackground(Map<Object?, Object?> withPayload);
}

@HostApi()
abstract class PushNotificationsHostApi {
  @async
  GetPermissionStatusResult getPermissionStatus();

  @async
  bool requestPermissions(PermissionsOptions withPermissionOptions);

  Map<Object?, Object?>? getLaunchNotification();

  int getBadgeCount();

  void setBadgeCount(int withBadgeCount);

  void registerCallbackFunction(int callbackHandle, CallbackType callbackType);
}
