// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library amplify_push_notifications;

import 'dart:async';
import 'dart:ui';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_push_notifications/callback_dispatcher.dart';
import 'package:flutter/services.dart';

@pragma('vm:entry-point')
Future<void> _internalBgHandler(
  PushNotificationMessage pushNotificationMessage,
) async {
  // TODO: Record Analytics
  print('_internalBgHandler called');
}

const _methodChannel =
    MethodChannel('com.amazonaws.amplify/push_notification/method');
const _tokenReceivedEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/TOKEN_RECEIVED',
);
const _notificationOpenedEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/NOTIFICATION_OPENED',
);
const _launchNotificationOpenedEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/LAUNCH_NOTIFICATION_OPENED',
);
const _backgroundNotificationEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/BACKGROUND_MESSAGE_RECEIVED',
);
const _foregroundNotificationEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/FOREGROUND_MESSAGE_RECEIVED',
);

/// {@template amplify_push_notifications.amplify_push_notifications}
/// Implementation of the Amplify Push Notifications category.
///
/// - Concrete implementation of the Plugin Interface
/// - Communicates with native layer
/// {@endtemplate}
class AmplifyPushNotifications extends PushNotificationsPluginInterface {
  /// {@macro amplify_push_notifications.amplify_push_notifications}
  AmplifyPushNotifications({
    required ServiceProviderClient serviceProviderClient,
  }) : _serviceProviderClient = serviceProviderClient {
    // Receive and emit only distinct device tokens
    _onTokenReceived = _tokenReceivedEventChannel
        .receiveBroadcastStream()
        .cast<Map<Object?, Object?>>()
        .map((event) {
      final deviceToken =
          (event['payload'] as Map<Object?, Object?>?)?['token'] as String;
      return deviceToken;
    }).distinct();

    _onForegroundNotificationReceived = _foregroundNotificationEventChannel
        .receiveBroadcastStream()
        .cast<Map<Object?, Object?>>()
        .map(
          (event) => PushNotificationMessage.fromJson(event['payload'] as Map),
        );

    // TODO: Enable background API for iOS
    _onBackgroundNotificationReceived = _backgroundNotificationEventChannel
        .receiveBroadcastStream()
        .cast<Map<Object?, Object?>>()
        .map((event) {
      final completionHandlerId = (event['payload']
          as Map<Object?, Object?>?)?['completionHandlerId'] as String;
      _methodChannel.invokeMethod('completeNotification', completionHandlerId);
      // TODO convert raw event to RemotePushMessage
      return PushNotificationMessage();
    });

    _onNotificationOpened = _notificationOpenedEventChannel
        .receiveBroadcastStream()
        .cast<Map<Object?, Object?>>()
        .map(
          (event) => PushNotificationMessage.fromJson(event['payload'] as Map),
        );

    // TODO: Enable launch notification API
    _onLaunchNotificationOpened = _launchNotificationOpenedEventChannel
        .receiveBroadcastStream()
        .cast<Map<Object?, Object?>>()
        .map(
          (event) => PushNotificationMessage.fromJson(event['payload'] as Map),
        );
  }

  final AmplifyLogger _logger =
      AmplifyLogger.category(Category.pushNotifications)
          .createChild('AmplifyPushNotification');
  final ServiceProviderClient _serviceProviderClient;

  late final Stream<String> _onTokenReceived;
  late final Stream<PushNotificationMessage> _onForegroundNotificationReceived;
  late final Stream<PushNotificationMessage> _onBackgroundNotificationReceived;
  late final Stream<PushNotificationMessage> _onNotificationOpened;
  late final Stream<PushNotificationMessage> _onLaunchNotificationOpened;
  PushNotificationMessage? _launchNotification;

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
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    if (_isConfigured) {
      return;
    }
    // TODO Parse config values from amplifyconfiguration.json for notifications
    final analyticsConfig = config?.analytics?.awsPlugin;
    if (analyticsConfig == null) {
      throw const AnalyticsException('No Pinpoint plugin config available');
    }

    // Register the callback dispatcher
    await _registerCallbackDispatcher();

    // Initialize Endpoint Client
    await _initiliazeServiceClientAndRegisterDevice(config, authProviderRepo);

    // Initialize listeners
    _logger.info('Initializing plugin listeners');
    onTokenReceived.listen(_tokenReceivedListener);
    onNotificationReceivedInForeground.listen(_foregroundNotificationListener);
    onNotificationOpened.listen(_notificationOpenedListener);
    await _registerBgCallback(
      'registerBgInternalCallback',
      _internalBgHandler,
    );
    _logger.info('CONFIGURE API | Successfully configure push notifications');

    _isConfigured = true;
  }

  Future<void> _registerCallbackDispatcher() async {
    try {
      final callback = PluginUtilities.getCallbackHandle(callbackDispatcher);
      await _methodChannel.invokeMethod<void>(
        'initializeService',
        <dynamic>[callback?.toRawHandle()],
      );
      _logger.info('Successfully registered callback dispatcher');
    } on Exception catch (e) {
      _logger.error(
        'Error when registering callback dispatcher: $e',
      );
    }
  }

  @override
  Future<void> reset() async {
    if (!_isConfigured) {
      return;
    }
    _isConfigured = false;
  }

  Future<void> _initiliazeServiceClientAndRegisterDevice(
    AmplifyConfig? config,
    AmplifyAuthProviderRepository authProviderRepo,
  ) async {
    try {
      await _serviceProviderClient.init(
        config: config,
        authProviderRepo: authProviderRepo,
      );

      final deviceToken = await onTokenReceived.first;
      print('Device Token got once: $deviceToken');
      await _registerDevice(deviceToken);
    } on Exception catch (e) {
      throw PushNotificationException(
        e.toString(),
      );
    }
  }

  void _foregroundNotificationListener(
    PushNotificationMessage pushNotificationMessage,
  ) {
    _logger.info(
      'Successfully listrening to FOREGROUND events in the plugin',
    );

    // TODO(Samaritan1011001): Record Analytics
  }

  void _notificationOpenedListener(
    PushNotificationMessage pushNotificationMessage,
  ) {
    _logger.info(
      'Successfully listrening to NOTIFICATIONOPENED events: $pushNotificationMessage',
    );
    // TODO(Samaritan1011001): Record Analytics
    _launchNotification = pushNotificationMessage;
  }

  Future<String> _tokenReceivedListener(
    String address,
  ) async {
    _logger.info('Successfully RECEIVED TOKEN: $address');
    await _registerDevice(address);
    return address;
  }

  Future<void> _registerDevice(String address) async {
    try {
      await _serviceProviderClient.registerDevice(address);
      _logger.info('Successfully registered device with the service provider');
    } on Exception catch (e) {
      throw PushNotificationException(
        e.toString(),
      );
    }
  }

  @override
  Future<PushNotificationPermissionRequestStatus> getPermissionStatus() async {
    final result =
        await _methodChannel.invokeMethod<String>('getPermissionStatus');
    if (result == null) {
      return PushNotificationPermissionRequestStatus.notRequested;
    }
    return PushNotificationPermissionRequestStatus.values.byName(result);
  }

  @override
  Future<bool> requestPermissions({
    bool alert = true,
    bool badge = true,
    bool sound = true,
  }) async {
    return await _methodChannel.invokeMethod<bool>('requestPermissions', {
          'alert': alert,
          'badge': badge,
          'sound': sound,
        }) ??
        false;
  }

  @override
  Future<void> onNotificationReceivedInBackground(
    OnRemoteMessageCallback callback,
  ) async {
    await _registerBgCallback('registerBgExternalCallback', callback);
  }

  Future<void> _registerBgCallback(
    String method,
    OnRemoteMessageCallback callback,
  ) async {
    try {
      final callbackHandle = PluginUtilities.getCallbackHandle(callback);

      await _methodChannel.invokeMethod(
        method,
        <dynamic>[
          callbackHandle?.toRawHandle(),
        ],
      );
      _logger.info('Successfully registered notification handling callback');
    } on Exception catch (e) {
      _logger.error(
        'Error when registering notification handling callback: $e',
      );
    }
  }

  @override
  PushNotificationMessage? get launchNotification {
    final notificationHolder = _launchNotification;
    _launchNotification = null;
    return notificationHolder;
  }

  @override
  Future<int> getBadgeCount() async {
    return await _methodChannel.invokeMethod<int>('getBadgeCount') ?? 0;
  }

  @override
  Future<void> setBadgeCount(int badgeCount) async {
    await _methodChannel.invokeMethod('setBadgeCount', badgeCount);
  }
}
