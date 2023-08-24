// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

export 'cloudwatch_logging_config.dart' hide CloudWatchPluginConfigFactory;

part 'logging_config.g.dart';

/// {@template amplify_core.logging_config}
/// The Logging configuration.
/// {@endtemplate}
@zAmplifySerializable
class LoggingConfig extends AmplifyPluginConfigMap {
  /// {@macro amplify_core.logging_config}
  const LoggingConfig({
    required Map<String, AmplifyPluginConfig> plugins,
  }) : super(plugins);

  factory LoggingConfig.fromJson(Map<String, Object?> json) =>
      _$LoggingConfigFromJson(json);

  /// The AWS CloudWatch plugin configuration, if available.
  @override
  CloudWatchPluginConfig? get awsPlugin =>
      plugins[CloudWatchPluginConfig.pluginKey] as CloudWatchPluginConfig?;

  @override
  LoggingConfig copy() => LoggingConfig(plugins: Map.of(plugins));

  @override
  Map<String, Object?> toJson() => _$LoggingConfigToJson(this);
}
