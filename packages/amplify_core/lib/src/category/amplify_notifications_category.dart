// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of amplify_interface;

class NotificationsCategory
    extends AmplifyCategory<PushNotificationsPluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.notifications;

  /// {@template amplify_core.amplify_notifications_category.get_permission_status}
  /// Returns a [Future] of [PushNotificationPermissionRequestStatus].
  /// {@endtemplate}
  Future<PushNotificationPermissionRequestStatus> getPermissionStatus() =>
      defaultPlugin.getPermissionStatus();

  /// {@template amplify_core.amplify_notifications_category.request_permissions}
  /// Requests push notifications permissions with configurable options, [alert], [badge] and [sound], and returns a bool value as the requesting result.
  /// {@endtemplate}
  Future<bool> requestPermissions(
          {bool? alert = true, bool? badge = true, bool? sound = true}) =>
      defaultPlugin.requestPermissions(
          alert: alert, badge: badge, sound: sound);

  /// {@template amplify_core.amplify_notifications_category.on_token_received}
  /// Returns a stream of [PushNotificationMessage] as the device receives them when the App is in the foreground.
  /// {@endtemplate}
  Stream<String> get onTokenReceived => defaultPlugin.onTokenReceived;

  /// {@template amplify_core.amplify_notifications_category.on_foreground_notification_received}
  /// Returns a stream of [PushNotificationMessage] as the device receives them when the App is in the foreground.
  /// {@endtemplate}
  Stream<PushNotificationMessage> get onNotificationReceivedInForeground =>
      defaultPlugin.onNotificationReceivedInForeground;

  /// {@template amplify_core.amplify_notifications_category.on_background_notification_received}
  /// Sets a [OnRemoteMessageCallback] that to be called when device receives push notification when the App is in the background.
  /// {@endtemplate}
  void onNotificationReceivedInBackground(OnRemoteMessageCallback callback) =>
      defaultPlugin.onNotificationReceivedInBackground(callback);

  /// {@template amplify_core.amplify_notifications_category.on_notification_opened}
  /// Returns a stream of [PushNotificationMessage] that an end user has tapped on to open the App.
  /// {@endtemplate}
  Stream<PushNotificationMessage> get onNotificationOpened =>
      defaultPlugin.onNotificationOpened;

  /// {@template amplify_core.amplify_notifications_category.get_launch_notification}
  /// Returns a [Future] of [PushNotificationMessage] that an end user has tapped on to launch the App from terminated state. If there is no such a [PushNotificationMessage] it returns a [Future] of `null`.
  /// {@endtemplate}
  Future<PushNotificationMessage?> getLaunchNotification() =>
      defaultPlugin.getLaunchNotification();

  /// {@template amplify_core.amplify_notifications_category.get_badge_count}
  /// Returns a [Future] of [int] as the current number displayed in the app icon badge. This method takes effect only on iOS.
  /// {@endtemplate}
  Future<int> getBadgeCount() => defaultPlugin.getBadgeCount();

  /// {@template amplify_core.amplify_notifications_category.set_badge_count}
  /// Sets [badgeCount] as the number displayed in the App icon badge. This method takes effect only on iOS.
  /// {@endtemplate}
  Future<void> setBadgeCount(int badgeCount) =>
      defaultPlugin.setBadgeCount(badgeCount);
}
