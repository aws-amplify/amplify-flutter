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
import 'package:amplify_core/src/types/config/amplify_plugin_config.dart';
import 'package:amplify_core/src/types/config/amplify_plugin_registry.dart';
import 'package:amplify_core/src/types/config/api/api_config.dart';
import 'package:amplify_core/src/types/config/config_map.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

export 'appsync/api_config.dart';
export 'appsync/endpoint_type.dart';

/// {@template amplify_flutter.aws_api_plugin_config_factory}
/// Configuration factory for [AWSApiPluginConfig].
/// {@endtemplate}
@internal
class AWSApiPluginConfigFactory
    extends AmplifyPluginConfigFactory<AWSApiPluginConfig> {
  /// {@macro amplify_flutter.aws_api_plugin_config_factory}
  const AWSApiPluginConfigFactory();

  @override
  AWSApiPluginConfig build(Map<String, Object?> json) {
    return AWSApiPluginConfig.fromJson(json);
  }

  @override
  String get name => AWSApiPluginConfig.pluginKey;
}

/// {@template amplify_flutter.aws_api_plugin_config}
/// The AWS API plugin configuration.
/// {@endtemplate}
class AWSApiPluginConfig extends ConfigMap<AWSApiConfig>
    implements AmplifyPluginConfig {
  /// {@macro amplify_flutter.aws_api_plugin_config}
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
