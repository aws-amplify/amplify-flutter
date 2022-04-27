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
import 'package:amplify_core/src/util/serializable.dart';
import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 's3_config.g.dart';

/// {@template amplify_flutter.s3_plugin_config_factory}
/// Configuration factory for [S3PluginConfig].
/// {@endtemplate}
@internal
class S3PluginConfigFactory extends AmplifyPluginConfigFactory<S3PluginConfig> {
  /// {@macro amplify_flutter.s3_plugin_config_factory}
  const S3PluginConfigFactory();

  @override
  S3PluginConfig build(Map<String, Object?> json) {
    return S3PluginConfig.fromJson(json);
  }

  @override
  String get name => S3PluginConfig.pluginKey;
}

/// {@template amplify_flutter.s3_plugin_config}
/// The AWS S3 plugin configuration.
/// {@endtemplate}
@amplifySerializable
class S3PluginConfig
    with AWSEquatable<S3PluginConfig>, AWSSerializable
    implements AmplifyPluginConfig {
  /// {@macro amplify_flutter.s3_plugin_config}
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
