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
/// processing, and badge count. Optionally accepts a [PushServiceProvider]
/// for device registration and push analytics.
/// {@endtemplate}
class AmplifyPushClient {
  AmplifyPushClient._({
    required PushNotificationsHostApi hostApi,
    required PushFlutterApi flutterApi,
    required StreamController<String> tokenController,
    required Stream<PushNotificationMessage> foregroundStream,
    required Stream<PushNotificationMessage> openedStream,
    required List<StreamSubscription<Object?>> providerSubscriptions,
    PushNotificationMessage? launchNotification,
  }) : _hostApi = hostApi,
       _flutterApi = flutterApi,
       _tokenController = tokenController,
       _foregroundStream = foregroundStream,
       _openedStream = openedStream,
       _providerSubscriptions = providerSubscriptions,
       _launchNotification = launchNotification;

  /// The singleton instance, if one has been created.
  static AmplifyPushClient? _instance;

  /// Clears the singleton instance so a fresh [create] can run.
  ///
  /// Test-only: production code should call [close] instead.
  @visibleForTesting
  static void resetForTesting() => _instance = null;

  /// Creates the singleton push client and begins listening for push events.
  ///
  /// Throws [PushAlreadyConfiguredException] if called again before [close].
  static Future<Result<AmplifyPushClient>> create({
    PushServiceProvider? provider,
    OnRemoteMessageCallback? onBackgroundMessage,
    @visibleForTesting PushNotificationsHostApi? hostApi,
    @visibleForTesting PushFlutterApi? flutterApi,
  }) async {
    if (_instance != null) {
      return const Result.error(PushAlreadyConfiguredException());
    }
    try {
      final api = hostApi ?? PushNotificationsHostApi();
      // Wire provider into flutter API for background dispatch
      final flutter = (flutterApi ?? PushFlutterApi.instance)
        ..provider = provider;

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

      // Set up event channel streams as broadcast streams.
      // EventChannel.receiveBroadcastStream() already returns a broadcast
      // stream, so these support multiple listeners natively.
      final tokenStream = tokenReceivedEventChannel
          .receiveBroadcastStream()
          .cast<Map<Object?, Object?>>()
          .map((payload) => payload['token'] as String)
          .distinct();

      // Use a StreamController to provide a true multi-listen broadcast
      // token stream and to allow deduplication of the initial token dispatch.
      final tokenController = StreamController<String>.broadcast();
      String? lastDispatchedToken;

      // ignore: cancel_subscriptions - cancelled via providerSubscriptions in close()
      final tokenSourceSub = tokenStream.listen(
        tokenController.add,
        onError: tokenController.addError,
        onDone: tokenController.close,
      );

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

      // Track subscriptions that route events to the provider so they can be
      // cancelled on close(). Always include the source subscription to stop
      // token flow.
      final providerSubscriptions = <StreamSubscription<Object?>>[
        tokenSourceSub,
      ];

      // Request initial token and register with provider if available.
      await api.requestInitialToken();
      if (provider != null) {
        try {
          // Wait for the first token from the broadcast controller.
          final token = await tokenController.stream.first.timeout(
            const Duration(seconds: 5),
          );
          await provider.onTokenReceived(token);
          lastDispatchedToken = token;
        } on TimeoutException {
          _logger.warn(
            'Timed out waiting for initial device token. '
            'Verify push capabilities are configured in your native project.',
          );
        }
      }

      // Wire token stream to provider for ongoing token refreshes,
      // deduplicating the initial token that was already dispatched above.
      if (provider != null) {
        providerSubscriptions.add(
          tokenController.stream.listen(
            (token) {
              if (token == lastDispatchedToken) {
                // Skip the initial token already dispatched during create().
                lastDispatchedToken = null;
                return;
              }
              lastDispatchedToken = null;
              unawaited(provider.onTokenReceived(token));
            },
            onError: (Object e, StackTrace st) {
              _logger.error('Error on device token stream', e, st);
            },
          ),
        );
      }

      // Wire foreground/opened streams to provider for analytics
      if (provider != null) {
        providerSubscriptions
          ..add(
            foregroundStream.listen(
              (msg) {
                unawaited(
                  provider.onPushEvent(
                    PushEvent(
                      type: PushEventType.foregroundReceived,
                      notification: msg,
                    ),
                  ),
                );
              },
              onError: (Object e, StackTrace st) {
                _logger.error('Error on foreground notification stream', e, st);
              },
            ),
          )
          ..add(
            openedStream.listen(
              (msg) {
                unawaited(
                  provider.onPushEvent(
                    PushEvent(type: PushEventType.opened, notification: msg),
                  ),
                );
              },
              onError: (Object e, StackTrace st) {
                _logger.error('Error on opened notification stream', e, st);
              },
            ),
          );
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
        tokenController: tokenController,
        foregroundStream: foregroundStream,
        openedStream: openedStream,
        providerSubscriptions: providerSubscriptions,
        launchNotification: launchNotification,
      );
      _instance = client;

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
  final StreamController<String> _tokenController;
  final Stream<PushNotificationMessage> _foregroundStream;
  final Stream<PushNotificationMessage> _openedStream;
  final List<StreamSubscription<Object?>> _providerSubscriptions;
  PushNotificationMessage? _launchNotification;
  bool _closed = false;

  /// Stream of device tokens from FCM/APNs.
  ///
  /// Emits whenever the token is refreshed. Supports multiple listeners.
  /// Use this to register the device with your own backend (if not using a
  /// [PushServiceProvider]).
  Stream<String> get onTokenReceived {
    if (_closed) throw const PushClientClosedException();
    return _tokenController.stream;
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

  /// Returns the notification that launched the app, or `null` if the app was
  /// launched by other means.
  ///
  /// This consumes the launch notification: the first call returns it and
  /// subsequent calls return `null`.
  PushNotificationMessage? consumeLaunchNotification() {
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
  /// Cancels all provider subscriptions, closes the buffered token stream,
  /// clears background callbacks, and disconnects the provider. The client
  /// cannot be reused after closing.
  Future<void> close() async {
    if (_closed) return;
    _closed = true;

    // Cancel all provider-bound stream subscriptions.
    for (final sub in _providerSubscriptions) {
      unawaited(sub.cancel());
    }
    _providerSubscriptions.clear();

    // Close the buffered token stream so its broadcast controller releases.
    unawaited(_tokenController.close());

    // Disconnect provider and clear background callbacks.
    _flutterApi
      ..provider = null
      ..clearBackgroundCallbacks();

    _instance = null;
  }
}
