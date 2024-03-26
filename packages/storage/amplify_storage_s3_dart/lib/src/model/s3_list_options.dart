// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template storage.amplify_storage_s3.list_options}
/// The configurable parameters for the Storage S3 plugin `list` requests.
/// {@endtemplate}
@Deprecated(
  'use StorageListOptions(pluginOptions: S3ListPluginOptions(...)) instead.',
)
class S3ListOptions extends StorageListOptions {
  /// {@macro storage.amplify_storage_s3.list_options}
  @Deprecated(
    'use StorageListOptions(pluginOptions: S3ListPluginOptions(...)) instead.',
  )
  const S3ListOptions({
    int pageSize = 1000,
    bool excludeSubPaths = false,
    String? nextToken,
  }) : this._(
          pageSize: pageSize,
          nextToken: nextToken,
          excludeSubPaths: excludeSubPaths,
        );

  @Deprecated(
    'use StorageListOptions(pluginOptions: S3ListPluginOptions(...)) instead.',
  )
  const S3ListOptions._({
    super.pageSize = 1000,
    super.nextToken,
    this.targetIdentityId,
    this.excludeSubPaths = false,
    this.listAll = false,
  });

  /// {@macro storage.amplify_storage_s3.list_options}
  ///
  /// Use this to list objects that belongs to other user (identified by
  /// [targetIdentityId]) rather than the currently signed in user.
  @Deprecated(
    'use StorageListOptions(pluginOptions: S3ListPluginOptions.forIdentity(...)) instead.',
  )
  const S3ListOptions.forIdentity(
    String targetIdentityId, {
    int pageSize = 1000,
    bool excludeSubPaths = false,
    String? nextToken,
  }) : this._(
          pageSize: pageSize,
          targetIdentityId: targetIdentityId,
          nextToken: nextToken,
          excludeSubPaths: excludeSubPaths,
        );

  /// {@macro storage.amplify_storage_s3.list_options}
  ///
  /// Use this to list all objects without pagination.
  @Deprecated(
    'use StorageListOptions(pluginOptions: S3ListPluginOptions(...)) instead.',
  )
  const S3ListOptions.listAll({
    bool excludeSubPaths = false,
  }) : this._(
          excludeSubPaths: excludeSubPaths,
          listAll: true,
        );

  /// {@macro storage.amplify_storage_s3.list_options}
  ///
  /// Use this to list all objects without pagination when the objects belong
  /// to other user (identified by [targetIdentityId]) rather than the currently
  /// signed in user.
  @Deprecated(
    'use StorageListOptions(pluginOptions: S3ListPluginOptions(...)) instead.',
  )
  const S3ListOptions.listAllForIdentity(
    String targetIdentityId, {
    bool excludeSubPaths = false,
  }) : this._(
          targetIdentityId: targetIdentityId,
          excludeSubPaths: excludeSubPaths,
        );

  /// The identity ID of another user who uploaded the objects.
  ///
  /// This can be set by using [S3ListOptions.forIdentity].
  final String? targetIdentityId;

  /// Whether to exclude objects under the sub paths of the path to list. The
  /// default value is `false`.
  final bool excludeSubPaths;

  /// Whether to list all objects under a given path without pagination. The
  /// default value is `false`.
  ///
  /// This can be set by using [S3ListOptions.listAll] or
  /// [S3ListOptions.listAllForIdentity].
  ///
  /// Use with caution if numerous objects are under the given path.
  final bool listAll;
}
