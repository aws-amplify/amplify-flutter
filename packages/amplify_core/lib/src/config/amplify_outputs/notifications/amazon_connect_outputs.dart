// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'amazon_connect_outputs.g.dart';

/// {@template amplify_core.amplify_outputs.amazon_connect_outputs}
/// The Amplify Gen 2 output for Amazon Connect.
/// {@endtemplate}
@zAmplifyOutputsSerializable
class AmazonConnectOutputs
    with AWSEquatable<AmazonConnectOutputs>, AWSSerializable, AWSDebuggable {
  /// {@macro amplify_core.amplify_outputs.amazon_connect_outputs}
  const AmazonConnectOutputs({required this.awsRegion, required this.endpoint});

  factory AmazonConnectOutputs.fromJson(Map<String, Object?> json) =>
      _$AmazonConnectOutputsFromJson(json);

  /// The AWS region of Amazon Connect resources.
  final String awsRegion;

  /// The endpoint of the Amazon Connect notifications backend API.
  final String endpoint;

  @override
  List<Object?> get props => [awsRegion, endpoint];

  @override
  String get runtimeTypeName => 'AmazonConnectOutputs';

  @override
  Object? toJson() {
    return _$AmazonConnectOutputsToJson(this);
  }
}
