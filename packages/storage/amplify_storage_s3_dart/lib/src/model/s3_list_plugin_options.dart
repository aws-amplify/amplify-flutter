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
  const S3ListPluginOptions({
    bool excludeSubPaths = false,
  }) : this._(
          excludeSubPaths: excludeSubPaths,
        );

  const S3ListPluginOptions._({
    this.targetIdentityId,
    this.excludeSubPaths = false,
    this.listAll = false,
  });

  /// {@macro storage.amplify_storage_s3.list_plugin_options}
  ///
  /// Use this to list objects that belongs to other user (identified by
  /// [targetIdentityId]) rather than the currently signed in user.
  const S3ListPluginOptions.forIdentity(
    String targetIdentityId, {
    bool excludeSubPaths = false,
  }) : this._(
          targetIdentityId: targetIdentityId,
          excludeSubPaths: excludeSubPaths,
        );

  /// {@macro storage.amplify_storage_s3.list_plugin_options}
  ///
  /// Use this to list all objects without pagination.
  const S3ListPluginOptions.listAll({
    bool excludeSubPaths = false,
  }) : this._(
          excludeSubPaths: excludeSubPaths,
          listAll: true,
        );

  /// {@macro storage.amplify_storage_s3.list_plugin_options}
  ///
  /// Use this to list all objects without pagination when the objects belong
  /// to other user (identified by [targetIdentityId]) rather than the currently
  /// signed in user.
  const S3ListPluginOptions.listAllForIdentity(
    String targetIdentityId, {
    bool excludeSubPaths = false,
  }) : this._(
          targetIdentityId: targetIdentityId,
          excludeSubPaths: excludeSubPaths,
        );

  /// {@macro storage.amplify_storage_s3.list_plugin_options}
  factory S3ListPluginOptions.fromJson(Map<String, Object?> json) =>
      _$S3ListPluginOptionsFromJson(json);

  /// The identity ID of another user who uploaded the objects.
  ///
  /// This can be set by using [S3ListPluginOptions.forIdentity].
  final String? targetIdentityId;

  /// Whether to exclude objects under the sub paths of the path to list. The
  /// default value is `false`.
  final bool excludeSubPaths;

  /// Whether to list all objects under a given path without pagination. The
  /// default value is `false`.
  ///
  /// This can be set by using [S3ListPluginOptions.listAll] or
  /// [S3ListPluginOptions.listAllForIdentity].
  ///
  /// Use with caution if numerous objects are under the given path.
  final bool listAll;

  @override
  List<Object?> get props => [
        excludeSubPaths,
        listAll,
        targetIdentityId,
      ];

  @override
  String get runtimeTypeName => 'S3ListPluginOptions';

  @override
  Map<String, Object?> toJson() => _$S3ListPluginOptionsToJson(this);
}
