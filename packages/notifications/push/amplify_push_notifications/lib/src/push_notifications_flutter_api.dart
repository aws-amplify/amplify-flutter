// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:collection';
import 'dart:ui';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_push_notifications/amplify_push_notifications.dart';
import 'package:amplify_push_notifications/src/native_push_notifications_plugin.g.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

final AmplifyLogger _logger = AmplifyLogger.category(Category.pushNotifications)
    .createChild('AmplifyPushNotificationsFlutterApi');

/// {@template amplify_push_notifications.amplify_push_notifications_flutter_api}
/// Internal Platform check exposed for testing purposes only.
/// {@endtemplate}
class AmplifyPushNotificationsFlutterApi
    implements PushNotificationsFlutterApi {
  /// {@macro amplify_push_notifications.amplify_push_notifications_flutter_api}
  AmplifyPushNotificationsFlutterApi._constructor() {
    PushNotificationsFlutterApi.setup(this);
  }

  /// {@template amplify_push_notifications.amplify_push_notifications_flutter_api.reset}
  /// Ability to reset the singleton only used for resetting between tests.
  /// {@endtemplate}
  static void reset() {
    PushNotificationsFlutterApi.setup(null);
    _instance = AmplifyPushNotificationsFlutterApi._constructor();
  }

  /// {@template amplify_push_notifications.amplify_push_notifications_flutter_api.instance}
  /// Singleton instance of the class.
  /// {@endtemplate}
  static AmplifyPushNotificationsFlutterApi get instance => _instance;

  static AmplifyPushNotificationsFlutterApi _instance =
      AmplifyPushNotificationsFlutterApi._constructor();

  final _eventQueue = <PushNotificationMessage>[];

  /// {@template amplify_push_notifications.event_queue}
  /// Internal eventQueue getter exposed for testing purposes only.
  /// {@endtemplate}
  @visibleForTesting
  List<PushNotificationMessage> get eventQueue =>
      UnmodifiableListView(_eventQueue);

  final _onNotificationReceivedInBackgroundCallbacks =
      <OnRemoteMessageCallback>[];

  void Function()? _onNullifyLaunchNotificationCallback;

  /// {@template amplify_push_notifications.register_on_received_In_background_callback}
  /// Used to register callback function on iOS.
  /// {@endtemplate}
  void registerOnReceivedInBackgroundCallback(
    OnRemoteMessageCallback callback,
  ) {
    _onNotificationReceivedInBackgroundCallbacks.add(callback);
  }

  /// {@template amplify_push_notifications.}
  /// Set a callback that to be called when [nullifyLaunchNotification] is
  /// called from the native implementation.
  /// {@endtemplate}
  set onNullifyLaunchNotificationCallback(
    void Function() callback,
  ) {
    _onNullifyLaunchNotificationCallback = callback;
  }

  ServiceProviderClient? _serviceProviderClient;

  set serviceProviderClient(ServiceProviderClient serviceProviderClient) {
    _serviceProviderClient = serviceProviderClient;
    // Flush when the service provider client is ready. Needed when Amplify is reconfigured from [amplifyBackgroundProcessing]
    // or when the app gets woken up in the background from a killed state on iOS and Amplify is configured.
    unawaited(_flushEvents());
  }

  Future<void> _dispatchToExternalHandle(
    PushNotificationMessage pushNotificationMessage,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final externalHandle = prefs.getInt(externalHandleKey);
    if (externalHandle == null) {
      _logger.debug(
        'Could not locate stored external handle',
      );
      return;
    }
    final externalCallback = PluginUtilities.getCallbackFromHandle(
      CallbackHandle.fromRawHandle(externalHandle),
    );
    if (externalCallback == null) {
      _logger.debug(
        'Could not locate external callback for the stored external handle',
      );
      return;
    }
    if (externalCallback is! OnRemoteMessageCallback) {
      throw PushNotificationException(
        'Invalid callback type: ${externalCallback.runtimeType}',
      );
    }
    await externalCallback(pushNotificationMessage);
  }

  @override
  Future<void> onNotificationReceivedInBackground(
    Map<Object?, Object?> payload,
  ) async {
    final notification = PushNotificationMessage.fromJson(payload.cast());

    // Queue when service client is not available without blocking invocation of external callback
    if (_serviceProviderClient != null) {
      await _flushEvents(withItem: notification);
    } else {
      _eventQueue.add(notification);
    }

    await _dispatchToExternalHandle(notification);
    await Future.wait(
      _onNotificationReceivedInBackgroundCallbacks.map(
        (callback) async => callback(notification),
      ),
    );
  }

  Future<void> _flushEvents({PushNotificationMessage? withItem}) async {
    if (_serviceProviderClient != null) {
      await Future.wait<void>(
        [..._eventQueue, withItem].whereType<PushNotificationMessage>().map(
              (notification) => _serviceProviderClient!.recordNotificationEvent(
                eventType: PinpointEventType.backgroundMessageReceived,
                notification: notification,
              ),
            ),
      );
      _eventQueue.clear();
    }
  }

  @override
  void nullifyLaunchNotification() {
    _onNullifyLaunchNotificationCallback?.call();
  }
}
