// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/api_outputs.dart';

part 'rest_api_outputs.g.dart';

/// {@template amplify_core.amplify_outputs.rest_api_outputs}
/// An internal representation of Rest API.
///
/// This class should not be exposed publicly since the Gen 2 schema does not
/// support Rest API. This class exists to support Gen 1 configs that use Rest API.
/// {@endtemplate}
@zAmplifyOutputsSerializable
class RestApiOutputs
    with AWSEquatable<RestApiOutputs>, AWSSerializable, AWSDebuggable
    implements ApiOutputs {
  /// {@macro amplify_core.amplify_outputs.rest_api_outputs}
  const RestApiOutputs({
    required this.awsRegion,
    required this.url,
    this.apiKey,
    required this.authorizationType,
  });

  factory RestApiOutputs.fromJson(Map<String, Object?> json) =>
      _$RestApiOutputsFromJson(json);

  /// The AWS region of Amazon API Gateway resources.
  @override
  final String awsRegion;

  /// The Amazon API Gateway endpoint URL.
  @override
  final String url;

  /// The Amazon API Gateway API Key.
  @override
  final String? apiKey;

  /// The authorization type.
  @override
  final APIAuthorizationType authorizationType;

  /// The Rest Api type.
  @override
  ApiType get apiType => ApiType.rest;

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
