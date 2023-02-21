// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library amplify_push_notifications;

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';

const _methodChannel =
    MethodChannel('com.amazonaws.amplify/push_notification/method');
const _tokenReceivedEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/TOKEN_RECEIVED',
);
const _notificationOpenedEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/NOTIFICATION_OPENED',
);
// const _launchNotificationOpenedEventChannel = EventChannel(
//   'com.amazonaws.amplify/push_notification/event/LAUNCH_NOTIFICATION_OPENED',
// );
// const _backgroundNotificationEventChannel = EventChannel(
//   'com.amazonaws.amplify/push_notification/event/BACKGROUND_MESSAGE_RECEIVED',
// );
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
    _onTokenReceived = _tokenReceivedEventChannel
        .receiveBroadcastStream('TOKEN_RECEIVED')
        .cast<Map<Object?, Object?>>()
        .map((event) {
      print('🚀 Dart TOKEN_RECEIVED: $event');
      final deviceToken =
          (event['payload'] as Map<Object?, Object?>?)?['token'] as String;
      return deviceToken;
    });

    _onForegroundNotificationReceived = _foregroundNotificationEventChannel
        .receiveBroadcastStream('FOREGROUND_MESSAGE_RECEIVED')
        .cast<Map<Object?, Object?>>()
        .map((event) {
      print('🚀 Dart FOREGROUND_MESSAGE_RECEIVED: ${event['payload']}');
      // TODO convert raw event to RemotePushMessage
      return PushNotificationMessage();
    });

    // _onBackgroundNotificationReceived = _backgroundNotificationEventChannel
    //     .receiveBroadcastStream('BACKGROUND_MESSAGE_RECEIVED')
    //     .cast<Map<Object?, Object?>>()
    //     .map((event) {
    //   print('🚀 Dart BACKGROUND_MESSAGE_RECEIVED: $event');
    //   final completionHandlerId = (event['payload']
    //       as Map<Object?, Object?>?)?['completionHandlerId'] as String;
    //   _methodChannel.invokeMethod('completeNotification', completionHandlerId);
    //   // TODO convert raw event to RemotePushMessage
    //   return PushNotificationMessage();
    // });

    _onNotificationOpened = _notificationOpenedEventChannel
        .receiveBroadcastStream('NOTIFICATION_OPENED')
        .cast<Map<Object?, Object?>>()
        .map((event) {
      print('🚀 Dart NOTIFICATION_OPENED: $event');
      // TODO convert raw event to RemotePushMessage
      return PushNotificationMessage();
    });

    // _onLaunchNotificationOpened = _launchNotificationOpenedEventChannel
    //     .receiveBroadcastStream('LAUNCH_NOTIFICATION_OPENED')
    //     .cast<Map<Object?, Object?>>()
    //     .map((event) {
    //   print('🚀 Dart LAUNCH_NOTIFICATION_OPENED: $event');
    //   // TODO convert raw event to RemotePushMessage
    //   return PushNotificationMessage();
    // });
  }

  final AmplifyLogger _logger = AmplifyLogger.category(Category.notifications)
      .createChild('AmplifyPushNotification');
  final ServiceProviderClient _serviceProviderClient;

  late final Stream<String> _onTokenReceived;
  late final Stream<PushNotificationMessage> _onForegroundNotificationReceived;
  late final Stream<PushNotificationMessage> _onBackgroundNotificationReceived;
  late final Stream<PushNotificationMessage> _onNotificationOpened;
  late final Stream<PushNotificationMessage> _onLaunchNotificationOpened;

  bool _isConfigured = false;

  @override
  Stream<String> get onTokenReceived => _onTokenReceived;

  @override
  Stream<PushNotificationMessage> get onNotificationReceivedInForeground =>
      _onForegroundNotificationReceived;

  // @override
  // Stream<PushNotificationMessage> get onNotificationReceivedInBackground =>
  //     _onBackgroundNotificationReceived;

  @override
  Stream<PushNotificationMessage> get onNotificationOpened =>
      _onNotificationOpened;

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

    if (!_isConfigured) {
      // TODO(Samaritan1011001): Listen to token changes and update Pinpoint
      // onNewToken().then(
      //   (stream) => stream.listen(
      //     (address) async {
      //       // Register with service provider
      //       await _registerDevice(address: address);
      //     },
      //   ),
      // );

      onTokenReceived.listen(tokenReceivedListener);
      onNotificationReceivedInForeground.listen(foregroundNotificationListener);
      onNotificationOpened.listen(notificationOpenedListener);
      // Initialize Endpoint Client
      _serviceProviderClient.init(
        config: config,
        authProviderRepo: authProviderRepo,
      );
    }

    // TODO: Register the callback dispatcher

    _logger.info('CONFIGURE API | Successfully configure push notifications');

    _isConfigured = true;
  }

  void foregroundNotificationListener(
    PushNotificationMessage pushNotificationMessage,
  ) {
    _logger.info(
      'Successfully listrening to foreground events: $pushNotificationMessage',
    );

    // TODO(Samaritan1011001): Record Analytics
  }

  void backgroundNotificationListener(
    PushNotificationMessage pushNotificationMessage,
  ) {
    // TODO(Samaritan1011001): Record Analytics
  }

  void notificationOpenedListener(
    PushNotificationMessage pushNotificationMessage,
  ) {
    _logger.info(
      'Successfully listrening to notification opened events: $pushNotificationMessage',
    );
    // TODO(Samaritan1011001): Record Analytics
  }

  String tokenReceivedListener(
    String address,
  ) {
    _logger.info('Successfully fetched the address: $address');
    _registerDevice(address);
    return address;
  }

  Future<void> _registerDevice(String address) async {
    try {
      _serviceProviderClient.registerDevice(address);
      _logger.info('Successfully registered device with the servvice provider');
    } on Exception catch (e) {
      _logger.error(
        'Error when registering device with the service provider: $e',
      );
    }
  }

  // @override
  // Future<bool> requestPermissions({
  //   bool? alert = true,
  //   bool? badge = true,
  //   bool? sound = true,
  // }) async {
  //   return await _methodChannel.invokeMethod<bool>('requestPermissions', {
  //         'alert': alert,
  //         'badge': badge,
  //         'sound': sound,
  //       }) ??
  //       false;
  // }

  @override
  Future<PushNotificationMessage?> getLaunchNotification() async {
    final n = await _methodChannel
        .invokeMethod<Map<Object?, Object?>>('getLaunchNotification');

    print('🚀 Launch notification: $n');

    return PushNotificationMessage();
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
