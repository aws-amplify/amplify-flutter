// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.push.fcm_platform_options}
/// Holds Firebase Cloud Messaging (FCM) specific options for push notifications.
/// {@endtemplate}
class FcmPlatformOptions
    with AWSDebuggable, AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.push.fcm_platform_options}
  const FcmPlatformOptions({
    this.channelId,
    this.messageId,
  });

  /// The default channelId for Push Notifications. Currently only supporting default channels.
  final String? channelId;

  /// Unique id for the incomming message.
  final String? messageId;

  @override
  String get runtimeTypeName => 'FcmPlatformOptions';

  @override
  Map<String, Object?> toJson() => {
        'channelId': channelId,
        'messageId': messageId,
      };
}
