// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class PushNotificationMessageContent with AWSDebuggable {
  String? title;
  String? body;
  String? imageUrl;
  String? deeplinkUrl;
  String? goToUrl;
  FcmPlatformOptions? fcmOptions;
  ApnsPlatformOptions? apnsOptions;

  PushNotificationMessageContent({
    this.title,
    this.body,
    this.imageUrl,
    this.deeplinkUrl,
    this.goToUrl,
    this.fcmOptions,
    this.apnsOptions,
  });

  @override
  String toString() {
    return 'PushNotificationMessageContent{title: $title, body: $body, imageUrl: $imageUrl, deeplinkUrl: $deeplinkUrl, goToUrl: $goToUrl}';
  }

  @override
  String get runtimeTypeName => 'PushNotificationMessageContent';
}
