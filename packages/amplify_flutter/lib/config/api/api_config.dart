/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:json_annotation/json_annotation.dart';

part 'api_config.g.dart';

@JsonSerializable()
class ApiConfig {
  final Map<String, Map<String, APIPlugin>> plugins;

  const ApiConfig(this.plugins);

  Map<String, APIPlugin>? get awsAPIPlugin {
    return plugins['awsAPIPlugin'];
  }

  factory ApiConfig.fromJson(Map<String, dynamic> json) =>
      _$ApiConfigFromJson(json);

  Map<String, dynamic> toJson() => _$ApiConfigToJson(this);
}

@JsonSerializable()
class APIPlugin {
  @JsonKey(name: 'endpointType')
  final String endpointType;

  @JsonKey(name: 'endpoint')
  final String endpoint;

  @JsonKey(name: 'region')
  final String region;

  @JsonKey(name: 'authorizationType')
  final String authorizationType;

  @JsonKey(name: 'apiKey')
  final String? apiKey;

  const APIPlugin(
      {required this.endpointType,
      required this.endpoint,
      required this.region,
      required this.authorizationType,
      this.apiKey});

  factory APIPlugin.fromJson(Map<String, dynamic> json) =>
      _$APIPluginFromJson(json);

  Map<String, dynamic> toJson() => _$APIPluginToJson(this);
}
