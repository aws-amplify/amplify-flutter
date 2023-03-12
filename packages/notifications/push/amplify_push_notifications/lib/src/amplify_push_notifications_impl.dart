// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library amplify_push_notifications;

import 'dart:async';
import 'dart:ui';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_push_notifications/callback_dispatcher.dart';
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
        _flutterApi = _PushNotificationsFlutterApi(),
        _hostApi = PushNotificationsHostApi() {
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
  late final _PushNotificationsFlutterApi _flutterApi;

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

  // TODO(Samaritan1011001): Add implementation for identifyUser

  @override
  void onNotificationReceivedInBackground(OnRemoteMessageCallback callback) {
    print('onNotificationReceivedInBackground override called');
    // TODO(Samaritan1011001): For iOS decide where to record BG event
    _flutterApi.registerOnReceivedInBackgroundCallback(callback);
  }

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    print('configuring: $_isConfigured');
    final notificationsConfig = config?.notifications?.awsPlugin;
    if (notificationsConfig == null) {
      throw const AnalyticsException('No Pinpoint plugin config available');
    }

    if (_isConfigured) {
      return;
    }

    // Initialize Endpoint Client
    await _serviceProviderClient.init(
      config: notificationsConfig,
      authProviderRepo: authProviderRepo,
    );

    final rawLaunchNotification = await _hostApi.getLaunchNotification();
    if (rawLaunchNotification != null) {
      final launchNotification =
          PushNotificationMessage.fromJson(rawLaunchNotification);
      _launchNotification = launchNotification;
      _recordAnalyticsForLaunchNotification(launchNotification);
    }

    // TODO(Samaritan1011001): This gets called twice in killed state and suspends when token.first is not available
    await _registerDeviceWhenConfigure();
    _attachEventChannelListeners();
    onNotificationReceivedInBackground(_backgroundNotificationListener);

    // Register the callback dispatcher
    await _registerCallback(
      callbackDispatcher,
      CallbackType.dispatcher,
    );
    print('configured');

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
  ) =>
      _serviceProviderClient.recordNotificationEvent(
        eventType: PinpointEventType.foregroundMessageReceived,
        notification: pushNotificationMessage,
      );

  void _backgroundNotificationListener(
    PushNotificationMessage pushNotificationMessage,
  ) {
    print('_backgroundNotificationListener');
    _serviceProviderClient.recordNotificationEvent(
      eventType: PinpointEventType.backgroundMessageReceived,
      notification: pushNotificationMessage,
    );
  }

  void _notificationOpenedListener(
    PushNotificationMessage pushNotificationMessage,
  ) =>
      _serviceProviderClient.recordNotificationEvent(
        eventType: PinpointEventType.notificationOpened,
        notification: pushNotificationMessage,
      );

  void _tokenReceivedListener(String deviceToken) {
    unawaited(_registerDevice(deviceToken));
  }

  Future<void> _registerDevice(String address) async {
    try {
      await _serviceProviderClient.registerDevice(address);
      _logger.info('Successfully registered device with the service provider');
    } on Exception {
      throw const PushNotificationException(
        'Error when registering device with the service provider: ',
      );
    }
  }

  Future<void> _registerCallback(
    Function callback,
    CallbackType callbackType,
  ) async {
    final callbackHandle = PluginUtilities.getCallbackHandle(callback);
    if (callbackHandle == null) {
      _logger.error(
        'Callback is not a global or static function',
      );
      return;
    }
    await _hostApi.registerCallbackFunction(
      callbackHandle.toRawHandle(),
      callbackType,
    );
    _logger.info('Successfully registered callback');
  }

  Future<void> _registerDeviceWhenConfigure() async {
    late String deviceToken;

    try {
      print('Geting device token');
      deviceToken = await onTokenReceived.first;
      print('Device Token: $deviceToken');
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
    print('Registering event listeners');
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

  void _recordAnalyticsForLaunchNotification(
    PushNotificationMessage launchNotification,
  ) =>
      _serviceProviderClient.recordNotificationEvent(
        eventType: PinpointEventType.notificationOpened,
        notification: launchNotification,
      );
}

class _PushNotificationsFlutterApi implements PushNotificationsFlutterApi {
  _PushNotificationsFlutterApi() {
    print('_PushNotificationsFlutterApi oconstructor');
    PushNotificationsFlutterApi.setup(this);
    // registerOnReceivedInBackgroundCallback(internalBGCallback);
  }
  final _eventQueue = <Map<Object?, Object?>>[];

  final _onNotificationReceivedInBackgroundCallbacks =
      <OnRemoteMessageCallback>[];

  Future<void> registerOnReceivedInBackgroundCallback(
    OnRemoteMessageCallback callback,
  ) async {
    _onNotificationReceivedInBackgroundCallbacks.add(callback);
    await _flushEvents();
  }

  @override
  Future<void> onNotificationReceivedInBackground(
    Map<Object?, Object?> payload,
  ) async {
    print('onNotificationReceivedInBackground flutterAPI called');
    // final notification = PushNotificationMessage.fromJson(payload);
    print(
      '_onNotificationReceivedInBackgroundCallbacks flutterAPI called: $_onNotificationReceivedInBackgroundCallbacks',
    );
    if (_onNotificationReceivedInBackgroundCallbacks.isNotEmpty) {
      await _flushEvents(withItem: payload);
    } else {
      _eventQueue.add(payload);
    }
  }

  Future<void> _flushEvents({Map<Object?, Object?>? withItem}) async {
    for (final element in [..._eventQueue, withItem]) {
      if (element != null) {
        await Future.wait(
          _onNotificationReceivedInBackgroundCallbacks.map(
            (callback) async {
              await callback(PushNotificationMessage.fromJson(element));
            },
          ),
        );
      }
    }
  }
}
