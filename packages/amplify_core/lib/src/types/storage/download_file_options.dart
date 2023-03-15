// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.download_file_options}
/// Configurable options for `Amplify.Storage.downloadFile`.
/// {@endtemplate}
class StorageDownloadFileOptions<PluginOptions extends Object?>
    extends StorageOperationOptions {
  /// {@macro amplify_core.storage.download_file_options}
  const StorageDownloadFileOptions({
    required super.accessLevel,
    this.pluginOptions,
  });

  /// plugin specific options for `Amplify.Storage.downloadFile`.
  final PluginOptions? pluginOptions;
}
