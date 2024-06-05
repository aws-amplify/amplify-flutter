// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/data/data_outputs.dart';
import 'package:amplify_core/src/config/amplify_outputs/rest_api/rest_api_outputs.dart';
import 'package:meta/meta.dart';

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

  @internal
  Map<String, DataOutputs>? toDataOutputs({
    AWSConfigMap<CognitoAppSyncConfig>? appSync,
  }) {
    final plugins = _getPlugins(EndpointType.graphQL);
    if (plugins == null) {
      return null;
    }
    return plugins.map((key, plugin) {
      final defaultAuthorizationType = plugin.authorizationType;
      final awsRegion = plugin.region;
      final url = plugin.endpoint;
      final allModes = (appSync?.all.values ?? []);
      final authorizationTypes = allModes
          .where((plugin) => plugin.apiUrl == url && plugin.region == awsRegion)
          .map((config) => config.authMode)
          .where((mode) => mode != defaultAuthorizationType)
          .toList();
      final data = DataOutputs(
        awsRegion: awsRegion,
        url: url,
        defaultAuthorizationType: defaultAuthorizationType,
        apiKey: plugin.apiKey,
        authorizationTypes: authorizationTypes,
      );
      return MapEntry(key, data);
    });
  }

  @internal
  Map<String, RestApiOutputs>? toRestApiOutputs() {
    final plugins = _getPlugins(EndpointType.rest);
    if (plugins == null) {
      return null;
    }
    return plugins.map((key, plugin) {
      final rest = RestApiOutputs(
        awsRegion: plugin.region,
        url: plugin.endpoint,
        authorizationType: plugin.authorizationType,
        apiKey: plugin.apiKey,
      );
      return MapEntry(key, rest);
    });
  }

  Map<String, AWSApiConfig>? _getPlugins(EndpointType endpointType) {
    final plugin = awsPlugin;
    if (plugin == null) {
      return null;
    }
    final entries =
        plugin.all.entries.where((p) => p.value.endpointType == endpointType);
    return Map<String, AWSApiConfig>.fromEntries(entries);
  }
}
