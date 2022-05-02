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

import 'package:amplify_core/src/types/config/amplify_plugin_config.dart';
import 'package:amplify_core/src/types/config/amplify_plugin_registry.dart';
import 'package:amplify_core/src/types/config/config_map.dart';
import 'package:amplify_core/src/types/config/storage/storage_config.dart';
import 'package:amplify_core/src/util/serializable.dart';

export 's3_config.dart' hide S3PluginConfigFactory;

part 'storage_config.g.dart';

/// {@template amplify_flutter.storage_config}
/// The Storage category configuration.
/// {@endtemplate}
@amplifySerializable
class StorageConfig extends AmplifyPluginConfigMap {
  /// {@macro amplify_flutter.storage_config}
  const StorageConfig({
    required Map<String, AmplifyPluginConfig> plugins,
  }) : super(plugins);

  factory StorageConfig.fromJson(Map<String, Object?> json) =>
      _$StorageConfigFromJson(json);

  /// The AWS S3 plugin configuration, if available.
  @override
  S3PluginConfig? get awsPlugin =>
      plugins[S3PluginConfig.pluginKey] as S3PluginConfig?;

  @override
  StorageConfig copy() => StorageConfig(plugins: Map.of(plugins));

  @override
  Map<String, Object?> toJson() => _$StorageConfigToJson(this);
}
