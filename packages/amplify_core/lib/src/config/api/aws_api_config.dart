// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

export 'appsync/api_config.dart';
export 'appsync/endpoint_type.dart';

/// {@template amplify_core.aws_api_plugin_config_factory}
/// Configuration factory for [AWSApiPluginConfig].
/// {@endtemplate}
@internal
class AWSApiPluginConfigFactory
    extends AmplifyPluginConfigFactory<AWSApiPluginConfig> {
  /// {@macro amplify_core.aws_api_plugin_config_factory}
  const AWSApiPluginConfigFactory();

  @override
  AWSApiPluginConfig build(Map<String, Object?> json) {
    return AWSApiPluginConfig.fromJson(json);
  }

  @override
  String get name => AWSApiPluginConfig.pluginKey;
}

/// {@template amplify_core.aws_api_plugin_config}
/// The AWS API plugin configuration.
/// {@endtemplate}
class AWSApiPluginConfig extends ConfigMap<AWSApiConfig>
    implements AmplifyPluginConfig {
  /// {@macro amplify_core.aws_api_plugin_config}
  const AWSApiPluginConfig(this.endpoints);

  /// All API endpoint configurations.
  final Map<String, AWSApiConfig> endpoints;

  factory AWSApiPluginConfig.fromJson(Map<String, Object?> json) {
    final configMap = AWSConfigMap.fromJson(
      json,
      (json) => AWSApiConfig.fromJson((json as Map).cast()),
    );
    return AWSApiPluginConfig(configMap.configs);
  }

  @override
  AWSApiPluginConfig copy() => AWSApiPluginConfig(Map.of(endpoints));

  /// The plugin's configuration key.
  static const pluginKey = 'awsAPIPlugin';

  @override
  String get name => pluginKey;

  /// The default API configuration.
  @override
  AWSApiConfig? get default$ =>
      entries
          .firstWhereOrNull(
            (el) => el.value.authorizationType == APIAuthorizationType.apiKey,
          )
          ?.value ??
      entries.firstOrNull?.value;

  @override
  Map<String, AWSApiConfig> get all => endpoints;
}
