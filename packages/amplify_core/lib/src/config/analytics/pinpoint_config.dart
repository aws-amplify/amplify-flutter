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
import 'package:meta/meta.dart';

part 'pinpoint_config.g.dart';

/// {@template amplify_core.pinpoint_plugin_config_factory}
/// Configuration factory for [PinpointPluginConfig].
/// {@endtemplate}
@internal
class PinpointPluginConfigFactory
    extends AmplifyPluginConfigFactory<PinpointPluginConfig> {
  /// {@macro amplify_core.pinpoint_plugin_config_factory}
  const PinpointPluginConfigFactory();

  @override
  PinpointPluginConfig build(Map<String, Object?> json) {
    return PinpointPluginConfig.fromJson(json);
  }

  @override
  String get name => PinpointPluginConfig.pluginKey;
}

/// {@template amplify_core.pinpoint_plugin_config}
/// The AWS Pinpoint plugin configuration.
/// {@endtemplate}
@amplifySerializable
class PinpointPluginConfig
    with AWSEquatable<PinpointPluginConfig>, AWSSerializable
    implements AmplifyPluginConfig {
  /// {@macro amplify_core.pinpoint_plugin_config}
  const PinpointPluginConfig({
    required this.pinpointAnalytics,
    required this.pinpointTargeting,
  });

  /// The plugin's configuration key.
  static const pluginKey = 'awsPinpointAnalyticsPlugin';

  final PinpointAnalytics pinpointAnalytics;
  final PinpointTargeting pinpointTargeting;

  @override
  List<Object?> get props => [pinpointAnalytics, pinpointTargeting];

  factory PinpointPluginConfig.fromJson(Map<String, Object?> json) =>
      _$PinpointPluginConfigFromJson(json);

  PinpointPluginConfig copyWith({
    PinpointAnalytics? pinpointAnalytics,
    PinpointTargeting? pinpointTargeting,
  }) {
    return PinpointPluginConfig(
      pinpointAnalytics: pinpointAnalytics ?? this.pinpointAnalytics,
      pinpointTargeting: pinpointTargeting ?? this.pinpointTargeting,
    );
  }

  @override
  Map<String, Object?> toJson() => _$PinpointPluginConfigToJson(this);

  @override
  String get name => pluginKey;
}

@amplifySerializable
class PinpointAnalytics with AWSEquatable<PinpointAnalytics>, AWSSerializable {
  const PinpointAnalytics({
    required this.appId,
    required this.region,
  });

  final String appId;
  final String region;

  @override
  List<Object?> get props => [appId, region];

  factory PinpointAnalytics.fromJson(Map<String, Object?> json) =>
      _$PinpointAnalyticsFromJson(json);

  PinpointAnalytics copyWith({
    String? appId,
    String? region,
  }) {
    return PinpointAnalytics(
      appId: appId ?? this.appId,
      region: region ?? this.region,
    );
  }

  @override
  Map<String, Object?> toJson() => _$PinpointAnalyticsToJson(this);
}

@amplifySerializable
class PinpointTargeting with AWSEquatable<PinpointTargeting>, AWSSerializable {
  const PinpointTargeting({
    required this.region,
  });

  final String region;

  @override
  List<Object?> get props => [region];

  factory PinpointTargeting.fromJson(Map<String, Object?> json) =>
      _$PinpointTargetingFromJson(json);

  PinpointTargeting copyWith({
    String? region,
  }) {
    return PinpointTargeting(region: region ?? this.region);
  }

  @override
  Map<String, Object?> toJson() => _$PinpointTargetingToJson(this);
}
