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
      final deviceToken = payload['token'] as String;
      return deviceToken;
    });

    _onForegroundNotificationReceived = _foregroundNotificationEventChannel
        .receiveBroadcastStream()
        .cast<Map<Object?, Object?>>()
        .map((payload) {
      // TODO convert raw event to RemotePushMessage
      return PushNotificationMessage.fromJson(payload);
    });

    _onNotificationOpened = _notificationOpenedEventChannel
        .receiveBroadcastStream()
        .cast<Map<Object?, Object?>>()
        .map((payload) {
      // TODO convert raw event to RemotePushMessage
      return PushNotificationMessage.fromJson(payload);
    });
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

  bool _isConfigured = false;

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
    // Parse config values from amplifyconfiguration.json
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

    // Block configure if registering device is not complete
    // TODO: Catch and throw exceptions originating from token or device registration
    final deviceToken = await onTokenReceived.first;
    await _registerDevice(deviceToken);

    // Initialize listeners
    onTokenReceived.listen(_tokenReceivedListener);
    onNotificationReceivedInForeground.listen(_foregroundNotificationListener);
    onNotificationOpened.listen(_notificationOpenedListener);

    // TODO: Register the callback dispatcher

    _logger.info('CONFIGURE API | Successfully configure push notifications');

    _isConfigured = true;
  }

  void _foregroundNotificationListener(
    PushNotificationMessage pushNotificationMessage,
  ) {
    _logger.info(
      'Successfully listrening to foreground events: $pushNotificationMessage',
    );

    // TODO(Samaritan1011001): Record Analytics
  }

  void _notificationOpenedListener(
    PushNotificationMessage pushNotificationMessage,
  ) {
    _logger.info(
      'Successfully listrening to notification opened events: $pushNotificationMessage',
    );
    // TODO(Samaritan1011001): Record Analytics
  }

  Future<String> _tokenReceivedListener(
    String address,
  ) async {
    _logger.info('Successfully fetched the address: $address');
    await _registerDevice(address);

    return address;
  }

  Future<void> _registerDevice(String address) async {
    try {
      await _serviceProviderClient.registerDevice(address);
      _logger.info('Successfully registered device with the servvice provider');
      // return true;
    } on Exception {
      throw const PushNotificationException(
        'Error when registering device with the service provider: ',
      );
    }
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
  Future<PushNotificationPermissionRequestStatus> getPermissionStatus() async {
    final result = await _hostApi.getPermissionStatus();

    switch (result.status) {
      case PermissionStatus.denied:
        return PushNotificationPermissionRequestStatus.denied;
      case PermissionStatus.granted:
        return PushNotificationPermissionRequestStatus.granted;
      case PermissionStatus.shouldRequestWithRationale:
        return PushNotificationPermissionRequestStatus.shouldShowWithRationale;
      case PermissionStatus.notRequested:
        return PushNotificationPermissionRequestStatus.notRequested;
    }
  }

  @override
  PushNotificationMessage? get launchNotification => PushNotificationMessage();

  Future<PushNotificationMessage?> _getLaunchNotification() async {
    await _hostApi.getLaunchNotification();

    return PushNotificationMessage();
  }

  @override
  Future<int> getBadgeCount() {
    return _hostApi.getBadgeCount();
  }

  @override
  Future<void> setBadgeCount(int badgeCount) async {
    await _hostApi.setBadgeCount(badgeCount);
  }
}

class _PushNotificationsFlutterApi implements PushNotificationsFlutterApi {
  _PushNotificationsFlutterApi() {
    PushNotificationsFlutterApi.setup(this);
  }

  final _onNotificationReceivedInBackgroundCallbacks =
      <OnRemoteMessageCallback>[];
  final _onLaunchNotificationOpenedCallbacks = <OnRemoteMessageCallback>[];

  void registerOnReceivedInBackgroundCallback(
    OnRemoteMessageCallback callback,
  ) {
    _onNotificationReceivedInBackgroundCallbacks.add(callback);
  }

  void registerOnLaunchNotificationOpenedCallback(
    OnRemoteMessageCallback callback,
  ) {
    _onLaunchNotificationOpenedCallbacks.add(callback);
  }

  @override
  Future<void> onNotificationReceivedInBackground(
    Map<Object?, Object?> payload,
  ) async {
    await Future.wait(
      _onNotificationReceivedInBackgroundCallbacks.map(
        (callback) async {
          await callback(PushNotificationMessage.fromJson(payload));
        },
      ),
    );
  }

  @override
  void onLaunchNotificationOpened(Map<Object?, Object?> payload) {
    for (final callback in _onLaunchNotificationOpenedCallbacks) {
      callback(PushNotificationMessage.fromJson(payload));
    }

    // these callbacks are called only once as onLaunchNotificationOpened can
    // only happen once
    _onLaunchNotificationOpenedCallbacks.clear();
  }
}
