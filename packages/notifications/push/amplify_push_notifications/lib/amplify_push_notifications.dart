// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library amplify_push_notifications;

import 'dart:async';
import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';

/// {@template amplify_push_notifications.amplify_push_notifications}
/// Implementation of the Amplify Push Notifications category.
///
/// - Concrete implementation of the Plugin Interface
/// - Communicates with native layer
/// {@endtemplate}
class AmplifyPushNotifications extends PushNotificationsPluginInterface {
  /// {@macro amplify_push_notifications.amplify_push_notifications}
  AmplifyPushNotifications({required this.serviceProviderClient});

  bool _isConfigured = false;
  final MethodChannel _methodChannel =
      const MethodChannel('com.amazonaws.amplify/push_notifications_plugin');
  final AmplifyLogger _logger = AmplifyLogger.category(Category.notifications)
      .createChild('AmplifyPushNotification');
  final ServiceProviderClient serviceProviderClient;
  final StreamController<RemotePushMessage> _foregroundEventStreamController =
      StreamController<RemotePushMessage>.broadcast();

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    print("configuring");
    // Parse config values from amplifyconfiguration.json
    if (config == null ||
        config.analytics == null ||
        config.analytics?.awsPlugin == null) {
      throw const AnalyticsException('No Pinpoint plugin config available');
    }

    if (!_isConfigured) {
      // Register FCM and APNS if auto-registeration is enabled
      await _registerForRemoteNotifications();

      // Register native listeners for token generation and notification handling
      _methodChannel.setMethodCallHandler(_nativeToDartMethodCallHandler);

      // TODO: Listen to token changes and update Pinpoint
      // onNewToken().then(
      //   (stream) => stream.listen(
      //     (address) async {
      //       // Register with service provider
      //       await _registerDevice(address: address);
      //     },
      //   ),
      // );

      // Initialize Endpoint Client
      await serviceProviderClient.init(
        config: config,
        authProviderRepo: authProviderRepo,
      );
    }

    // Register with service provider
    await _registerDevice();

    // TODO: Register the callback dispatcher

    _logger.info("CONFIGURE API | Successfully configure push notifications");

    _isConfigured = true;
  }

  @override
  Stream<RemotePushMessage> onForegroundNotificationReceived() =>
      _foregroundEventStreamController.stream;

  Future<void> _registerForRemoteNotifications() async {
    try {
      await _methodChannel
          .invokeMethod<String>('registerForRemoteNotifications');
      _logger.info(
          "Successfully registered device to receive remote notifications");
    } on MissingPluginException {
      _logger.info(
          "_registerForRemoteNotifications on Android is not implemented");
    } catch (e) {
      _logger.error(
        "Error when registering device to receive remote notifications: $e",
      );
    }
  }

  Future<dynamic> _nativeToDartMethodCallHandler(MethodCall methodCall) async {
    try {
      final decodedContent = jsonDecode(methodCall.arguments);
      switch (methodCall.method) {
        case "NEW_TOKEN":
          print(
            "TOKENS API | Plugin received a new device token: $decodedContent",
          );
          break;
        case "FOREGROUND_MESSAGE_RECEIVED":
          print(
            "NOTIFICATION HANDLING API | Plugin received foreground notification: $decodedContent",
          );
          _foregroundEventStreamController.sink.add(
            RemotePushMessage.fromJson(decodedContent),
          );
          break;
        case "BACKGROUND_MESSAGE_RECEIVED":
          print(
            "NOTIFICATION HANDLING API | Plugin received background notification: $decodedContent",
          );
          break;
        case "NOTIFICATION_OPENED_APP":
          print(
            "NOTIFICATION HANDLING API | Plugin received notificaiton tapped event: $decodedContent",
          );
          break;
        default:
          break;
      }
    } catch (e) {
      _logger.error("Error in native-dart method handler $e");
    }
  }

  Future<void> _registerDevice({String? address}) async {
    try {
      address = address ?? await getToken();
      if (address != null) await serviceProviderClient.registerDevice(address);
      _logger.info("Successfully registered device with the servvice provider");
    } catch (e) {
      _logger.error(
        "Error when registering device with the servvice provider: $e",
      );
    }
  }

  Future<String?> getToken() async {
    try {
      String? token = await _methodChannel.invokeMethod<String>('getToken');
      if (token != null) {
        print("TOKEN API |  Successfully retreived device token: $token");
        return token;
      }
    } catch (e) {
      _logger.error("Error when getting device token: $e");
    }
    return null;
  }
}
