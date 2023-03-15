// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.download_data_options}
/// Configurable options for `Amplify.Storage.downloadData`.
/// {@endtemplate}
class StorageDownloadDataOptions<PluginOptions extends Object?>
    extends StorageOperationOptions {
  /// {@macro amplify_core.storage.download_data_options}
  const StorageDownloadDataOptions({
    required super.accessLevel,
    this.pluginOptions,
  });

  /// plugin specific options for `Amplify.Storage.downloadData`.
  final PluginOptions? pluginOptions;
}
