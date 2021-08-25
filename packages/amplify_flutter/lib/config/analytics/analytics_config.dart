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

import 'package:amplify_flutter/config/analytics/analytics_plugin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'analytics_config.g.dart';

@JsonSerializable()
class AnalyticsConfig {
  final Map<String, AnalyticsPlugin> plugins;

  const AnalyticsConfig(this.plugins);

  AnalyticsPlugin? get awsPinpointAnalyticsPlugin {
    return plugins['awsPinpointAnalyticsPlugin'];
  }

  factory AnalyticsConfig.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AnalyticsConfigToJson(this);
}
