// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library amplify_push_notifications;

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_push_notifications/src/native_push_notifications_plugin.g.dart';
import 'package:flutter/services.dart';

const _tokenReceivedEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/TOKEN_RECEIVED',
);
const _notificationOpenedEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/NOTIFICATION_OPENED',
);
const _foregroundNotificationEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/FOREGROUND_MESSAGE_RECEIVED',
);

/// {@template amplify_push_notifications.amplify_push_notifications}
/// Implementation of the Amplify Push Notifications category.
///
/// - Concrete implementation of the Plugin Interface
/// - Communicates with native module via [PushNotificationsHostApi]
/// {@endtemplate}
class AmplifyPushNotifications extends PushNotificationsPluginInterface {
  /// {@macro amplify_push_notifications.amplify_push_notifications}
  AmplifyPushNotifications({
    required ServiceProviderClient serviceProviderClient,
  })  : _serviceProviderClient = serviceProviderClient,
        _hostApi = PushNotificationsHostApi(),
        _flutterApi = _PushNotificationsFlutterApi() {
    _onTokenReceived = _tokenReceivedEventChannel
        .receiveBroadcastStream()
        .cast<Map<Object?, Object?>>()
        .map((payload) {
      return payload['token'] as String;
    }).distinct();

    _onForegroundNotificationReceived = _foregroundNotificationEventChannel
        .receiveBroadcastStream()
        .cast<Map<Object?, Object?>>()
        .map(PushNotificationMessage.fromJson);

    _onNotificationOpened = _notificationOpenedEventChannel
        .receiveBroadcastStream()
        .cast<Map<Object?, Object?>>()
        .map(PushNotificationMessage.fromJson);
  }

  final AmplifyLogger _logger =
      AmplifyLogger.category(Category.pushNotifications)
          .createChild('AmplifyPushNotification');
  final ServiceProviderClient _serviceProviderClient;
  final PushNotificationsHostApi _hostApi;
  final _PushNotificationsFlutterApi _flutterApi;

  late final Stream<String> _onTokenReceived;
  late final Stream<PushNotificationMessage> _onForegroundNotificationReceived;
  late final Stream<PushNotificationMessage> _onNotificationOpened;

  var _isConfigured = false;
  PushNotificationMessage? _launchNotification;

  @override
  PushNotificationMessage? get launchNotification {
    final result = _launchNotification;
    _launchNotification = null;
    return result;
  }

  @override
  Stream<String> get onTokenReceived => _onTokenReceived;

  @override
  Stream<PushNotificationMessage> get onNotificationReceivedInForeground =>
      _onForegroundNotificationReceived;

  @override
  Stream<PushNotificationMessage> get onNotificationOpened =>
      _onNotificationOpened;

  @override
  void onNotificationReceivedInBackground(OnRemoteMessageCallback callback) {
    _flutterApi.registerOnReceivedInBackgroundCallback(callback);
  }

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    final analyticsConfig = config?.analytics?.awsPlugin;
    if (analyticsConfig == null) {
      throw const AnalyticsException('No Pinpoint plugin config available');
    }

    if (_isConfigured) {
      return;
    }

    // Initialize Endpoint Client
    await _serviceProviderClient.init(
      config: config,
      authProviderRepo: authProviderRepo,
    );

    await _registerDeviceWhenConfigure();
    _attachEventChannelListeners();

    final rawLaunchNotification = await _hostApi.getLaunchNotification();
    if (rawLaunchNotification != null) {
      final launchNotification =
          PushNotificationMessage.fromJson(rawLaunchNotification);
      _launchNotification = launchNotification;
      unawaited(_recordAnalyticsForLaunchNotification(launchNotification));
    }

    // TODO(Samaritan1011001): Register the callback dispatcher for Android

    _isConfigured = true;
  }

  @override
  Future<bool> requestPermissions({
    bool alert = true,
    bool badge = true,
    bool sound = true,
  }) {
    return _hostApi.requestPermissions(
      PermissionsOptions(
        alert: alert,
        sound: badge,
        badge: sound,
      ),
    );
  }

  @override
  Future<PushNotificationPermissionStatus> getPermissionStatus() async {
    final result = await _hostApi.getPermissionStatus();

    switch (result.status) {
      case PermissionStatus.denied:
        return PushNotificationPermissionStatus.denied;
      case PermissionStatus.granted:
        return PushNotificationPermissionStatus.granted;
      case PermissionStatus.shouldExplainThenRequest:
        return PushNotificationPermissionStatus.shouldExplainThenRequest;
      case PermissionStatus.shouldRequest:
        return PushNotificationPermissionStatus.shouldRequest;
    }
  }

  @override
  Future<int> getBadgeCount() {
    return _hostApi.getBadgeCount();
  }

  @override
  Future<void> setBadgeCount(int badgeCount) async {
    await _hostApi.setBadgeCount(badgeCount);
  }

  void _foregroundNotificationListener(
    PushNotificationMessage pushNotificationMessage,
  ) {
    // TODO(Samaritan1011001): Record Analytics
  }

  void _notificationOpenedListener(
    PushNotificationMessage pushNotificationMessage,
  ) {
    // TODO(Samaritan1011001): Record Analytics
  }

  void _tokenReceivedListener(String deviceToken) {
    unawaited(_registerDevice(deviceToken));
  }

  Future<void> _registerDevice(String address) async {
    try {
      await _serviceProviderClient.registerDevice(address);
      _logger.info('Successfully registered device with the service provider');
      // return true;
    } on Exception {
      throw const PushNotificationException(
        'Error when registering device with the service provider: ',
      );
    }
  }

  Future<void> _registerDeviceWhenConfigure() async {
    late String deviceToken;

    try {
      deviceToken = await onTokenReceived.first;
    } on Exception catch (error) {
      // the error mostly like is the App doesn't have corresponding
      // capability to request a push notification device token
      throw PushNotificationException(
        'Error occurred awaiting for device token to register device with Pinpoint',
        recoverySuggestion: 'Please review the underlying exception',
        underlyingException: error,
      );
    }
    await _serviceProviderClient.registerDevice(deviceToken);
  }

  void _attachEventChannelListeners() {
    // Initialize listeners
    onTokenReceived.listen(_tokenReceivedListener).onError((Object error) {
      _logger.error(
        'Unexpected error $error received from onTokenReceived event channel.',
      );
    });
    onNotificationReceivedInForeground
        .listen(_foregroundNotificationListener)
        .onError((Object error) {
      _logger.error(
        'Unexpected error $error received from onNotificationReceivedInForeground event channel.',
      );
    });
    onNotificationOpened
        .listen(_notificationOpenedListener)
        .onError((Object error) {
      _logger.error(
        'Unexpected error $error received from onNotificationOpened event channel.',
      );
    });
  }

  Future<void> _recordAnalyticsForLaunchNotification(
    PushNotificationMessage launchNotification,
  ) async {
    // TODO(Samaritan1011001): integrate analytic recodEvent
  }
}

class _PushNotificationsFlutterApi implements PushNotificationsFlutterApi {
  _PushNotificationsFlutterApi() {
    PushNotificationsFlutterApi.setup(this);
  }

  final _onNotificationReceivedInBackgroundCallbacks =
      <OnRemoteMessageCallback>[];

  void registerOnReceivedInBackgroundCallback(
    OnRemoteMessageCallback callback,
  ) {
    _onNotificationReceivedInBackgroundCallbacks.add(callback);
  }

  @override
  Future<void> onNotificationReceivedInBackground(
    Map<Object?, Object?> payload,
  ) async {
    final notification = PushNotificationMessage.fromJson(payload);

    await Future.wait(
      _onNotificationReceivedInBackgroundCallbacks.map(
        (callback) async {
          await callback(notification);
        },
      ),
    );
  }
}
