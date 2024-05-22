// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';

/// {@template amplify_core.amplify_outputs.amazon_pinpoint_channel}
/// Supported channels for Amazon Pinpoint.
/// {@endtemplate}
enum AmazonPinpointChannel {
  @JsonValue('APNS')
  apns,

  @JsonValue('EMAIL')
  email,

  @JsonValue('FCM')
  fcm,

  @JsonValue('IN_APP_MESSAGING')
  inAppMessaging,

  @JsonValue('SMS')
  sms,
}
