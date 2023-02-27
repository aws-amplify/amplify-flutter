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

  // TODO(Samaritan1011001): Find common and required fields
  PushNotificationMessage.fromJson(Map<Object?, Object?> json) {
    // TODO: Figure put what format is sentTime and how to parse it
    // final sentTimeInt = json['sentTime'] as int?;
    // sentTime =
    //     sentTimeInt == null ? null : DateTime.parse(sentTimeInt.toString());
    data = json['data'] as Map<Object?, Object?>;

    // TODO: standardize iOS json with Android, apnsOption can be the only difference
    final aps = json['aps'] as Map?;
    if (aps != null) {
      final alert = aps['alert'] as Map<String, dynamic>?;
      if (alert != null) {
        title = alert['title'] as String?;
        body = alert['body'] as String?;
        imageUrl = data['media-url'] as String?;
        deeplinkUrl = data['pinpoint'] != null
            ? (data['pinpoint'] as Map)['deeplink'] as String?
            : null;
        goToUrl = data['pinpoint'] != null
            ? (data['pinpoint'] as Map)['deeplink'] as String?
            : null;
        // TODO(Samaritan1011001): Find where the subtitle is in the dictionary
        // apnsOptions: ApnsPlatformOptions(
        //   subtitle: cast<String>(json['aps']['content-available'])
        // ),
      }
    } else {
      final fcmOptionsMap = json['fcmOptions'] as Map<Object?, Object?>?;
      title = json['title'] as String?;
      body = json['body'] as String?;
      imageUrl = json['imageUrl'] as String?;
      deeplinkUrl = json['deeplinkUrl'] as String?;
      goToUrl = json['goToUrl'] as String?;
      // TODO(Samaritan1011001): Find where the channelId is in the dictionary
      if (fcmOptionsMap != null) {
        fcmOptions = FcmPlatformOptions(
          channelId: fcmOptionsMap['channelId'] as String?,
          messageId: fcmOptionsMap['messageId'] as String?,
          senderId: fcmOptionsMap['sender'] as String?,
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
