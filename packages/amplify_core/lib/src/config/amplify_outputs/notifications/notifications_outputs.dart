// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/notifications/amazon_connect_outputs.dart';
import 'package:amplify_core/src/config/amplify_outputs/notifications/amazon_pinpoint_channel.dart';

part 'notifications_outputs.g.dart';

/// {@template amplify_core.amplify_outputs.notifications_outputs}
/// The Amplify Gen 2 outputs for Notifications category.
///
/// Notifications may be present without Pinpoint being configured — for
/// example when only Amazon Connect is provisioned.
/// {@endtemplate}
@zAmplifyOutputsSerializable
class NotificationsOutputs
    with AWSEquatable<NotificationsOutputs>, AWSSerializable, AWSDebuggable {
  /// {@macro amplify_core.amplify_outputs.notifications_outputs}
  const NotificationsOutputs({
    this.awsRegion,
    this.amazonPinpointAppId,
    this.channels = const [],
    this.amazonConnect,
  });

  factory NotificationsOutputs.fromJson(Map<String, Object?> json) =>
      _$NotificationsOutputsFromJson(json);

  /// The AWS region of Amazon Pinpoint resources.
  ///
  /// May be `null` when Pinpoint is not configured — for example when only
  /// Amazon Connect is provisioned.
  final String? awsRegion;

  /// Amazon Pinpoint App ID.
  ///
  /// May be `null` when Pinpoint is not configured — for example when only
  /// Amazon Connect is provisioned.
  final String? amazonPinpointAppId;

  /// {@macro amplify_core.amplify_outputs.amazon_pinpoint_channel}
  ///
  /// Defaults to an empty list when Pinpoint is not configured — for example
  /// when only Amazon Connect is provisioned.
  final List<AmazonPinpointChannel> channels;

  /// {@macro amplify_core.amplify_outputs.amazon_connect_outputs}
  final AmazonConnectOutputs? amazonConnect;

  @override
  List<Object?> get props => [
    awsRegion,
    amazonPinpointAppId,
    channels,
    amazonConnect,
  ];

  @override
  String get runtimeTypeName => 'NotificationsOutputs';

  @override
  Object? toJson() {
    return _$NotificationsOutputsToJson(this);
  }
}
