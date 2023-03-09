// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

enum PushNotificationEventType {
  notificaitonReceived,
  notificationOpened,
  tokenReceived
}

enum AWSPinpointMessageEvent {
  notificationOpened,
  backgroundMessageReceived,
  foregroundMessageReceived,
}

extension AWSPinpointMessageEventExtension on AWSPinpointMessageEvent {
  String get name {
    switch (this) {
      case AWSPinpointMessageEvent.notificationOpened:
        return 'opened_notification';
      case AWSPinpointMessageEvent.backgroundMessageReceived:
        return 'received_background';
      case AWSPinpointMessageEvent.foregroundMessageReceived:
        return 'received_foreground';
    }
  }
}

enum AWSPinpointMessageEventSource { campaign, journey }

extension AWSPinpointMessageEventSourceExtension
    on AWSPinpointMessageEventSource {
  String get name {
    switch (this) {
      case AWSPinpointMessageEventSource.campaign:
        return '_campaign';
      case AWSPinpointMessageEventSource.journey:
        return '_journey';
    }
  }
}
