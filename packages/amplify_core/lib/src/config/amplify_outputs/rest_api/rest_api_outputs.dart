// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'rest_api_outputs.g.dart';

/// {@template amplify_core.amplify_outputs.rest_api_outputs}
/// An internal representation of Rest API.
///
/// This class should not be exposed publicly since the Gen 2 schema does not
/// support Rest API. This class exists to support Gen 1 configs that use Rest API.
/// {@endtemplate}
@zAmplifyOutputsSerializable
class RestApiOutputs
    with AWSEquatable<RestApiOutputs>, AWSSerializable, AWSDebuggable {
  /// {@macro amplify_core.amplify_outputs.rest_api_outputs}
  const RestApiOutputs({
    required this.awsRegion,
    required this.url,
    this.apiKey,
    required this.authorizationType,
  });

  factory RestApiOutputs.fromJson(Map<String, Object?> json) =>
      _$RestApiOutputsFromJson(json);

  /// The AWS region of Amazon AWS Gateway resources.
  final String awsRegion;

  /// The AWS Gateway endpoint URL.
  final String url;

  /// The AppSync API Key.
  final String? apiKey;

  /// The authorization type.
  final APIAuthorizationType authorizationType;

  @override
  List<Object?> get props => [
        awsRegion,
        url,
        apiKey,
        authorizationType,
      ];

  @override
  String get runtimeTypeName => 'RestApiOutputs';

  @override
  Object? toJson() {
    return _$RestApiOutputsToJson(this);
  }
}
