// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.upload_data_options}
/// Configurable options for `Amplify.Storage.uploadData`.
/// {@endtemplate}
class StorageUploadDataOptions<PluginOptions extends Object?>
    extends StorageOperationOptions {
  /// {@macro amplify_core.storage.upload_data_options}
  const StorageUploadDataOptions({
    required super.accessLevel,
    this.pluginOptions,
  });

  /// plugin specific options for `Amplify.Storage.uploadData`.
  final PluginOptions? pluginOptions;
}
