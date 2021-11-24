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

import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_flutter/src/config/amplify_plugin_config.dart';
import 'package:amplify_flutter/src/config/amplify_plugin_registry.dart';
import 'package:amplify_flutter/src/config/config_map.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

import 'appsync/api_config.dart';

export 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart'
    show ApiAuthorizationType;
export 'appsync/api_config.dart';
export 'appsync/endpoint_type.dart';

/// {@template amplify_flutter.aws_api_plugin_config_factory}
/// Configuration factory for [AwsApiPluginConfig].
/// {@endtemplate}
@internal
class AwsApiPluginConfigFactory
    extends AmplifyPluginConfigFactory<AwsApiPluginConfig> {
  /// {@macro amplify_flutter.aws_api_plugin_config_factory}
  const AwsApiPluginConfigFactory();

  @override
  AwsApiPluginConfig build(Map<String, Object?> json) {
    return AwsApiPluginConfig.fromJson(json);
  }

  @override
  String get name => AwsApiPluginConfig.pluginKey;
}

/// {@template amplify_flutter.aws_api_plugin_config}
/// The AWS API plugin configuration.
/// {@endtemplate}
class AwsApiPluginConfig extends ConfigMap<AwsApiConfig>
    implements AmplifyPluginConfig {
  /// {@macro amplify_flutter.aws_api_plugin_config}
  const AwsApiPluginConfig(this.endpoints);

  /// All API endpoint configurations.
  final Map<String, AwsApiConfig> endpoints;

  factory AwsApiPluginConfig.fromJson(Map<String, Object?> json) {
    final configMap = AWSConfigMap.fromJson(
      json,
      (json) => AwsApiConfig.fromJson((json as Map).cast()),
    );
    return AwsApiPluginConfig(configMap.configs);
  }

  /// The plugin's configuration key.
  static const pluginKey = 'awsAPIPlugin';

  @override
  String get name => pluginKey;

  /// The default API configuration.
  @override
  AwsApiConfig? get default$ =>
      entries
          .firstWhereOrNull(
            (el) => el.value.authorizationType == ApiAuthorizationType.apiKey,
          )
          ?.value ??
      entries.firstOrNull?.value;

  @override
  Map<String, AwsApiConfig> get all => endpoints;
}
