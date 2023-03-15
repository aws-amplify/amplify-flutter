// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.remove_options}
/// Configurable options for `Amplify.Storage.remove`.
/// {@endtemplate}
class StorageRemoveOptions<PluginOptions extends Object?>
    extends StorageOperationOptions {
  /// {@macro amplify_core.storage.remove_options}
  const StorageRemoveOptions({
    required super.accessLevel,
    this.pluginOptions,
  });

  /// plugin specific options for `Amplify.Storage.remove`.
  final PluginOptions? pluginOptions;
}
