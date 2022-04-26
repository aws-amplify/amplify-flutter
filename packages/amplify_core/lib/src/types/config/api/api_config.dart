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

export 'aws_api_config.dart' hide AWSApiPluginConfigFactory;

import 'package:amplify_core/src/types/config/amplify_plugin_config.dart';
import 'package:amplify_core/src/types/config/amplify_plugin_registry.dart';
import 'package:amplify_core/src/types/config/api/api_config.dart';
import 'package:amplify_core/src/types/config/config_map.dart';
import 'package:amplify_core/src/util/serializable.dart';

part 'api_config.g.dart';

/// {@template amplify_flutter.api_config}
/// The API category configuration.
/// {@endtemplate}
@amplifySerializable
class ApiConfig extends AmplifyPluginConfigMap {
  /// {@macro amplify_flutter.api_config}
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
