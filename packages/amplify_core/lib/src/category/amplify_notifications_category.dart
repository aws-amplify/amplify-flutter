// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of amplify_interface;

class NotificationsCategory
    extends AmplifyCategory<PushNotificationsPluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.notifications;

  /// {@template amplify_core.amplify_notifications_category.get_permission_status}
  /// Returns the current permission status
  /// {@endtemplate}
  Future<PushNotificationPermissionRequestStatus> getPermissionStatus() =>
      defaultPlugin.getPermissionStatus();

  /// {@template amplify_core.amplify_notifications_category.request_permissions}
  /// Returns the status after requesting to show a permission dialog to users
  /// {@endtemplate}
  Future<bool> requestPermissions(
          {bool? alert = true, bool? badge = true, bool? sound = true}) =>
      defaultPlugin.requestPermissions(
          alert: alert, badge: badge, sound: sound);

  /// {@template amplify_core.amplify_notifications_category.on_token_received}
  /// Returns a stream of token that may be updated by the OS.
  /// {@endtemplate}
  Stream<String> get onTokenReceived => defaultPlugin.onTokenReceived;

  /// {@template amplify_core.amplify_notifications_category.on_foreground_notification_received}
  /// Returns a stream of Push Notifications as the device receives them when the app is in the foreground
  /// {@endtemplate}
  Stream<PushNotificationMessage> get onNotificationReceivedInForeground =>
      defaultPlugin.onNotificationReceivedInForeground;

  /// {@template amplify_core.amplify_notifications_category.on_background_notification_received}
  /// Returns a stream of Push Notifications as the device receives them when the app is in the background or killed states
  /// {@endtemplate}
  void onBackgroundNotificationReceived(RemoteMessageCallback callback) =>
      defaultPlugin.onBackgroundNotificationReceived(callback);

  /// {@template amplify_core.amplify_notifications_category.on_notification_opened}
  /// Returns a stream of Push Notifications that caused the app to open
  /// {@endtemplate}
  Stream<PushNotificationMessage> get onNotificationOpened =>
      defaultPlugin.onNotificationOpened;

  /// {@template amplify_core.amplify_notifications_category.get_launch_notification}
  /// Returns the Push Notification that caused the app to launch from a killed state
  /// {@endtemplate}
  Future<PushNotificationMessage?> getLaunchNotification() =>
      defaultPlugin.getLaunchNotification();

  /// {@template amplify_core.amplify_notifications_category.get_badge_count}
  /// Returns the current badge count of the app
  /// {@endtemplate}
  Future<int> getBadgeCount() => defaultPlugin.getBadgeCount();

  /// {@template amplify_core.amplify_notifications_category.set_badge_count}
  /// Sets the given badge count for the app
  /// {@endtemplate}
  Future<void> setBadgeCount(int badgeCount) =>
      defaultPlugin.setBadgeCount(badgeCount);
}
