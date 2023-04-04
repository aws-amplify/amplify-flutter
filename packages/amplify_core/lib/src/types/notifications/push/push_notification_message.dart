// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.push.push_notification_message}
/// The Push Notification message that represents both the FCM and APNS Native notification types.
/// {@endtemplate}
class PushNotificationMessage
    with AWSDebuggable, AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.push.push_notification_message}
  PushNotificationMessage({
    this.title,
    this.body,
    this.imageUrl,
    this.deeplinkUrl,
    this.goToUrl,
    this.fcmOptions,
    this.apnsOptions,
    this.data = const {},
  });

  String? title;
  String? body;
  String? imageUrl;
  String? deeplinkUrl;
  String? goToUrl;
  FcmPlatformOptions? fcmOptions;
  ApnsPlatformOptions? apnsOptions;
  Map<Object?, Object?> data = {};

  PushNotificationMessage.fromJson(Map<Object?, Object?> json) {
    data = (json['data'] as Map<Object?, Object?>?) ?? {};

    final aps = json['aps'] as Map<Object?, Object?>?;
    if (aps != null) {
      final alert = aps['alert'] as Map<Object?, Object?>?;
      if (alert != null) {
        title = alert['title'] as String?;
        body = alert['body'] as String?;
        imageUrl = data['media-url'] as String?;

        if (data['pinpoint'] != null) {
          final pinpointData = data['pinpoint'] as Map<Object?, Object?>;
          deeplinkUrl = pinpointData['deeplink'] as String?;
          goToUrl = deeplinkUrl;
        }
        apnsOptions = ApnsPlatformOptions(subtitle: aps['subtitle'] as String?);
      }
    } else {
      final action = json['action'] as Map<Object?, Object?>?;
      title = json['title'] as String?;
      body = json['body'] as String?;
      imageUrl = json['imageUrl'] as String?;
      if (action != null) {
        deeplinkUrl = action['deeplink'] as String?;
        goToUrl = action['url'] as String?;
      }
      final fcmOptionsMap = json['fcmOptions'] as Map<Object?, Object?>?;
      if (fcmOptionsMap != null) {
        fcmOptions = FcmPlatformOptions(
          channelId: fcmOptionsMap['channelId'] as String?,
          messageId: fcmOptionsMap['messageId'] as String?,
        );
      }
    }
  }

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
