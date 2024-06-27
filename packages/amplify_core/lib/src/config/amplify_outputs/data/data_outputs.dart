// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'data_outputs.g.dart';

/// {@template amplify_core.amplify_outputs.data_outputs}
/// The Amplify Gen 2 outputs for API GraphQL category.
/// {@endtemplate}
@zAmplifyOutputsSerializable
class DataOutputs
    with AWSEquatable<DataOutputs>, AWSSerializable, AWSDebuggable {
  /// {@macro amplify_core.amplify_outputs.data_outputs}
  const DataOutputs({
    required this.awsRegion,
    required this.url,
    this.apiKey,
    required this.defaultAuthorizationType,
    required this.authorizationTypes,
  });

  factory DataOutputs.fromJson(Map<String, Object?> json) =>
      _$DataOutputsFromJson(json);

  /// The AWS region of Amazon AppSync resources.
  final String awsRegion;

  /// The AppSync endpoint URL.
  final String url;

  /// The AppSync API Key.
  final String? apiKey;

  /// The default authorization type for AWS AppSync.
  final APIAuthorizationType defaultAuthorizationType;

  /// List of supported authorization types for AWS AppSync.
  final List<APIAuthorizationType> authorizationTypes;

  @override
  List<Object?> get props => [
        awsRegion,
        url,
        apiKey,
        defaultAuthorizationType,
        authorizationTypes,
      ];

  @override
  String get runtimeTypeName => 'DataOutputs';

  @override
  Object? toJson() {
    return _$DataOutputsToJson(this);
  }
}
