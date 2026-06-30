// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Push notification message representing both FCM and APNs payloads.
class PushNotificationMessage {
  /// Creates a push notification message.
  const PushNotificationMessage({
    this.title,
    this.body,
    this.imageUrl,
    this.deeplinkUrl,
    this.goToUrl,
    this.fcmOptions,
    this.apnsOptions,
    this.data = const {},
  });

  /// Parses a notification from the native platform payload.
  factory PushNotificationMessage.fromJson(Map<String, Object?> json) {
    final data =
        (json['data'] as Map<Object?, Object?>?)?.cast<String, Object?>() ??
        const {};
    switch (json) {
      case {'aps': final Map<Object?, Object?> aps}:
        final title = switch (aps) {
          {'alert': final String alert} => alert,
          {'alert': {'title': final String title}} => title,
          _ => null,
        };
        final body = switch (aps) {
          {'alert': {'body': final String body}} => body,
          _ => null,
        };
        final imageUrl = data['media-url'] as String?;
        final deeplinkUrl = switch (data) {
          {'pinpoint': {'deeplink': final String deeplink}} => deeplink,
          _ => null,
        };
        final apnsOptions = ApnsPlatformOptions(
          subtitle: switch (aps) {
            {'alert': {'subtitle': final String subtitle}} => subtitle,
            _ => null,
          },
        );
        return PushNotificationMessage(
          title: title,
          body: body,
          imageUrl: imageUrl,
          deeplinkUrl: deeplinkUrl,
          goToUrl: deeplinkUrl,
          apnsOptions: apnsOptions,
          data: data,
        );
      default:
        final title = json['title'] as String?;
        final body = json['body'] as String?;
        final imageUrl = json['imageUrl'] as String?;
        final (deeplinkUrl, goToUrl) = switch (json['action']) {
          {'deeplink': final String deeplink, 'url': final String url} => (
            deeplink,
            url,
          ),
          {'deeplink': final String deeplink} => (deeplink, null),
          {'url': final String url} => (null, url),
          _ => (null, null),
        };
        final fcmOptions = FcmPlatformOptions(
          channelId: switch (json['fcmOptions']) {
            {'channelId': final String channelId} => channelId,
            _ => null,
          },
          messageId: switch (json['fcmOptions']) {
            {'messageId': final String messageId} => messageId,
            _ => null,
          },
        );
        return PushNotificationMessage(
          title: title,
          body: body,
          imageUrl: imageUrl,
          deeplinkUrl: deeplinkUrl,
          goToUrl: goToUrl,
          fcmOptions: fcmOptions,
          data: data,
        );
    }
  }

  /// Notification title.
  final String? title;

  /// Notification body text.
  final String? body;

  /// URL to an image to display with the notification.
  final String? imageUrl;

  /// Deep link URL for in-app navigation.
  final String? deeplinkUrl;

  /// URL to open in a browser.
  final String? goToUrl;

  /// FCM-specific options.
  final FcmPlatformOptions? fcmOptions;

  /// APNs-specific options.
  final ApnsPlatformOptions? apnsOptions;

  /// Raw data payload from the notification.
  final Map<String, Object?> data;
}

/// FCM-specific notification options.
class FcmPlatformOptions {
  /// Creates FCM platform options.
  const FcmPlatformOptions({this.channelId, this.messageId});

  /// The notification channel ID.
  final String? channelId;

  /// Unique message ID.
  final String? messageId;
}

/// APNs-specific notification options.
class ApnsPlatformOptions {
  /// Creates APNs platform options.
  const ApnsPlatformOptions({this.subtitle});

  /// Notification subtitle.
  final String? subtitle;
}
