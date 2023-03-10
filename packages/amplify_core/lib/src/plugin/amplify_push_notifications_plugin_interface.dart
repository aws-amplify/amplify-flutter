// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

abstract class PushNotificationsPluginInterface extends AmplifyPluginInterface {
  @override
  @nonVirtual
  Category get category => Category.pushNotifications;

  /// {@macro amplify_core.amplify_notifications_category.get_permission_status}
  Future<PushNotificationPermissionStatus> getPermissionStatus() {
    throw UnimplementedError('getPermissionStatus() has not been implemented');
  }

  /// {@macro amplify_core.amplify_notifications_category.request_permissions}
  Future<bool> requestPermissions({
    bool alert = true,
    bool badge = true,
    bool sound = true,
  }) {
    throw UnimplementedError('requestPermissions() has not been implemented');
  }

  /// {@macro amplify_core.amplify_notifications_category.on_token_received}
  Stream<String> get onTokenReceived {
    throw UnimplementedError('onTokenReceived() has not been implemented');
  }

  /// {@macro amplify_core.amplify_notifications_category.on_foreground_notification_received}
  Stream<PushNotificationMessage> get onNotificationReceivedInForeground {
    throw UnimplementedError(
        'onForegroundNotificationReceived() has not been implemented');
  }

  /// {@macro amplify_core.amplify_notifications_category.on_background_notification_received}
  void onNotificationReceivedInBackground(OnRemoteMessageCallback callback) {
    throw UnimplementedError(
        'onNotificationReceivedInBackground() has not been implemented');
  }

  /// {@macro amplify_core.amplify_notifications_category.on_notification_opened}
  Stream<PushNotificationMessage> get onNotificationOpened {
    throw UnimplementedError('onNotificationOpened() has not been implemented');
  }

  /// {@macro amplify_core.amplify_notifications_category.launch_notification}
  PushNotificationMessage? get launchNotification {
    throw UnimplementedError('launchNotification has not been implemented');
  }

  /// {@macro amplify_core.amplify_notifications_category.get_badge_count}
  Future<int> getBadgeCount() {
    throw UnimplementedError('getBadgeCount() has not been implemented');
  }

  /// {@macro amplify_core.amplify_notifications_category.set_badge_count}
  Future<void> setBadgeCount(int badgeCount) {
    throw UnimplementedError('setBadgeCount() has not been implemented');
  }
}
