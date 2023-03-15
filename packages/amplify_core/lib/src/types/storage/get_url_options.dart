// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.get_url_options}
/// Configurable options for `Amplify.Storage.getUrl`.
/// {@endtemplate}
class StorageGetUrlOptions<PluginOptions extends Object?>
    extends StorageOperationOptions {
  /// {@macro amplify_core.storage.get_url_options}
  const StorageGetUrlOptions({
    required super.accessLevel,
    this.pluginOptions,
  });

  /// plugin specific options for `Amplify.Storage.getUrl`.
  final PluginOptions? pluginOptions;
}
