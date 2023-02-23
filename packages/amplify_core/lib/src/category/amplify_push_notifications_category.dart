// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of amplify_interface;

class PushNotificationsCategory
    extends AmplifyCategory<PushNotificationsPluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.notificationsPush;

  static final PushNotificationsCategory _pushNotificationsCategory =
      PushNotificationsCategory._internal();

  factory PushNotificationsCategory() {
    return _pushNotificationsCategory;
  }
  PushNotificationsCategory._internal();

  /// {@template amplify_core.amplify_push_notifications_category.get_permission_status}
  /// Returns the current Push Notificaiton permission status.
  ///
  /// The status can be one of the following:
  /// 1. notRequested - Android only status to indicate push permissions dialogue has not been requested
  /// 2. shouldRequestWithRationale - show a rationale message on why the app needs to send push notifications
  /// 3. granted - end user has granted the request for the app to send push notifications
  /// 4. denied - end user has denied the request for the app to send push notifications
  /// {@endtemplate}
  Future<PushNotificationPermissionRequestStatus> getPermissionStatus() =>
      defaultPlugin.getPermissionStatus();

  /// {@template amplify_core.amplify_push_notifications_category.request_permissions}
  /// Requests push notifications permissions with configurable options.
  ///
  /// Options include [alert], [badge] and [sound].
  /// It returns true if granted or false if denied.
  /// {@endtemplate}
  Future<bool> requestPermissions({
    bool? alert = true,
    bool? badge = true,
    bool? sound = true,
  }) =>
      defaultPlugin.requestPermissions(
        alert: alert,
        badge: badge,
        sound: sound,
      );

  /// {@template amplify_core.amplify_push_notifications_category.on_token_received}
  /// Returns a stream of new device token.
  /// {@endtemplate}
  Stream<String> get onTokenReceived => defaultPlugin.onTokenReceived;

  /// {@template amplify_core.amplify_push_notifications_category.on_foreground_notification_received}
  /// Returns a stream of [PushNotificationMessage] as the device receives them when the App is in the foreground.
  /// {@endtemplate}
  Stream<PushNotificationMessage> get onNotificationReceivedInForeground =>
      defaultPlugin.onNotificationReceivedInForeground;

  /// {@template amplify_core.amplify_push_notifications_category.on_background_notification_received}
  /// Sets a [OnRemoteMessageCallback] that is to be called when device receives push notification
  /// and the App is in the background.
  /// {@endtemplate}
  void onNotificationReceivedInBackground(OnRemoteMessageCallback callback) =>
      defaultPlugin.onNotificationReceivedInBackground(callback);

  /// {@template amplify_core.amplify_push_notifications_category.on_notification_opened}
  /// Returns a stream of [PushNotificationMessage] that an end user has tapped on to open the App.
  /// {@endtemplate}
  Stream<PushNotificationMessage> get onNotificationOpened =>
      defaultPlugin.onNotificationOpened;

  /// {@template amplify_core.amplify_push_notifications_category.get_launch_notification}
  /// Returns a [PushNotificationMessage] or null depending on what action launched the app.
  ///
  /// It will return the notification if the app was launched from the terminated state by an end user tapped on it
  /// else will return `null` if the app was opened by any other means.
  /// {@endtemplate}
  PushNotificationMessage? get launchNotification =>
      defaultPlugin.launchNotification;

  /// {@template amplify_core.amplify_push_notifications_category.get_badge_count}
  /// Returns the current number displayed in the app icon badge. This method takes effect only on iOS.
  /// {@endtemplate}
  Future<int> getBadgeCount() => defaultPlugin.getBadgeCount();

  /// {@template amplify_core.amplify_push_notifications_category.set_badge_count}
  /// Sets [badgeCount] as the number displayed in the App icon badge. This method takes effect only on iOS.
  /// {@endtemplate}
  Future<void> setBadgeCount(int badgeCount) =>
      defaultPlugin.setBadgeCount(badgeCount);
}
