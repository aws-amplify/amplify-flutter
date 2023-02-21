// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.push.push_notification_content}
/// Holds options that are common to both APNS and FCM Push Notifications
/// {@endtemplate}
class PushNotificationMessageContent
    with AWSDebuggable, AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.push.push_notification_content}
  PushNotificationMessageContent({
    this.title,
    this.body,
    this.imageUrl,
    this.deeplinkUrl,
    this.goToUrl,
    this.fcmOptions,
    this.apnsOptions,
  });

  String? title;
  String? body;
  String? imageUrl;
  String? deeplinkUrl;
  String? goToUrl;
  FcmPlatformOptions? fcmOptions;
  ApnsPlatformOptions? apnsOptions;

  @override
  String get runtimeTypeName => 'PushNotificationMessageContent';

  @override
  Map<String, Object?> toJson() => {
        'title': title,
        'body': body,
        'imageUrl': imageUrl,
        'deeplinkUrl': deeplinkUrl,
        'goToUrl': goToUrl,
        'fcmOptions': fcmOptions,
        'apnsOptions': apnsOptions,
      };
}
