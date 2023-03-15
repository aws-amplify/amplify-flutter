// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.list_options}
/// Configurable options for `Amplify.Storage.list`.
/// {@endtemplate}
class StorageListOptions<PluginOptions extends Object?>
    extends StorageOperationOptions {
  /// {@macro amplify_core.storage.list_options}
  const StorageListOptions({
    required super.accessLevel,
    this.pageSize = 1000,
    this.nextToken,
    this.pluginOptions,
  });

  /// The number of object to be listed in each page.
  final int pageSize;

  /// Token used to list the next page.
  final String? nextToken;

  /// plugin specific options for `Amplify.Storage.list`.
  final PluginOptions? pluginOptions;
}
