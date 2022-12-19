// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

export 's3_config.dart' hide S3PluginConfigFactory;

part 'storage_config.g.dart';

/// {@template amplify_core.storage_config}
/// The Storage category configuration.
/// {@endtemplate}
@zAmplifySerializable
class StorageConfig extends AmplifyPluginConfigMap {
  /// {@macro amplify_core.storage_config}
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
