// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.push.push_notification_message}
/// Holds certain identifiers of the Push Notification message along with it's [content] and [data]
/// {@endtemplate}
class PushNotificationMessage
    with AWSDebuggable, AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.push.push_notification_message}
  PushNotificationMessage({
    this.messageId,
    this.senderId,
    this.sentTime,
    this.content,
    this.data,
  });

  String? messageId;
  String? senderId;
  DateTime? sentTime;
  PushNotificationMessageContent? content;
  Map<Object?, Object?>? data;

  // TODO(Samaritan1011001): Find common and required fields
  PushNotificationMessage.fromJson(Map<Object?, Object?> json) {
    messageId = cast<String>(json['messageId']);
    senderId = cast<String>(json['sender']);
    sentTime = cast<DateTime>(json['sentTime']);
    data = cast<Map<Object?, Object?>?>(json['data']);

    if (json.containsKey('aps')) {
      Map<String, dynamic>? alert =
          cast<Map<String, dynamic>>((json['aps'] as Map)['alert']);

      if (alert != null) {
        content = PushNotificationMessageContent(
          title: cast<String>(alert['title']),
          body: cast<String>(alert['body']),
          imageUrl: data != null ? cast<String>(data!['media-url']) : null,
          deeplinkUrl: data != null && data!['pinpoint'] != null
              ? cast<String>((data!['pinpoint'] as Map)['deeplink'])
              : null,
          goToUrl: data != null && data!['pinpoint'] != null
              ? cast<String>((data!['pinpoint'] as Map)['deeplink'])
              : null,
          // TODO(Samaritan1011001): Find where the subtitle is in the dictionary
          // apnsOptions: ApnsPlatformOptions(
          //   subtitle: cast<String>(json['aps']['content-available'])
          // ),
        );
      }
    } else if (data != null) {
      content = PushNotificationMessageContent(
        title: cast<String>(data!['pinpoint.notification.title']),
        body: cast<String>(data!['pinpoint.notification.body']),
        imageUrl: cast<String>(data!['pinpoint.notification.imageUrl']),
        deeplinkUrl: cast<String>(data!['pinpoint.deeplink']),
        goToUrl: cast<String>(data!['pinpoint.url']),
        // TODO(Samaritan1011001): Find where the channelId is in the dictionary
        // fcmOptions: FcmPlatformOptions(
        //   channelId:
        //       cast<String>(data!['pinpoint.notification.imageSmallIconUrl']),
        // ),
      );
    }
  }

  U? cast<U>(dynamic x) {
    if (x == null) return null;
    if (x is U) {
      return x;
    } else {
      try {
        return (x as U);
      } on TypeError catch (_) {
        safePrint('TypeCastError when trying to cast $x to $U!');
        return null;
      }
    }
  }

  @override
  String get runtimeTypeName => 'PushNotificationMessage';

  @override
  Map<String, Object?> toJson() => {
        'messageId': messageId,
        'senderId': senderId,
        'sentTime': sentTime,
        'content': content,
        'data': data,
      };
}
