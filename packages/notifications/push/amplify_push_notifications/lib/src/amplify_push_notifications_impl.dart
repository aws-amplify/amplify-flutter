// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library amplify_push_notifications;

import 'dart:async';
import 'dart:convert';
import 'dart:ui';

import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports, invalid_use_of_internal_member
import 'package:amplify_core/src/http/amplify_category_method.dart';
import 'package:amplify_push_notifications/src/native_push_notifications_plugin.g.dart';
import 'package:amplify_push_notifications/src/push_notifications_flutter_api.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:async/async.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:os_detect/os_detect.dart' as os;
import 'package:shared_preferences/shared_preferences.dart';

/// {@template amplify_push_notifications.config_storage}
/// Secure storage key that holds the config file needed to be configureed in the background processor function.
/// {@endtemplate}
const configSecureStorageKey = 'configSecureStorageKey';

/// {@template amplify_push_notifications.config_storage}
/// Token event channel made public for testing purposes.
/// {@endtemplate}
@visibleForTesting
const tokenReceivedEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/TOKEN_RECEIVED',
);

/// {@template amplify_push_notifications.config_storage}
/// Notification opened event channel made public for testing purposes.
/// {@endtemplate}
@visibleForTesting
const notificationOpenedEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/NOTIFICATION_OPENED',
);

/// {@template amplify_push_notifications.config_storage}
/// Foreground Notification event channel made public for testing purposes.
/// {@endtemplate}
@visibleForTesting
const foregroundNotificationEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/FOREGROUND_MESSAGE_RECEIVED',
);

/// {@template amplify_push_notifications.external_handle_key}
/// Key used to store the external callback handle function.
///
/// Used in this file to store the callback function and used in Flutter API class to access it.
/// {@endtemplate}
const externalHandleKey = 'externalHandleKey';

final _needsConfigurationException = ConfigurationError(
  'Configure Amplify with Notifications Plugin before using this method.',
  recoverySuggestion: 'Configure Amplify first.',
);

final AmplifyLogger _logger = AmplifyLogger.category(Category.pushNotifications)
    .createChild('AmplifyPushNotification');

/// {@template amplify_push_notifications.amplify_push_notifications}
/// Implementation of the Amplify Push Notifications category.
///
/// - Concrete implementation of the Plugin Interface
/// - Communicates with native module via [PushNotificationsHostApi]
/// {@endtemplate}
abstract class AmplifyPushNotifications
    extends PushNotificationsPluginInterface {
  /// {@macro amplify_push_notifications.amplify_push_notifications}
  AmplifyPushNotifications({
    required ServiceProviderClient serviceProviderClient,
    required Future<void> Function() backgroundProcessor,
    @visibleForTesting DependencyManager? dependencyManager,
  })  : _serviceProviderClient = serviceProviderClient,
        _backgroundProcessor = backgroundProcessor {
    if (dependencyManager == null) {
      _dependencyManager = DependencyManager();
      _dependencyManager
        ..addInstance<AmplifyPushNotificationsFlutterApi>(
          AmplifyPushNotificationsFlutterApi.instance,
        )
        ..addInstance<PushNotificationsHostApi>(PushNotificationsHostApi())
        ..addInstance<AmplifySecureStorage>(
          AmplifySecureStorage.factoryFrom()(
            AmplifySecureStorageScope.awsPinpointPushNotificationsPlugin,
          ),
        );
    } else {
      _dependencyManager = dependencyManager;
    }

    _onTokenReceived = tokenReceivedEventChannel
        .receiveBroadcastStream()
        .cast<Map<Object?, Object?>>()
        .map((payload) {
      return payload['token'] as String;
    }).distinct();
    _bufferedTokenStream = StreamQueue(_onTokenReceived);
    _onForegroundNotificationReceived = foregroundNotificationEventChannel
        .receiveBroadcastStream()
        .cast<Map<Object?, Object?>>()
        .map((map) => map.cast<String, Object?>())
        .map(PushNotificationMessage.fromJson);

    _onNotificationOpened = notificationOpenedEventChannel
        .receiveBroadcastStream()
        .cast<Map<Object?, Object?>>()
        .map((map) => map.cast<String, Object?>())
        .map(PushNotificationMessage.fromJson);
  }

  late DependencyManager _dependencyManager;
  final ServiceProviderClient _serviceProviderClient;
  AmplifyPushNotificationsFlutterApi get _flutterApi =>
      _dependencyManager.expect();
  PushNotificationsHostApi get _hostApi => _dependencyManager.expect();
  AmplifySecureStorage get _amplifySecureStorage => _dependencyManager.expect();
  late final Stream<String> _onTokenReceived;
  late final StreamQueue<String> _bufferedTokenStream;
  late final Stream<PushNotificationMessage> _onForegroundNotificationReceived;
  late final Stream<PushNotificationMessage> _onNotificationOpened;
  var _isConfigured = false;
  PushNotificationMessage? _launchNotification;
  final Future<void> Function() _backgroundProcessor;
  final List<StreamSubscription<dynamic>> _eventChannelListeners = [];
  @override
  PushNotificationMessage? get launchNotification {
    if (!_isConfigured) {
      throw _needsConfigurationException;
    }
    final result = _launchNotification;
    _launchNotification = null;
    return result;
  }

  @override
  Stream<String> get onTokenReceived {
    if (!_isConfigured) {
      throw _needsConfigurationException;
    }
    return _bufferedTokenStream.rest;
  }

  @override
  Stream<PushNotificationMessage> get onNotificationReceivedInForeground {
    if (!_isConfigured) {
      throw _needsConfigurationException;
    }
    return _onForegroundNotificationReceived;
  }

  @override
  Stream<PushNotificationMessage> get onNotificationOpened {
    if (!_isConfigured) {
      throw _needsConfigurationException;
    }
    return _onNotificationOpened;
  }

  @override
  void onNotificationReceivedInBackground(
    OnRemoteMessageCallback callback,
  ) {
    if (os.isAndroid) {
      final callbackHandle = PluginUtilities.getCallbackHandle(callback);
      if (callbackHandle == null) {
        throw const PushNotificationException(
          'Callback is not a global or static function',
          recoverySuggestion:
              'Make the callback function given to the API a top-level or a static function.',
        );
      }
      unawaited(
        Future(() async {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setInt(externalHandleKey, callbackHandle.toRawHandle());
        }),
      );
    } else if (os.isIOS) {
      _flutterApi.registerOnReceivedInBackgroundCallback(callback);
    }
  }

  @override
  Future<void> identifyUser({
    required String userId,
    UserProfile? userProfile,
  }) async {
    if (!_isConfigured) {
      throw _needsConfigurationException;
    }
    await identifyCall(
      PushNotificationsCategoryMethod.identifyUser,
      () => _serviceProviderClient.identifyUser(
        userId: userId,
        userProfile: userProfile,
      ),
    );
  }

  @override
  Future<void> configure({
    AmplifyOutputs? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    final notificationsConfig = config?.notifications;
    if (notificationsConfig == null) {
      throw const PushNotificationException(
        'No Pinpoint plugin config available',
        recoverySuggestion:
            'Make sure to include missing or valid Push Notification configuration values',
      );
    }

    if (_isConfigured) {
      return;
    }

    // Initialize Endpoint Client
    await _serviceProviderClient.init(
      config: notificationsConfig,
      authProviderRepo: authProviderRepo,
    );

    // register device, attach internal listeners and internal background callbacks
    await _registerDeviceWhenConfigure();
    _attachEventChannelListeners();
    if (os.isAndroid) {
      await _registerBackgroundProcessorForAndroid();
      // Config is securely stored to be used to re-configure Amplify in the background processor function when the app is killed
      await _amplifySecureStorage.write(
        key: configSecureStorageKey,
        value: jsonEncode(config),
      );
    }

    // Set the service provider so Analytics can be recorded when notification arrives in Background/Killed state
    _flutterApi.serviceProviderClient = _serviceProviderClient;

    final rawLaunchNotification = await _hostApi.getLaunchNotification();
    if (rawLaunchNotification != null) {
      final launchNotification =
          PushNotificationMessage.fromJson(rawLaunchNotification.cast());
      _launchNotification = launchNotification;
      _flutterApi.onNullifyLaunchNotificationCallback = () {
        _launchNotification = null;
      };
      _recordAnalyticsForLaunchNotification(launchNotification);
    }

    _isConfigured = true;
  }

  @override
  Future<void> reset() {
    while (_eventChannelListeners.isNotEmpty) {
      _eventChannelListeners.removeLast().cancel();
    }
    return super.reset();
  }

  @override
  Future<bool> requestPermissions({
    bool alert = true,
    bool badge = true,
    bool sound = true,
  }) {
    if (!_isConfigured) {
      throw _needsConfigurationException;
    }
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
    if (!_isConfigured) {
      throw _needsConfigurationException;
    }
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
    if (!os.isIOS) {
      _logger.error('Not supported on this platform');
      return Future.value(0);
    }
    if (!_isConfigured) {
      throw _needsConfigurationException;
    }
    return _hostApi.getBadgeCount();
  }

  @override
  void setBadgeCount(int badgeCount) {
    if (!os.isIOS) {
      _logger.error('Not supported on this platform');
      return;
    }
    if (!_isConfigured) {
      throw _needsConfigurationException;
    }
    _hostApi.setBadgeCount(badgeCount).ignore();
  }

  Future<void> _registerBackgroundProcessorForAndroid() async {
    final callbackHandle =
        PluginUtilities.getCallbackHandle(_backgroundProcessor);
    if (callbackHandle == null) {
      throw const PushNotificationException(
        'Callback is not a global or static function',
        recoverySuggestion:
            'Make the function a top-level or a static function.',
      );
    }
    await _hostApi.registerCallbackFunction(
      callbackHandle.toRawHandle(),
    );
    _logger.debug('Successfully registered callback');
  }

  Future<void> _registerDeviceWhenConfigure() async {
    try {
      await _hostApi.requestInitialToken();
      final deviceToken =
          await _bufferedTokenStream.peek.timeout(const Duration(seconds: 5));
      await _registerDevice(deviceToken);
    } on PlatformException catch (error) {
      // the error mostly like is the App doesn't have corresponding
      // capability to request a push notification device token
      throw PushNotificationException(
        'Error occurred awaiting for device token.',
        recoverySuggestion: 'Review the underlying exception.',
        underlyingException: error,
      );
    } on TimeoutException {
      _logger.error(
        'Timed out awaiting for device token.'
        ' This may happen when the native app has not been correctly configured'
        ' for push notifications. Review push notification configurations'
        ' of the native iOS and Android apps of your Flutter project.',
      );
    }
  }

  void _foregroundNotificationListener(
    PushNotificationMessage pushNotificationMessage,
  ) =>
      identifyCall(
        PushNotificationsCategoryMethod.foregroundMessageReceived,
        () => _serviceProviderClient.recordNotificationEvent(
          eventType: PinpointEventType.foregroundMessageReceived,
          notification: pushNotificationMessage,
        ),
      );

  void _notificationOpenedListener(
    PushNotificationMessage pushNotificationMessage,
  ) =>
      identifyCall(
        PushNotificationsCategoryMethod.notificationOpened,
        () => _serviceProviderClient.recordNotificationEvent(
          eventType: PinpointEventType.notificationOpened,
          notification: pushNotificationMessage,
        ),
      );

  void _tokenReceivedListener(String deviceToken) {
    unawaited(_registerDevice(deviceToken));
  }

  Future<void> _registerDevice(String address) async {
    try {
      await identifyCall(
        PushNotificationsCategoryMethod.registerDevice,
        () => _serviceProviderClient.registerDevice(address),
      );
      _logger.debug('Successfully registered device with the service provider');
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
    _eventChannelListeners
      ..add(
        _onTokenReceived.listen(_tokenReceivedListener)
          ..onError((Object error) {
            _logger.error(
              'Unexpected error $error received from onTokenReceived event channel.',
            );
          }),
      )
      ..add(
        _onForegroundNotificationReceived
            .listen(_foregroundNotificationListener)
          ..onError((Object error) {
            _logger.error(
              'Unexpected error $error received from onNotificationReceivedInForeground event channel.',
            );
          }),
      )
      ..add(
        _onNotificationOpened.listen(_notificationOpenedListener)
          ..onError((Object error) {
            _logger.error(
              'Unexpected error $error received from onNotificationOpened event channel.',
            );
          }),
      );
  }

  void _recordAnalyticsForLaunchNotification(
    PushNotificationMessage launchNotification,
  ) =>
      identifyCall(
        PushNotificationsCategoryMethod.launchNotification,
        () => _serviceProviderClient.recordNotificationEvent(
          eventType: PinpointEventType.notificationOpened,
          notification: launchNotification,
        ),
      );
}
