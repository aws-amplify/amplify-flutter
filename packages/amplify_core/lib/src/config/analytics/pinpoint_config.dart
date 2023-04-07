// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';
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
@zAmplifySerializable
class PinpointPluginConfig
    with AWSEquatable<PinpointPluginConfig>, AWSSerializable
    implements AmplifyPluginConfig {
  /// {@macro amplify_core.pinpoint_plugin_config}
  const PinpointPluginConfig({
    required this.pinpointAnalytics,
    required this.pinpointTargeting,
    int autoFlushEventsInterval = 30,
  }) : _autoFlushEventsInterval = autoFlushEventsInterval;

  factory PinpointPluginConfig.fromJson(Map<String, Object?> json) =>
      _$PinpointPluginConfigFromJson(json);

  /// The plugin's configuration key.
  static const pluginKey = 'awsPinpointAnalyticsPlugin';

  final PinpointAnalytics pinpointAnalytics;
  final PinpointTargeting pinpointTargeting;

  final int _autoFlushEventsInterval;

  /// The duration in seconds between flushing analytics events to Pinpoint.
  @_DurationConverter()
  Duration get autoFlushEventsInterval =>
      Duration(seconds: _autoFlushEventsInterval);

  @override
  List<Object?> get props =>
      [pinpointAnalytics, pinpointTargeting, autoFlushEventsInterval];

  PinpointPluginConfig copyWith({
    PinpointAnalytics? pinpointAnalytics,
    PinpointTargeting? pinpointTargeting,
    int? autoFlushEventsInterval,
  }) {
    return PinpointPluginConfig(
      pinpointAnalytics: pinpointAnalytics ?? this.pinpointAnalytics,
      pinpointTargeting: pinpointTargeting ?? this.pinpointTargeting,
      autoFlushEventsInterval:
          autoFlushEventsInterval ?? _autoFlushEventsInterval,
    );
  }

  @override
  Map<String, Object?> toJson() => _$PinpointPluginConfigToJson(this);

  @override
  String get name => pluginKey;
}

@zAmplifySerializable
class PinpointAnalytics with AWSEquatable<PinpointAnalytics>, AWSSerializable {
  const PinpointAnalytics({
    required this.appId,
    required this.region,
  });

  factory PinpointAnalytics.fromJson(Map<String, Object?> json) =>
      _$PinpointAnalyticsFromJson(json);

  final String appId;
  final String region;

  @override
  List<Object?> get props => [appId, region];

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

@zAmplifySerializable
class PinpointTargeting with AWSEquatable<PinpointTargeting>, AWSSerializable {
  const PinpointTargeting({
    required this.region,
  });

  factory PinpointTargeting.fromJson(Map<String, Object?> json) =>
      _$PinpointTargetingFromJson(json);

  final String region;

  @override
  List<Object?> get props => [region];

  PinpointTargeting copyWith({
    String? region,
  }) {
    return PinpointTargeting(region: region ?? this.region);
  }

  @override
  Map<String, Object?> toJson() => _$PinpointTargetingToJson(this);
}

class _DurationConverter implements JsonConverter<Duration, int> {
  const _DurationConverter();

  @override
  Duration fromJson(int json) => Duration(seconds: json);

  @override
  int toJson(Duration object) => object.inSeconds;
}
