// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/notifications/notifications_outputs.dart';

/// {@template amplify_core.push.service_provider_client}
/// A base class for new service providers to implement and add functionality
///
/// Service Providers are AWS services that link with FCM/APNS to send push notifications.
/// {@endtemplate}
abstract class ServiceProviderClient {
  /// Initialize this client, used by the plugin during configuration.
  Future<void> init({
    required NotificationsOutputs config,
    required AmplifyAuthProviderRepository authProviderRepo,
  });

  /// Register the device with the servie provider so it can be targeted for Push Notifications.
  Future<void> registerDevice(String deviceToken);

  /// Used when a notification related event occurs such as notification received or opened
  Future<void> recordNotificationEvent({
    required PinpointEventType eventType,
    required PushNotificationMessage notification,
  });

  /// Link the user details to the service provider so messages can be targeted on a user level.
  Future<void> identifyUser({
    required String userId,
    UserProfile? userProfile,
  });
}
