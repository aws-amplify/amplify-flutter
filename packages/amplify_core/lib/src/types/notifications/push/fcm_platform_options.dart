// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.push.fcm_platform_options}
/// Holds FCM specific push notification options
/// {@endtemplate}
class FcmPlatformOptions
    with AWSDebuggable, AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.push.fcm_platform_options}
  FcmPlatformOptions({
    this.channelId,
    this.messageId,
    this.senderId,
    this.sentTime,
  });

  String? channelId;
  String? messageId;
  String? senderId;
  DateTime? sentTime;

  @override
  String get runtimeTypeName => 'FcmPlatformOptions';

  @override
  Map<String, Object?> toJson() => {
        'channelId': channelId,
      };
}
