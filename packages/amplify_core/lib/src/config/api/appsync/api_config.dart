// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'api_config.g.dart';

@zAmplifySerializable
class AWSApiConfig with AWSEquatable<AWSApiConfig>, AWSSerializable {
  final EndpointType endpointType;
  final String endpoint;
  final String region;
  final APIAuthorizationType authorizationType;
  final String? apiKey;

  const AWSApiConfig({
    required this.endpointType,
    required this.endpoint,
    required this.region,
    required this.authorizationType,
    this.apiKey,
  });

  @override
  List<Object?> get props => [
        endpointType,
        endpoint,
        region,
        authorizationType,
        apiKey,
      ];

  factory AWSApiConfig.fromJson(Map<String, Object?> json) =>
      _$AWSApiConfigFromJson(json);

  AWSApiConfig copyWith({
    EndpointType? endpointType,
    String? endpoint,
    String? region,
    APIAuthorizationType? authorizationType,
    String? apiKey,
  }) {
    return AWSApiConfig(
      endpointType: endpointType ?? this.endpointType,
      endpoint: endpoint ?? this.endpoint,
      region: region ?? this.region,
      authorizationType: authorizationType ?? this.authorizationType,
      apiKey: apiKey ?? this.apiKey,
    );
  }

  @override
  Map<String, Object?> toJson() => _$AWSApiConfigToJson(this);
}
