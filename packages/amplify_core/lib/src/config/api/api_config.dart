// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

export 'aws_api_config.dart' hide AWSApiPluginConfigFactory;

part 'api_config.g.dart';

/// {@template amplify_core.api_config}
/// The API category configuration.
/// {@endtemplate}
@zAmplifySerializable
class ApiConfig extends AmplifyPluginConfigMap {
  /// {@macro amplify_core.api_config}
  const ApiConfig({
    required Map<String, AmplifyPluginConfig> plugins,
  }) : super(plugins);

  factory ApiConfig.fromJson(Map<String, Object?> json) =>
      _$ApiConfigFromJson(json);

  /// The AWS API plugin configuration, if available.
  @override
  AWSApiPluginConfig? get awsPlugin =>
      plugins[AWSApiPluginConfig.pluginKey] as AWSApiPluginConfig?;

  @override
  ApiConfig copy() => ApiConfig(plugins: Map.of(plugins));

  @override
  Map<String, Object?> toJson() => _$ApiConfigToJson(this);
}
