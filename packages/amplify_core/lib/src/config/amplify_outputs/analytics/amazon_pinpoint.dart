// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'amazon_pinpoint.g.dart';

/// {@template amplify_core.amplify_outputs.amazon_pinpoint}
/// The Amazon Pinpoint outputs used by Analytics category plugin
/// to communicate with backend services.
/// {@endtemplate}
@zAmplifyOutputsSerializable
class AmazonPinpoint
    with AWSEquatable<AmazonPinpoint>, AWSSerializable, AWSDebuggable {
  /// {@macro amplify_core.amplify_outputs.amazon_pinpoint}
  const AmazonPinpoint({required this.awsRegion, required this.appId});

  factory AmazonPinpoint.fromJson(Map<String, Object?> json) =>
      _$AmazonPinpointFromJson(json);

  /// The AWS region of Amazon Pinpoint resources.
  final String awsRegion;

  /// The Amazon Pinpoint App ID.
  final String appId;

  @override
  List<Object?> get props => [awsRegion, appId];

  @override
  String get runtimeTypeName => 'AmazonPinpoint';

  @override
  Object? toJson() {
    return _$AmazonPinpointToJson(this);
  }
}
