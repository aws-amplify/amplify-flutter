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

export 'pinpoint_config.dart' hide PinpointPluginConfigFactory;

part 'analytics_config.g.dart';

/// {@template amplify_core.analytics_config}
/// The Analytics category configuration.
/// {@endtemplate}
@zAmplifySerializable
class AnalyticsConfig extends AmplifyPluginConfigMap {
  /// {@macro amplify_core.analytics_config}
  const AnalyticsConfig({
    required Map<String, AmplifyPluginConfig> plugins,
  }) : super(plugins);

  factory AnalyticsConfig.fromJson(Map<String, Object?> json) =>
      _$AnalyticsConfigFromJson(json);

  /// The AWS Pinpoint plugin configuration, if available.
  @override
  PinpointPluginConfig? get awsPlugin =>
      plugins[PinpointPluginConfig.pluginKey] as PinpointPluginConfig?;

  @override
  AnalyticsConfig copy() => AnalyticsConfig(plugins: Map.of(plugins));

  @override
  Map<String, Object?> toJson() => _$AnalyticsConfigToJson(this);
}
