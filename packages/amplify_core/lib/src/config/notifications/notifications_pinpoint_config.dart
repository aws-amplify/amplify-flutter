// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

part 'notifications_pinpoint_config.g.dart';

/// {@template amplify_core.notifications_pinpoint_plugin_config_factory}
/// Configuration factory for [NotificationsPinpointPluginConfig].
/// {@endtemplate}
@internal
class NotificationsPinpointPluginConfigFactory
    extends AmplifyPluginConfigFactory<NotificationsPinpointPluginConfig> {
  /// {@macro amplify_core.notifications_pinpoint_plugin_config_factory}
  const NotificationsPinpointPluginConfigFactory();

  @override
  NotificationsPinpointPluginConfig build(Map<String, Object?> json) {
    return NotificationsPinpointPluginConfig.fromJson(json);
  }

  @override
  String get name => NotificationsPinpointPluginConfig.pluginKey;
}

/// {@template amplify_core.notifications_pinpoint_plugin_config}
/// The AWS Pinpoint plugin configuration.
/// {@endtemplate}
@zAmplifySerializable
class NotificationsPinpointPluginConfig
    with AWSEquatable<NotificationsPinpointPluginConfig>, AWSSerializable
    implements AmplifyPluginConfig {
  /// {@macro amplify_core.notifications_pinpoint_plugin_config}
  const NotificationsPinpointPluginConfig({
    required this.appId,
    required this.region,
  });

  /// The plugin's configuration key.
  static const pluginKey = 'awsPinpointPushNotificationsPlugin';

  final String appId;
  final String region;

  @override
  List<Object?> get props => [appId, region];

  factory NotificationsPinpointPluginConfig.fromJson(
          Map<String, Object?> json) =>
      _$NotificationsPinpointPluginConfigFromJson(json);

  NotificationsPinpointPluginConfig copyWith({
    String? appId,
    String? region,
  }) {
    return NotificationsPinpointPluginConfig(
      appId: appId ?? this.appId,
      region: region ?? this.region,
    );
  }

  @override
  Map<String, Object?> toJson() =>
      _$NotificationsPinpointPluginConfigToJson(this);

  @override
  String get name => pluginKey;
}
