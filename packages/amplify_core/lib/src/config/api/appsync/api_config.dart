//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:amplify_core/amplify_core.dart';

part 'api_config.g.dart';

@zAmplifySerializable
class AWSApiConfig with AWSEquatable<AWSApiConfig>, AWSSerializable {
  final EndpointType endpointType;
  final String endpoint;
  final String region;
  final APIAuthorizationMode authorizationType;
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
    APIAuthorizationMode? authorizationType,
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
