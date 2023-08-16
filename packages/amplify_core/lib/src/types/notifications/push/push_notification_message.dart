// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.push.push_notification_message}
/// The Push Notification message that represents both the FCM and APNS Native notification types.
/// {@endtemplate}
class PushNotificationMessage
    with AWSDebuggable, AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.push.push_notification_message}
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

  factory PushNotificationMessage.fromJson(Map<String, Object?> json) {
    final data =
        (json['data'] as Map<Object?, Object?>?)?.cast<String, Object?>() ??
            const {};
    switch (json) {
      // `aps` dictionary references:
      // - https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/generating_a_remote_notification
      // - https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CreatingtheNotificationPayload.html
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
              url
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

  final String? title;
  final String? body;
  final String? imageUrl;
  final String? deeplinkUrl;
  final String? goToUrl;
  final FcmPlatformOptions? fcmOptions;
  final ApnsPlatformOptions? apnsOptions;
  final Map<String, Object?> data;

  @override
  String get runtimeTypeName => 'PushNotificationMessage';

  @override
  Map<String, Object?> toJson() => {
        'title': title,
        'body': body,
        'imageUrl': imageUrl,
        'deeplinkUrl': deeplinkUrl,
        'goToUrl': goToUrl,
        'fcmOptions': fcmOptions,
        'apnsOptions': apnsOptions,
        'data': data,
      };
}
