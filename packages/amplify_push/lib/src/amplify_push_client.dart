// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:ui';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:amplify_push/src/amplify_push_exception.dart';
import 'package:amplify_push/src/native_push_plugin.g.dart';
import 'package:amplify_push/src/push_flutter_api.dart';
import 'package:amplify_push/src/push_notification_message.dart';
import 'package:amplify_push/src/push_permission_status.dart';
import 'package:amplify_push/src/push_service_provider.dart';
import 'package:async/async.dart' hide Result;
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Event channel for device token updates.
@visibleForTesting
const tokenReceivedEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/TOKEN_RECEIVED',
);

/// Event channel for notifications opened by user tap.
@visibleForTesting
const notificationOpenedEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/NOTIFICATION_OPENED',
);

/// Event channel for foreground notifications.
@visibleForTesting
const foregroundNotificationEventChannel = EventChannel(
  'com.amazonaws.amplify/push_notification/event/FOREGROUND_MESSAGE_RECEIVED',
);

/// Background method channel for signaling completion.
@visibleForTesting
const backgroundChannel = MethodChannel(
  'plugins.flutter.io/amplify_push_notification_plugin_background',
);

final Logger _logger = AmplifyLogging.logger('AmplifyPushClient');

/// {@template amplify_push.amplify_push_client}
/// Standalone on-device push notification client.
///
/// Handles token lifecycle, notification routing, permissions, background
/// processing, and badge count. Backend-agnostic — optionally accepts a
/// [PushServiceProvider] for device registration and push analytics.
///
/// ```dart
/// final push = await AmplifyPushClient.create(
///   onBackgroundMessage: myBackgroundHandler,
/// );
///
/// push.onTokenReceived.listen((token) => print('Token: $token'));
/// push.onNotificationReceivedInForeground.listen((msg) => print(msg.title));
/// ```
/// {@endtemplate}
class AmplifyPushClient {
  AmplifyPushClient._({
    required PushNotificationsHostApi hostApi,
    required PushFlutterApi flutterApi,
    required StreamQueue<String> bufferedTokenStream,
    required Stream<PushNotificationMessage> foregroundStream,
    required Stream<PushNotificationMessage> openedStream,
    PushNotificationMessage? launchNotification,
  }) : _hostApi = hostApi,
       _flutterApi = flutterApi,
       _bufferedTokenStream = bufferedTokenStream,
       _foregroundStream = foregroundStream,
       _openedStream = openedStream,
       _launchNotification = launchNotification;

  /// {@macro amplify_push.amplify_push_client}
  ///
  /// Initializes the native push bridge, requests the initial device token,
  /// and begins listening for push events.
  ///
  /// [provider] — optional backend for device registration and analytics.
  /// [onBackgroundMessage] — callback invoked when a notification arrives
  /// while the app is in the background (Android isolate / iOS background).
  static Future<Result<AmplifyPushClient>> create({
    PushServiceProvider? provider,
    OnRemoteMessageCallback? onBackgroundMessage,
    @visibleForTesting PushNotificationsHostApi? hostApi,
    @visibleForTesting PushFlutterApi? flutterApi,
  }) async {
    try {
      final api = hostApi ?? PushNotificationsHostApi();
      final flutter = flutterApi ?? PushFlutterApi.instance;

      // Wire provider into flutter API for background dispatch
      flutter.provider = provider;

      // Register background callback (Android)
      if (onBackgroundMessage != null) {
        final callbackHandle = PluginUtilities.getCallbackHandle(
          onBackgroundMessage,
        );
        if (callbackHandle == null) {
          return const Result.error(PushCallbackException());
        }
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt(externalHandleKey, callbackHandle.toRawHandle());
        await api.registerCallbackFunction(callbackHandle.toRawHandle());

        // Also register for iOS path
        flutter.registerBackgroundCallback(onBackgroundMessage);
      }

      // Set up event channel streams
      final tokenStream = tokenReceivedEventChannel
          .receiveBroadcastStream()
          .cast<Map<Object?, Object?>>()
          .map((payload) => payload['token'] as String)
          .distinct();
      final bufferedTokenStream = StreamQueue(tokenStream);

      final foregroundStream = foregroundNotificationEventChannel
          .receiveBroadcastStream()
          .cast<Map<Object?, Object?>>()
          .map((map) => map.cast<String, Object?>())
          .map(PushNotificationMessage.fromJson);

      final openedStream = notificationOpenedEventChannel
          .receiveBroadcastStream()
          .cast<Map<Object?, Object?>>()
          .map((map) => map.cast<String, Object?>())
          .map(PushNotificationMessage.fromJson);

      // Request initial token and register with provider if available
      await api.requestInitialToken();
      if (provider != null) {
        try {
          final token = await bufferedTokenStream.peek.timeout(
            const Duration(seconds: 5),
          );
          await provider.onTokenReceived(token);
        } on TimeoutException {
          _logger.warn(
            'Timed out waiting for initial device token. '
            'Verify push capabilities are configured in your native project.',
          );
        }
      }

      // Wire token stream to provider for ongoing token refreshes
      if (provider != null) {
        tokenStream.listen((token) {
          unawaited(provider.onTokenReceived(token));
        });
      }

      // Wire foreground/opened streams to provider for analytics
      if (provider != null) {
        foregroundStream.listen((msg) {
          unawaited(
            provider.onPushEvent(
              PushEvent(
                type: PushEventType.foregroundReceived,
                notification: msg,
              ),
            ),
          );
        });
        openedStream.listen((msg) {
          unawaited(
            provider.onPushEvent(
              PushEvent(type: PushEventType.opened, notification: msg),
            ),
          );
        });
      }

      // Check for launch notification
      PushNotificationMessage? launchNotification;
      final rawLaunch = await api.getLaunchNotification();
      if (rawLaunch != null) {
        launchNotification = PushNotificationMessage.fromJson(rawLaunch.cast());
        if (provider != null) {
          unawaited(
            provider.onPushEvent(
              PushEvent(
                type: PushEventType.opened,
                notification: launchNotification,
              ),
            ),
          );
        }
      }

      final client = AmplifyPushClient._(
        hostApi: api,
        flutterApi: flutter,
        bufferedTokenStream: bufferedTokenStream,
        foregroundStream: foregroundStream,
        openedStream: openedStream,
        launchNotification: launchNotification,
      );

      if (launchNotification != null) {
        flutter.onNullifyLaunchNotification = () {
          client._launchNotification = null;
        };
      }

      _logger.info('AmplifyPushClient initialized');
      return Result.ok(client);
    } on Object catch (e) {
      return Result.error(AmplifyPushException.from(e));
    }
  }

  final PushNotificationsHostApi _hostApi;
  final PushFlutterApi _flutterApi;
  final StreamQueue<String> _bufferedTokenStream;
  final Stream<PushNotificationMessage> _foregroundStream;
  final Stream<PushNotificationMessage> _openedStream;
  PushNotificationMessage? _launchNotification;
  bool _closed = false;

  /// Stream of device tokens from FCM/APNs.
  ///
  /// Emits whenever the token is refreshed. Use this to register the device
  /// with your own backend (if not using a [PushServiceProvider]).
  Stream<String> get onTokenReceived {
    if (_closed) throw const PushClientClosedException();
    return _bufferedTokenStream.rest;
  }

  /// Stream of notifications received while the app is in the foreground.
  Stream<PushNotificationMessage> get onNotificationReceivedInForeground {
    if (_closed) throw const PushClientClosedException();
    return _foregroundStream;
  }

  /// Stream of notifications the user tapped to open the app.
  Stream<PushNotificationMessage> get onNotificationOpened {
    if (_closed) throw const PushClientClosedException();
    return _openedStream;
  }

  /// The notification that launched the app, if any.
  ///
  /// Returns `null` if the app was launched by other means.
  /// Consumed on first read (subsequent reads return `null`).
  PushNotificationMessage? get launchNotification {
    if (_closed) throw const PushClientClosedException();
    final result = _launchNotification;
    _launchNotification = null;
    return result;
  }

  /// Current push notification permission status.
  Future<Result<PushPermissionStatus>> getPermissionStatus() async {
    if (_closed) return const Result.error(PushClientClosedException());
    try {
      final result = await _hostApi.getPermissionStatus();
      final status = switch (result.status) {
        PermissionStatus.shouldRequest => PushPermissionStatus.shouldRequest,
        PermissionStatus.shouldExplainThenRequest =>
          PushPermissionStatus.shouldExplainThenRequest,
        PermissionStatus.granted => PushPermissionStatus.granted,
        PermissionStatus.denied => PushPermissionStatus.denied,
      };
      return Result.ok(status);
    } on Object catch (e) {
      return Result.error(AmplifyPushException.from(e));
    }
  }

  /// Request push notification permissions.
  ///
  /// On iOS, [alert], [badge], and [sound] control granular permissions.
  /// On Android, these have no effect.
  ///
  /// Returns `true` if granted, `false` if denied.
  Future<Result<bool>> requestPermissions({
    bool alert = true,
    bool badge = true,
    bool sound = true,
  }) async {
    if (_closed) return const Result.error(PushClientClosedException());
    try {
      final granted = await _hostApi.requestPermissions(
        PermissionsOptions(alert: alert, sound: sound, badge: badge),
      );
      return Result.ok(granted);
    } on Object catch (e) {
      return Result.error(AmplifyPushException.from(e));
    }
  }

  /// Get the current badge count (iOS only).
  ///
  /// Returns 0 on non-iOS platforms.
  Future<Result<int>> getBadgeCount() async {
    if (_closed) return const Result.error(PushClientClosedException());
    try {
      final count = await _hostApi.getBadgeCount();
      return Result.ok(count);
    } on Object catch (e) {
      return Result.error(AmplifyPushException.from(e));
    }
  }

  /// Set the badge count (iOS only).
  void setBadgeCount(int count) {
    if (_closed) return;
    _hostApi.setBadgeCount(count).ignore();
  }

  /// Release resources held by this client.
  ///
  /// The client cannot be reused after closing.
  Future<void> close() async {
    _closed = true;
    _flutterApi.provider = null;
  }
}
