// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_push/src/push_notification_message.dart';

/// The type of push notification event.
enum PushEventType {
  /// Notification received while app is in the foreground.
  foregroundReceived,

  /// Notification received while app is in the background or killed.
  backgroundReceived,

  /// User tapped the notification to open the app.
  opened,
}

/// A push notification event with type and payload.
class PushEvent {
  /// Creates a push event.
  const PushEvent({required this.type, required this.notification});

  /// The event type.
  final PushEventType type;

  /// The notification payload.
  final PushNotificationMessage notification;
}

/// Optional backend provider for device registration and push analytics.
///
/// Implement this to wire push events to a backend service (e.g., Connect).
/// Without a provider, `AmplifyPushClient` works standalone for on-device
/// push handling only.
abstract class PushServiceProvider {
  /// Called when a new device token is received from FCM/APNs.
  ///
  /// Use this to register the device with your backend.
  Future<void> onTokenReceived(String deviceToken);

  /// Called when a push notification event occurs.
  ///
  /// Use this to record analytics about push engagement.
  Future<void> onPushEvent(PushEvent event);
}
