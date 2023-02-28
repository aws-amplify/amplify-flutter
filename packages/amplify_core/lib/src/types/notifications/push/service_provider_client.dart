// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.push.service_provider_client}
/// A base class for new service providers to implement and add functionality
///
/// Service Providers are AWS services that link with FCM/APNS to send push notifications.
/// The methods will be called within the plugin in the following scenarios,
/// 1. init - when the plugin is being configured
/// 2. registerDevice - also when the plugin is being configured
/// 3. recordNotificationEvent - when a notification related event occurs such as notification received or opened
/// {@endtemplate}
abstract class ServiceProviderClient {
  Future<void> init({
    required NotificationsPinpointPluginConfig config,
    required AmplifyAuthProviderRepository authProviderRepo,
  });
  Future<void> registerDevice(String deviceToken);
  Future<void> recordNotificationEvent({
    required PinpointEventType eventType,
    required PushNotificationMessage notification,
  });

  Future<void> identifyUser({
    required String userId,
    // TODO: Update this with the generic UserProfile
    required AnalyticsUserProfile userProfile,
  });
}
