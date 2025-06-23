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
  });

  /// The number of object to be listed in each page.
  final int pageSize;

  /// Token used to list the next page.
  final String? nextToken;

  /// {@macro amplify_core.storage.list_plugin_options}
  final StorageListPluginOptions? pluginOptions;

  /// Optionally specify which bucket to retrieve
  final StorageBucket? bucket;

  @override
  List<Object?> get props => [pageSize, nextToken, pluginOptions, bucket];

  @override
  String get runtimeTypeName => 'StorageListOptions';

  @override
  Map<String, Object?> toJson() => {
    'pageSize': pageSize,
    'nextToken': nextToken,
    'bucket': bucket?.toJson(),
    'pluginOptions': pluginOptions?.toJson(),
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
