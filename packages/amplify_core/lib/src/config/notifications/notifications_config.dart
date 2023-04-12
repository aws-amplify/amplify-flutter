// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

export 'notifications_pinpoint_config.dart'
    hide NotificationsPinpointPluginConfigFactory;

part 'notifications_config.g.dart';

/// {@template amplify_core.notifications_config}
/// The Notifications category configuration.
/// {@endtemplate}
@zAmplifySerializable
class NotificationsConfig extends AmplifyPluginConfigMap {
  /// {@macro amplify_core.notifications_config}
  const NotificationsConfig({
    required Map<String, AmplifyPluginConfig> plugins,
  }) : super(plugins);

  factory NotificationsConfig.fromJson(Map<String, Object?> json) =>
      _$NotificationsConfigFromJson(json);

  /// The AWS Pinpoint plugin configuration, if available.
  @override
  NotificationsPinpointPluginConfig? get awsPlugin =>
      plugins[NotificationsPinpointPluginConfig.pluginKey]
          as NotificationsPinpointPluginConfig?;

  @override
  NotificationsConfig copy() => NotificationsConfig(plugins: Map.of(plugins));

  @override
  Map<String, Object?> toJson() => _$NotificationsConfigToJson(this);
}
