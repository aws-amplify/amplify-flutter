// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_list_plugin_options.g.dart';

/// {@template storage.amplify_storage_s3.list_plugin_options}
/// The configurable parameters for the Storage S3 plugin `list` API.
/// {@endtemplate}
@zAmplifySerializable
@Deprecated('use subpathStrategy instead')
class S3ListPluginOptions extends StorageListPluginOptions {
  /// {@macro storage.amplify_storage_s3.list_plugin_options}

  @Deprecated('use subpathStrategy instead')
  const S3ListPluginOptions({
    bool excludeSubPaths = false,
    String delimiter = '/',
  }) : this._(
          excludeSubPaths: excludeSubPaths,
          delimiter: delimiter,
        );

  @Deprecated('use subpathStrategy instead')
  const S3ListPluginOptions._({
    @Deprecated('use subpathStrategy instead') this.excludeSubPaths = false,
    @Deprecated('use subpathStrategy instead') this.delimiter = '/',
    @Deprecated('use subpathStrategy instead') this.listAll = false,
  });

  /// {@macro storage.amplify_storage_s3.list_plugin_options}
  ///
  /// Use this to list all objects without pagination.
  @Deprecated('use subpathStrategy.listAll instead')
  const S3ListPluginOptions.listAll({
    bool excludeSubPaths = false,
  }) : this._(
          excludeSubPaths: excludeSubPaths,
          listAll: true,
        );

  /// {@macro storage.amplify_storage_s3.list_plugin_options}
  @Deprecated('use subpathStrategy.fromJson instead')
  factory S3ListPluginOptions.fromJson(Map<String, Object?> json) =>
      _$S3ListPluginOptionsFromJson(json);

  /// Whether to exclude objects under the sub paths of the path to list. The
  /// default value is `false`.
  @Deprecated('use subpathStrategy.excludeSubPaths instead')
  final bool excludeSubPaths;

  /// The delimiter to use when evaluating sub paths. If [excludeSubPaths] is
  /// false, this value has no impact on behavior.
  @Deprecated('use subpathStrategy.delimiter instead')
  final String delimiter;

  /// Whether to list all objects under a given path without pagination. The
  /// default value is `false`.
  ///
  /// This can be set by using [S3ListPluginOptions.listAll].
  ///
  /// Use with caution if numerous objects are under the given path.
  @Deprecated('use subpathStrategy.listAll instead')
  final bool listAll;

  @override
  @Deprecated('use subpathStrategy.props instead')
  List<Object?> get props => [
        excludeSubPaths,
        listAll,
      ];

  @override
  @Deprecated('use subpathStrategy.runtimeTypeName instead')
  String get runtimeTypeName => 'S3ListPluginOptions';

  @override
  @Deprecated('use subpathStrategy.toJson instead')
  Map<String, Object?> toJson() => _$S3ListPluginOptionsToJson(this);
}
