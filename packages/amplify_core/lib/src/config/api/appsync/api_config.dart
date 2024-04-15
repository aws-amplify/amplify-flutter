// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'api_config.g.dart';

@zAmplifySerializable
class AWSApiConfig with AWSEquatable<AWSApiConfig>, AWSSerializable {
  const AWSApiConfig({
    required this.endpointType,
    required this.endpoint,
    required this.region,
    required this.authorizationType,
    this.apiKey,
    this.DangerouslyConnectToHTTPEndpointForTesting,
  });

  factory AWSApiConfig.fromJson(Map<String, Object?> json) =>
      _$AWSApiConfigFromJson(json);
  final EndpointType endpointType;
  final String endpoint;
  final String region;
  final APIAuthorizationType authorizationType;
  final String? apiKey;
  final bool? DangerouslyConnectToHTTPEndpointForTesting;

  bool get allowHttp => DangerouslyConnectToHTTPEndpointForTesting ?? false;

  @override
  List<Object?> get props => [
        endpointType,
        endpoint,
        region,
        authorizationType,
        apiKey,
        DangerouslyConnectToHTTPEndpointForTesting,
      ];

  AWSApiConfig copyWith({
    EndpointType? endpointType,
    String? endpoint,
    String? region,
    APIAuthorizationType? authorizationType,
    String? apiKey,
    bool? dangerouslyConnectToHTTPEndpointForTesting,
  }) {
    return AWSApiConfig(
      endpointType: endpointType ?? this.endpointType,
      endpoint: endpoint ?? this.endpoint,
      region: region ?? this.region,
      authorizationType: authorizationType ?? this.authorizationType,
      apiKey: apiKey ?? this.apiKey,
      DangerouslyConnectToHTTPEndpointForTesting:
          dangerouslyConnectToHTTPEndpointForTesting ??
              DangerouslyConnectToHTTPEndpointForTesting,
    );
  }

  @override
  Map<String, Object?> toJson() => _$AWSApiConfigToJson(this);
}
