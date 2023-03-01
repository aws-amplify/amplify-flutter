// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@ConfigurePigeon(
  PigeonOptions(
    copyrightHeader: '../../../../tool/license.txt',
    dartOptions: DartOptions(),
    dartOut: 'lib/src/native_push_notifications_plugin.dart',
    javaOptions: JavaOptions(
      className: 'NativePushNotificationPluginBindings',
      package: 'com.amazonaws.amplify.amplify_push_notifications',
    ),
    javaOut:
        'android/src/main/kotlin/com/amazonaws/amplify/amplify_push_notifications/NativePushNotificationPluginBindings.java',
    objcOptions: ObjcOptions(
      header: 'NativePushNotificationsPlugin.h',
    ),
    objcHeaderOut: 'ios/Classes/NativePushNotificationsPlugin.h',
    objcSourceOut: 'ios/Classes/NativePushNotificationsPlugin.m',
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

@HostApi()
abstract class NativePushNotificationsPlugin {
  @async
  String getPermissionStatus();

  @async
  bool requestPermissions(PermissionsOptions withPermissionOptions);

  Map<Object?, Object?>? getLaunchNotification();

  int getBadgeCount();

  void setBadgeCount(int withBadgeCount);

  void completeNotification(String withCompletionHandlerId);
}
