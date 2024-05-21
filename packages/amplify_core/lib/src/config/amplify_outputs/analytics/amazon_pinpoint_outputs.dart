// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'amazon_pinpoint_outputs.g.dart';

/// {@template amplify_core.amplify_outputs.amazon_pinpoint}
/// The Amplify Gen 2 output for Amazon Pinpoint.
/// {@endtemplate}
@zAmplifyOutputsSerializable
class AmazonPinpointOutputs
    with AWSEquatable<AmazonPinpointOutputs>, AWSSerializable, AWSDebuggable {
  /// {@macro amplify_core.amplify_outputs.amazon_pinpoint}
  const AmazonPinpointOutputs({required this.awsRegion, required this.appId});

  factory AmazonPinpointOutputs.fromJson(Map<String, Object?> json) =>
      _$AmazonPinpointOutputsFromJson(json);

  /// The AWS region of Amazon Pinpoint resources.
  final String awsRegion;

  /// The Amazon Pinpoint App ID.
  final String appId;

  @override
  List<Object?> get props => [awsRegion, appId];

  @override
  String get runtimeTypeName => 'AmazonPinpointOutputs';

  @override
  Object? toJson() {
    return _$AmazonPinpointOutputsToJson(this);
  }
}
