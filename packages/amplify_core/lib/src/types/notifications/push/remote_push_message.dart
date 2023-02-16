// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

class RemotePushMessage {
  String? messageId;
  String? senderId;
  DateTime? sentTime;
  String? collapseKey;

  PushNotificationMessageContent? content;
  Map<String, dynamic>? data;
  Map<String, dynamic>? metadata;

  RemotePushMessage({
    this.messageId,
    this.senderId,
    this.sentTime,
    this.collapseKey,
    this.content,
    this.data,
    this.metadata,
  });

  // TODO: Find common and required fields
  RemotePushMessage.fromJson(Map<String, dynamic> json) {
    messageId = cast<String>(json['messageId']);
    senderId = cast<String>(json['sender']);
    sentTime = cast<DateTime>(json['sentTime']);
    collapseKey = cast<String>(json['collapseKey']);
    data = cast<Map<String, dynamic>>(json['data']);

    if (json.containsKey('aps')) {
      Map<String, dynamic>? alert =
          cast<Map<String, dynamic>>(json['aps']['alert']);

      if (alert != null) {
        content = PushNotificationMessageContent<ApnsPlatformOptions>(
          title: cast<String>(alert['title']),
          body: cast<String>(alert['body']),
          imageUrl: data != null ? cast<String>(data!['media-url']) : null,
          deeplinkUrl: data != null && data!['pinpoint'] != null
              ? cast<String>(data!['pinpoint']['deeplink'])
              : null,
          goToUrl: data != null && data!['pinpoint'] != null
              ? cast<String>(data!['pinpoint']['deeplink'])
              : null,
          platformOptions: ApnsPlatformOptions(
            contentAvailable: cast<int>(json['aps']['content-available']),
            mutableContent: cast<int>(json['aps']['mutable-content"']),
          ),
        );
      }
    } else if (data != null) {
      print('data in -> $data');
      content = PushNotificationMessageContent<FcmPlatformOptions>(
        title: cast<String>(data!['pinpoint.notification.title']),
        body: cast<String>(data!['pinpoint.notification.body']),
        imageUrl: cast<String>(data!['pinpoint.notification.imageUrl']),
        deeplinkUrl: cast<String>(data!['pinpoint.deeplink']),
        goToUrl: cast<String>(data!['pinpoint.url']),
        platformOptions: FcmPlatformOptions(
            smallIcon:
                cast<String>(data!['pinpoint.notification.imageSmallIconUrl']),
            icon: cast<String>(data!['pinpoint.notification.imageIconUrl'])),
      );
    }

    metadata = cast<Map<String, Object>>(json['metadata']);
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
  String toString() {
    return 'RemotePushMessage{messageId: $messageId, senderId: $senderId, sentTime: $sentTime, collapseKey: $collapseKey, content: $content, data: $data, metadata: $metadata}';
  }
}

class PushNotificationMessageContent<T> {
  String? title;
  String? body;
  String? imageUrl;
  String? deeplinkUrl;
  String? goToUrl;
  T? platformOptions;

  PushNotificationMessageContent({
    this.title,
    this.body,
    this.imageUrl,
    this.deeplinkUrl,
    this.goToUrl,
    this.platformOptions,
  });

  @override
  String toString() {
    return 'PushNotificationMessageContent{title: $title, body: $body, imageUrl: $imageUrl, deeplinkUrl: $deeplinkUrl, goToUrl: $goToUrl, platformOptions: $platformOptions}';
  }
}

class FcmPlatformOptions {
  String? channelId;
  String? color;
  String? smallIcon;
  String? icon;
  String? tag;
  String? sound;
  FcmPlatformOptions({
    this.channelId,
    this.color,
    this.smallIcon,
    this.icon,
    this.sound,
    this.tag,
  });

  @override
  String toString() {
    return 'FcmPlatformOptions{channelId: $channelId, color: $color, smallIcon: $smallIcon, icon: $icon, tag: $tag, sound: $sound}';
  }
}

class ApnsPlatformOptions {
  String? subtitle;
  int? contentAvailable;
  int? mutableContent;
  String? category;
  String? threadId;

  ApnsPlatformOptions({
    this.subtitle,
    this.contentAvailable,
    this.mutableContent,
    this.category,
    this.threadId,
  });

  @override
  String toString() {
    return 'ApnsPlatformOptions{subtitle: $subtitle, contentAvailable: $contentAvailable, mutableContent: $mutableContent, category: $category, threadId: $threadId}';
  }
}
