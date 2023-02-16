// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

abstract class PushNotificationsPluginInterface extends AmplifyPluginInterface {
  @override
  @nonVirtual
  Category get category => Category.notifications;

  Future<void> onConfigure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {}

  Future<PushPermissionRequestStatus> getPermissionStatus() {
    throw UnimplementedError('getPermissionStatus() has not been implemented');
  }

  Future<PushPermissionRequestStatus> requestPermissions(
      {bool? alert = true, bool? badge = true, bool? sound = true}) {
    throw UnimplementedError('requestPermissions() has not been implemented');
  }

  Stream<String> onTokenReceived() {
    throw UnimplementedError('onTokenReceived() has not been implemented');
  }

  Stream<RemotePushMessage> onForegroundNotificationReceived() {
    throw UnimplementedError(
        'onForegroundNotificationReceived() has not been implemented');
  }

  void onBackgroundNotificationReceived(RemoteMessageCallback callback) {
    throw UnimplementedError(
        'onBackgroundNotificationReceived() has not been implemented');
  }

  Stream<RemotePushMessage> onNotificationOpened() {
    throw UnimplementedError('onNotificationOpened() has not been implemented');
  }

  Future<RemotePushMessage?> getLaunchNotification() {
    throw UnimplementedError(
        'getLaunchNotification() has not been implemented');
  }

  Future<int> getBadgeCount() {
    throw UnimplementedError('getBadgeCount() has not been implemented');
  }

  Future<void> setBadgeCount(int badgeCount) {
    throw UnimplementedError('setBadgeCount() has not been implemented');
  }
}
