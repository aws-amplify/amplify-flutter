// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class PushNotificationMessage with AWSDebuggable {
  String? messageId;
  String? senderId;
  DateTime? sentTime;

  PushNotificationMessageContent? content;
  Map<String, dynamic>? data;

  PushNotificationMessage({
    this.messageId,
    this.senderId,
    this.sentTime,
    this.content,
    this.data,
  });

  // TODO(Samaritan1011001): Find common and required fields
  PushNotificationMessage.fromJson(Map<String, dynamic> json) {
    messageId = cast<String>(json['messageId']);
    senderId = cast<String>(json['sender']);
    sentTime = cast<DateTime>(json['sentTime']);
    data = cast<Map<String, dynamic>>(json['data']);

    if (json.containsKey('aps')) {
      Map<String, dynamic>? alert =
          cast<Map<String, dynamic>>(json['aps']['alert']);

      if (alert != null) {
        content = PushNotificationMessageContent(
          title: cast<String>(alert['title']),
          body: cast<String>(alert['body']),
          imageUrl: data != null ? cast<String>(data!['media-url']) : null,
          deeplinkUrl: data != null && data!['pinpoint'] != null
              ? cast<String>(data!['pinpoint']['deeplink'])
              : null,
          goToUrl: data != null && data!['pinpoint'] != null
              ? cast<String>(data!['pinpoint']['deeplink'])
              : null,
          // TODO(Samaritan1011001): Find where the subtitle is in the dictionary
          // apnsOptions: ApnsPlatformOptions(
          //   subtitle: cast<String>(json['aps']['content-available'])
          // ),
        );
      }
    } else if (data != null) {
      print('data in -> $data');
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
        print('TypeCastError when trying to cast $x to $U!');
        return null;
      }
    }
  }

  @override
  String get runtimeTypeName => 'PushNotificationMessage';
}
