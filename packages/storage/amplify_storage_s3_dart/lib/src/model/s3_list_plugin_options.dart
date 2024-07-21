// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_list_plugin_options.g.dart';

/// {@template storage.amplify_storage_s3.list_plugin_options}
/// The configurable parameters for the Storage S3 plugin `list` API.
/// {@endtemplate}
@zAmplifySerializable
class S3ListPluginOptions extends StorageListPluginOptions {
  /// {@macro storage.amplify_storage_s3.list_plugin_options}

  const S3ListPluginOptions() : this._();

  const S3ListPluginOptions._({
    this.listAll = false,
  });

  /// {@macro storage.amplify_storage_s3.list_plugin_options}
  ///
  /// Use this to list all objects without pagination.
  const S3ListPluginOptions.listAll()
      : this._(
          listAll: true,
        );

  /// {@macro storage.amplify_storage_s3.list_plugin_options}
  factory S3ListPluginOptions.fromJson(Map<String, Object?> json) =>
      _$S3ListPluginOptionsFromJson(json);

  /// Whether to list all objects under a given path without pagination. The
  /// default value is `false`.
  ///
  /// This can be set by using [S3ListPluginOptions.listAll].
  ///
  /// Use with caution if numerous objects are under the given path.
  final bool listAll;

  @override
  List<Object?> get props => [
        listAll,
      ];

  @override
  String get runtimeTypeName => 'S3ListPluginOptions';

  @override
  Map<String, Object?> toJson() => _$S3ListPluginOptionsToJson(this);
}
