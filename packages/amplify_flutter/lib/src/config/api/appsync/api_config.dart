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

import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:json_annotation/json_annotation.dart';

import 'endpoint_type.dart';

part 'api_config.g.dart';

@amplifySerializable
class AwsApiConfig with AWSEquatable<AwsApiConfig>, AWSSerializable {
  final EndpointType endpointType;
  final String endpoint;
  final String region;
  final ApiAuthorizationType authorizationType;
  final String? apiKey;

  const AwsApiConfig({
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

  factory AwsApiConfig.fromJson(Map<String, Object?> json) =>
      _$AwsApiConfigFromJson(json);

  @override
  Map<String, Object?> toJson() => _$AwsApiConfigToJson(this);
}
