// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_core.push.pinpoint_event_type}
/// The different push notification events recorded with Pinpoint.
/// {@endtemplate}
enum PinpointEventType {
  notificationOpened('opened_notification'),
  backgroundMessageReceived('received_background'),
  foregroundMessageReceived('received_foreground');

  const PinpointEventType(this.name);

  final String name;
}
