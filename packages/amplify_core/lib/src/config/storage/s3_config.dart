// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

part 's3_config.g.dart';

/// {@template amplify_core.s3_plugin_config_factory}
/// Configuration factory for [S3PluginConfig].
/// {@endtemplate}
@internal
class S3PluginConfigFactory extends AmplifyPluginConfigFactory<S3PluginConfig> {
  /// {@macro amplify_core.s3_plugin_config_factory}
  const S3PluginConfigFactory();

  @override
  S3PluginConfig build(Map<String, Object?> json) {
    return S3PluginConfig.fromJson(json);
  }

  @override
  String get name => S3PluginConfig.pluginKey;
}

/// {@template amplify_core.s3_plugin_config}
/// The AWS S3 plugin configuration.
/// {@endtemplate}
@zAmplifySerializable
class S3PluginConfig
    with AWSEquatable<S3PluginConfig>, AWSSerializable
    implements AmplifyPluginConfig {
  /// {@macro amplify_core.s3_plugin_config}
  const S3PluginConfig({
    required this.bucket,
    required this.region,
    this.defaultAccessLevel = StorageAccessLevel.guest,
  });

  /// The plugin's configuration key.
  static const pluginKey = 'awsS3StoragePlugin';

  @override
  String get name => pluginKey;

  final String bucket;
  final String region;
  final StorageAccessLevel defaultAccessLevel;

  @override
  List<Object?> get props => [
        bucket,
        region,
        defaultAccessLevel,
      ];

  factory S3PluginConfig.fromJson(Map<String, Object?> json) =>
      _$S3PluginConfigFromJson(json);

  S3PluginConfig copyWith({
    String? bucket,
    String? region,
    StorageAccessLevel? defaultAccessLevel,
  }) {
    return S3PluginConfig(
      bucket: bucket ?? this.bucket,
      region: region ?? this.region,
      defaultAccessLevel: defaultAccessLevel ?? this.defaultAccessLevel,
    );
  }

  @override
  Map<String, Object?> toJson() => _$S3PluginConfigToJson(this);
}
