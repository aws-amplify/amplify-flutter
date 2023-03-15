// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.upload_file_options}
/// Configurable options for Amplify.Storage.uploadFile.
/// {@endtemplate}
class StorageUploadFileOptions<PluginOptions extends Object?>
    extends StorageOperationOptions {
  /// {@macro amplify_core.storage.upload_file_options}
  const StorageUploadFileOptions({
    required super.accessLevel,
    this.pluginOptions,
  });

  /// plugin specific options for `Amplify.Storage.uploadFile`.
  final PluginOptions? pluginOptions;
}
