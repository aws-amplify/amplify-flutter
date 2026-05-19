// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:ui';

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:amplify_push/src/native_push_plugin.g.dart';
import 'package:amplify_push/src/push_notification_message.dart';
import 'package:amplify_push/src/push_service_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Key used to store the external background callback handle.
const externalHandleKey = 'amplify_push_externalHandleKey';

/// Callback type for handling push notifications.
typedef OnRemoteMessageCallback =
    Future<void> Function(PushNotificationMessage message);

final Logger _logger = AmplifyLogging.logger('AmplifyPushFlutterApi');

/// Handles native→Dart callbacks for background notifications.
class PushFlutterApi implements PushNotificationsFlutterApi {
  PushFlutterApi._() {
    PushNotificationsFlutterApi.setUp(this);
  }

  /// Singleton instance.
  static PushFlutterApi get instance => _instance;
  static PushFlutterApi _instance = PushFlutterApi._();

  /// Reset for testing.
  @visibleForTesting
  static void reset() {
    PushNotificationsFlutterApi.setUp(null);
    _instance = PushFlutterApi._();
  }

  PushServiceProvider? _provider;
  final _backgroundCallbacks = <OnRemoteMessageCallback>[];
  void Function()? _onNullifyLaunchNotification;

  /// Set the service provider for push event dispatch.
  set provider(PushServiceProvider? provider) => _provider = provider;

  /// Register a callback for iOS background notifications.
  void registerBackgroundCallback(OnRemoteMessageCallback callback) {
    _backgroundCallbacks.add(callback);
  }

  /// Set callback to nullify launch notification after it's been consumed.
  set onNullifyLaunchNotification(void Function() callback) {
    _onNullifyLaunchNotification = callback;
  }

  @override
  Future<void> onNotificationReceivedInBackground(
    Map<Object?, Object?> payload,
  ) async {
    final notification = PushNotificationMessage.fromJson(payload.cast());

    // Notify provider if available
    final provider = _provider;
    if (provider != null) {
      try {
        await provider.onPushEvent(
          PushEvent(
            type: PushEventType.backgroundReceived,
            notification: notification,
          ),
        );
      } on Object catch (e) {
        _logger.warn('Provider.onPushEvent failed: $e');
      }
    }

    // Dispatch to user's external callback (Android isolate path)
    await _dispatchToExternalHandle(notification);

    // Dispatch to registered iOS callbacks
    await Future.wait(_backgroundCallbacks.map((cb) => cb(notification)));
  }

  @override
  void nullifyLaunchNotification() {
    _onNullifyLaunchNotification?.call();
  }

  Future<void> _dispatchToExternalHandle(
    PushNotificationMessage message,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final handle = prefs.getInt(externalHandleKey);
    if (handle == null) return;

    final callback = PluginUtilities.getCallbackFromHandle(
      CallbackHandle.fromRawHandle(handle),
    );
    if (callback == null) {
      _logger.debug('Could not resolve callback from stored handle');
      return;
    }
    if (callback is! OnRemoteMessageCallback) {
      _logger.warn('Stored callback has wrong type: ${callback.runtimeType}');
      return;
    }
    await callback(message);
  }
}
