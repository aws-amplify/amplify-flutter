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

part 'pinpoint_analytics_config.g.dart';

@JsonSerializable()
class PinpointAnalyticsConfig {
  @JsonKey(name: 'appId')
  final String appId;

  @JsonKey(name: 'region')
  final String region;

  const PinpointAnalyticsConfig({required this.appId, required this.region});

  factory PinpointAnalyticsConfig.fromJson(Map<String, dynamic> json) =>
      _$PinpointAnalyticsConfigFromJson(json);

  Map<String, dynamic> toJson() => _$PinpointAnalyticsConfigToJson(this);
}
