// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/notifications/amazon_pinpoint_channel.dart';

part 'notifications_outputs.g.dart';

/// {@template amplify_core.amplify_outputs.notifications_outputs}
/// The Amplify Gen 2 outputs for Notifications category.
/// {@endtemplate}
@zAmplifyOutputsSerializable
class NotificationsOutputs
    with AWSEquatable<NotificationsOutputs>, AWSSerializable, AWSDebuggable {
  /// {@macro amplify_core.amplify_outputs.notifications_outputs}
  const NotificationsOutputs({
    required this.awsRegion,
    required this.amazonPinpointAppId,
    required this.channels,
  });

  factory NotificationsOutputs.fromJson(Map<String, Object?> json) =>
      _$NotificationsOutputsFromJson(json);

  /// The AWS region of Amazon Pinpoint resources.
  final String awsRegion;

  /// Amazon Pinpoint App ID.
  final String amazonPinpointAppId;

  /// {@macro amplify_core.amplify_outputs.amazon_pinpoint_channel}
  final List<AmazonPinpointChannel> channels;

  @override
  List<Object?> get props => [awsRegion, amazonPinpointAppId, channels];

  @override
  String get runtimeTypeName => 'NotificationsOutputs';

  @override
  Object? toJson() {
    return _$NotificationsOutputsToJson(this);
  }
}
