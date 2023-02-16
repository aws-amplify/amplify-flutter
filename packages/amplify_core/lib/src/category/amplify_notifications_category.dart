// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of amplify_interface;

class NotificationsCategory
    extends AmplifyCategory<PushNotificationsPluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.notifications;

  /// {@template amplify_core.amplify_notifications_category.get_permission_status}
  /// Obtain the current Push Notifications permission status
  /// {@endtemplate}
  Future<PushPermissionRequestStatus> getPermissionStatus() {
    return plugins.length == 1
        ? plugins[0].getPermissionStatus()
        : throw _pluginNotAddedException('Notifications');
  }

  /// {@template amplify_core.amplify_notifications_category.request_permissions}
  /// Request to show a permission dialog to users
  /// {@endtemplate}
  Future<PushPermissionRequestStatus> requestPermissions(
      {bool? alert = true, bool? badge = true, bool? sound = true}) {
    return plugins.length == 1
        ? plugins[0]
            .requestPermissions(alert: alert, badge: badge, sound: sound)
        : throw _pluginNotAddedException('Notifications');
  }

  /// {@template amplify_core.amplify_notifications_category.on_token_received}
  /// Listen to token changes received
  /// {@endtemplate}
  Stream<String> onTokenReceived() {
    return plugins.length == 1
        ? plugins[0].onTokenReceived()
        : throw _pluginNotAddedException('Notifications');
  }

  /// {@template amplify_core.amplify_notifications_category.on_foreground_notification_received}
  /// Listen to notifications when the app is in foreground
  /// {@endtemplate}
  Stream<RemotePushMessage> onForegroundNotificationReceived() {
    return plugins.length == 1
        ? plugins[0].onForegroundNotificationReceived()
        : throw _pluginNotAddedException('Notifications');
  }

  /// {@template amplify_core.amplify_notifications_category.on_background_notification_received}
  /// Listen to notifications when the app is in background/killed
  /// {@endtemplate}
  void onBackgroundNotificationReceived(RemoteMessageCallback callback) {
    return plugins.length == 1
        ? plugins[0].onBackgroundNotificationReceived(callback)
        : throw _pluginNotAddedException('Notifications');
  }

  /// {@template amplify_core.amplify_notifications_category.on_notification_opened}
  /// Listen to notification open event when the app is in background
  /// {@endtemplate}
  Stream<RemotePushMessage> onNotificationOpened() {
    return plugins.length == 1
        ? plugins[0].onNotificationOpened()
        : throw _pluginNotAddedException('Notifications');
  }

  /// {@template amplify_core.amplify_notifications_category.get_launch_notification}
  /// Obtain the notification that launched the app
  /// {@endtemplate}
  Future<RemotePushMessage?> getLaunchNotification() {
    return plugins.length == 1
        ? plugins[0].getLaunchNotification()
        : throw _pluginNotAddedException('Notifications');
  }

  /// {@template amplify_core.amplify_notifications_category.get_badge_count}
  /// Get the badge count for the app
  /// {@endtemplate}
  Future<int> getBadgeCount() {
    return plugins.length == 1
        ? plugins[0].getBadgeCount()
        : throw _pluginNotAddedException('Notifications');
  }

  /// {@template amplify_core.amplify_notifications_category.set_badge_count}
  /// Set the badge count for the app
  /// {@endtemplate}
  Future<void> setBadgeCount(int badgeCount) {
    return plugins.length == 1
        ? plugins[0].setBadgeCount(badgeCount)
        : throw _pluginNotAddedException('Notifications');
  }
}
