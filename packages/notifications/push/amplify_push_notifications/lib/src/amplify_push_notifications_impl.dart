// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library amplify_push_notifications;

import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_push_notifications/src/native_push_notifications_plugin.g.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _tokenReceivedEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/TOKEN_RECEIVED',
);
const _notificationOpenedEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/NOTIFICATION_OPENED',
);
const _foregroundNotificationEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/FOREGROUND_MESSAGE_RECEIVED',
);

const _externalHandleKey = '_externalHandleKey';

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
  Future<void> onNotificationReceivedInBackground(
    OnRemoteMessageCallback callback,
  ) async {
    if (Platform.isAndroid) {
      final callbackHandle = PluginUtilities.getCallbackHandle(callback);
      if (callbackHandle == null) {
        _logger.error(
          'Callback is not a global or static function',
        );
        return;
      }

      final prefs = await SharedPreferences.getInstance();
      await prefs.reload();
      await prefs.setInt(_externalHandleKey, callbackHandle.toRawHandle());
    } else if (Platform.isIOS) {
      await _flutterApi.registerOnReceivedInBackgroundCallback(callback);
    }
  }

  @override
  Future<void> identifyUser({
    required String userId,
    required AnalyticsUserProfile userProfile,
  }) async {
    await _serviceProviderClient.identifyUser(
      userId: userId,
      userProfile: userProfile,
    );
  }

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
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

    await _registerDeviceWhenConfigure();
    _attachEventChannelListeners();

    // Explicitly set the service provider so Analytics can be recorded when notification arrives in Background/Killed state
    _flutterApi.setProvider(_serviceProviderClient);

    final rawLaunchNotification = await _hostApi.getLaunchNotification();
    if (rawLaunchNotification != null) {
      final launchNotification =
          PushNotificationMessage.fromJson(rawLaunchNotification);
      _launchNotification = launchNotification;
      _recordAnalyticsForLaunchNotification(launchNotification);
    }
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
    await _registerDevice(deviceToken);
  }

  void _foregroundNotificationListener(
    PushNotificationMessage pushNotificationMessage,
  ) =>
      _serviceProviderClient.recordNotificationEvent(
        eventType: PinpointEventType.foregroundMessageReceived,
        notification: pushNotificationMessage,
      );

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
    } on Exception catch (error) {
      // the error mostly like is the App doesn't have corresponding
      // capability to request a push notification device token
      throw PushNotificationException(
        'Error occurred awaiting for device token to register device with Pinpoint',
        recoverySuggestion: 'Please review the underlying exception',
        underlyingException: error,
      );
    }
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
    PushNotificationsFlutterApi.setup(this);
  }
  final _eventQueue = <Map<Object?, Object?>>[];

  ServiceProviderClient? _serviceProviderClient;

  final _onNotificationReceivedInBackgroundCallbacks =
      <OnRemoteMessageCallback>[];

  Future<void> registerOnReceivedInBackgroundCallback(
    OnRemoteMessageCallback callback,
  ) async {
    _onNotificationReceivedInBackgroundCallbacks.add(callback);
    unawaited(_flushEvents());
  }

  void setProvider(ServiceProviderClient serviceProviderClient) {
    // Flush only when the SericeProvider becomes available in config
    _serviceProviderClient = serviceProviderClient;
    unawaited(_flushEvents());
  }

  void recordPushEvent(PushNotificationMessage pushNotificationMessage) {
    _serviceProviderClient?.recordNotificationEvent(
      eventType: PinpointEventType.backgroundMessageReceived,
      notification: pushNotificationMessage,
    );
  }

  Future<void> dispatchToExternalHandle(
    PushNotificationMessage pushNotificationMessage,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.reload();

    final externalHandle = prefs.getInt(_externalHandleKey);
    if (externalHandle == null) {
      return;
    }
    final externalCallback = PluginUtilities.getCallbackFromHandle(
      CallbackHandle.fromRawHandle(externalHandle),
    );
    if (externalCallback == null) {
      safePrint(
        'Could not locate external callback for the stored external handle',
      );
      return;
    }
    if (externalCallback is! OnRemoteMessageCallback) {
      throw StateError(
        'Invalid callback type: ${externalCallback.runtimeType}',
      );
    }
    externalCallback(pushNotificationMessage);
  }

  @override
  Future<void> onNotificationReceivedInBackground(
    Map<Object?, Object?> payload,
  ) async {
    // Flush only if ServiceProvider is available
    if (_serviceProviderClient != null) {
      await _flushEvents(withItem: payload);
    } else {
      _eventQueue.add(payload);
    }
  }

  Future<void> _flushEvents({Map<Object?, Object?>? withItem}) async {
    for (final element
        in [..._eventQueue, withItem].whereType<Map<Object?, Object?>>()) {
      final notification = PushNotificationMessage.fromJson(element);
      recordPushEvent(notification);
      await dispatchToExternalHandle(notification);
      await Future.wait(
        _onNotificationReceivedInBackgroundCallbacks.map(
          (callback) async {
            await callback(notification);
          },
        ),
      );
    }
    _eventQueue.clear();
  }
}
