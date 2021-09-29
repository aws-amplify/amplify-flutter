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

import 'package:amplify_flutter/src/config/analytics/analytics_plugin.dart';

part 'analytics_config.g.dart';

/// A Dart representation of an Amplify Analytics configuration
class AnalyticsConfig {
  /// Key value pairs for Analytics plugins
  final Map<String, AnalyticsPlugin> plugins;

  // ignore: public_member_api_docs
  const AnalyticsConfig(this.plugins);

  /// A helper to get the default key name for generated Analytics plugins
  AnalyticsPlugin? get awsPinpointAnalyticsPlugin {
    return plugins['awsPinpointAnalyticsPlugin'];
  }

  // ignore: public_member_api_docs
  factory AnalyticsConfig.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsConfigFromJson(json);

  // ignore: public_member_api_docs
  Map<String, dynamic> toJson() => _$AnalyticsConfigToJson(this);
}
