// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_core.push.pinpoint_event_type}
/// Enum that indicates the different types recorded with Pinpoint
/// {@endtemplate}
enum PinpointEventType {
  notificationOpened,
  backgroundMessageReceived,
  foregroundMessageReceived,
}

extension PinpointEventTypeExtension on PinpointEventType {
  String get name {
    switch (this) {
      case PinpointEventType.notificationOpened:
        return 'opened_notification';
      case PinpointEventType.backgroundMessageReceived:
        return 'received_background';
      case PinpointEventType.foregroundMessageReceived:
        return 'received_foreground';
    }
  }
}
