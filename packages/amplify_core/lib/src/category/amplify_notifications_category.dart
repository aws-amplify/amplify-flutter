// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of amplify_interface;

class NotificationsCategory
    extends AmplifyCategory<PushNotificationsPluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.notifications;

  Future<PushPermissionRequestStatus> getPermissionStatus() {
    return plugins.length == 1
        ? plugins[0].getPermissionStatus()
        : throw _pluginNotAddedException('Notifications');
  }

  Future<PushPermissionRequestStatus> requestPermissions(
      {bool? alert = true, bool? badge = true, bool? sound = true}) {
    return plugins.length == 1
        ? plugins[0]
            .requestPermissions(alert: alert, badge: badge, sound: sound)
        : throw _pluginNotAddedException('Notifications');
  }

  Stream<String> onTokenReceived() {
    return plugins.length == 1
        ? plugins[0].onTokenReceived()
        : throw _pluginNotAddedException('Notifications');
  }

  Stream<RemotePushMessage> onForegroundNotificationReceived() {
    return plugins.length == 1
        ? plugins[0].onForegroundNotificationReceived()
        : throw _pluginNotAddedException('Notifications');
  }

  void onBackgroundNotificationReceived(RemoteMessageCallback callback) {
    return plugins.length == 1
        ? plugins[0].onBackgroundNotificationReceived(callback)
        : throw _pluginNotAddedException('Notifications');
  }

  Stream<RemotePushMessage> onNotificationOpened() {
    return plugins.length == 1
        ? plugins[0].onNotificationOpened()
        : throw _pluginNotAddedException('Notifications');
  }

  Future<RemotePushMessage?> getLaunchNotification() {
    return plugins.length == 1
        ? plugins[0].getLaunchNotification()
        : throw _pluginNotAddedException('Notifications');
  }

  Future<int> getBadgeCount() {
    return plugins.length == 1
        ? plugins[0].getBadgeCount()
        : throw _pluginNotAddedException('Notifications');
  }

  Future<void> setBadgeCount(int badgeCount) {
    return plugins.length == 1
        ? plugins[0].setBadgeCount(badgeCount)
        : throw _pluginNotAddedException('Notifications');
  }
}
