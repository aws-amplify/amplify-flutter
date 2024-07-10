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
  StorageListOptions({
    this.pageSize = 1000,
    this.nextToken,
    this.pluginOptions,
    required this.subpathStrategy,
  }) {
    // ignore: deprecated_member_use_from_same_package
    if (pluginOptions?.excludeSubPaths != subpathStrategy.excludeSubPaths) {
      throw ArgumentError(
        'pluginOptions cannot be required if excludedSubpaths is false.',
      );
    }
  }

  /// The number of object to be listed in each page.
  final int pageSize;

  /// Token used to list the next page.
  final String? nextToken;

  /// {@macro amplify_core.storage.list_plugin_options}
  final StorageListPluginOptions? pluginOptions;

  /// Subpathstrategy for specifying storage subpath behavior
  final SubpathStrategy subpathStrategy;

  @override
  List<Object?> get props =>
      [pageSize, nextToken, pluginOptions, subpathStrategy];

  @override
  String get runtimeTypeName => 'StorageListOptions';

  @override
  Map<String, Object?> toJson() => {
        'pageSize': pageSize,
        'nextToken': nextToken,
        'pluginOptions': pluginOptions?.toJson(),
        'subpathStrategy': subpathStrategy.toJson(),
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
  @Deprecated('use subpathStrategy.excludeSubPaths instead')
  final bool excludeSubPaths;

  /// {@macro amplify_core.storage.list_plugin_options}
  // ignore: deprecated_consistency, sort_constructors_first, avoid_positional_boolean_parameters
  const StorageListPluginOptions(this.excludeSubPaths);
}
