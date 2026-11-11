// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.list_options}
/// Configurable options for `Amplify.Storage.list`.
/// {@endtemplate}
class StorageListOptions
    with
        AWSEquatable<StorageListOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.list_options}
  const StorageListOptions({
    this.pageSize = 1000,
    this.nextToken,
    this.bucket,
    this.pluginOptions,
    this.subpathStrategy = const SubpathStrategy.include(),
    this.listAll = false,
  });

  /// The number of object to be listed in each page.
  ///
  /// Has no effect when [listAll] is `true`.
  ///
  /// When [subpathStrategy] is [SubpathStrategy.exclude], each excluded subpath
  /// counts toward this limit alongside the returned objects, so a page may
  /// contain fewer than [pageSize] entries in [StorageListResult.items].
  final int pageSize;

  /// Token used to list the next page.
  ///
  /// Has no effect when [listAll] is `true`.
  final String? nextToken;

  /// {@macro amplify_core.storage.list_plugin_options}
  final StorageListPluginOptions? pluginOptions;

  /// Optionally specify which bucket to retrieve
  final StorageBucket? bucket;

  /// {@macro amplify_core.storage.subpath_strategy}
  ///
  /// Defaults to [SubpathStrategy.include].
  final SubpathStrategy subpathStrategy;

  /// Whether to list all objects under the given path without pagination. The
  /// default value is `false`.
  ///
  /// When `true`, [pageSize] and [nextToken] have no effect and
  /// [StorageListResult.hasNextPage] is always `false`.
  ///
  /// Use with caution if numerous objects are under the given path.
  final bool listAll;

  @override
  List<Object?> get props => [
    pageSize,
    nextToken,
    pluginOptions,
    bucket,
    subpathStrategy,
    listAll,
  ];

  @override
  String get runtimeTypeName => 'StorageListOptions';

  @override
  Map<String, Object?> toJson() => {
    'pageSize': pageSize,
    'nextToken': nextToken,
    'bucket': bucket?.toJson(),
    'pluginOptions': pluginOptions?.toJson(),
    'subpathStrategy': subpathStrategy.toJson(),
    'listAll': listAll,
  };
}

/// {@template amplify_core.storage.list_plugin_options}
/// Plugin-specific options for `Amplify.Storage.list`.
/// {@endtemplate}
abstract class StorageListPluginOptions
    with
        AWSEquatable<StorageListPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.list_plugin_options}
  const StorageListPluginOptions();
}
