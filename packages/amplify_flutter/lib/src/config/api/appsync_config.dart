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
    show APIAuthorizationType;
export 'appsync/api_config.dart';
export 'appsync/endpoint_type.dart';

/// {@template amplify_common.appsync_plugin_config_factory}
/// Configuration factory for [AppSyncPluginConfig].
/// {@endtemplate}
@internal
class AppSyncPluginConfigFactory
    extends AmplifyPluginConfigFactory<AppSyncPluginConfig> {
  /// {@macro amplify_common.appsync_plugin_config_factory}
  const AppSyncPluginConfigFactory();

  @override
  AppSyncPluginConfig build(Map<String, Object?> json) {
    return AppSyncPluginConfig.fromJson(json);
  }

  @override
  String get name => AppSyncPluginConfig.pluginKey;
}

/// {@template amplify_common.config.appsync_plugin_config}
/// The AWS AppSync plugin configuration.
/// {@endtemplate}
class AppSyncPluginConfig extends ConfigMap<AppSyncApiConfig>
    implements AmplifyPluginConfig {
  /// {@macro amplify_common.config.appsync_plugin_config}
  const AppSyncPluginConfig(this.endpoints);

  /// All API endpoint configurations.
  final Map<String, AppSyncApiConfig> endpoints;

  factory AppSyncPluginConfig.fromJson(Map<String, Object?> json) {
    final configMap = AWSConfigMap.fromJson(
      json,
      (json) => AppSyncApiConfig.fromJson((json as Map).cast()),
    );
    return AppSyncPluginConfig(configMap.configs);
  }

  /// The plugin's configuration key.
  static const pluginKey = 'awsAPIPlugin';

  @override
  String get name => pluginKey;

  /// The default API configuration.
  @override
  AppSyncApiConfig? get default$ =>
      entries
          .firstWhereOrNull(
            (el) => el.value.authorizationType == APIAuthorizationType.apiKey,
          )
          ?.value ??
      entries.firstOrNull?.value;

  @override
  Map<String, AppSyncApiConfig> get all => endpoints;
}
