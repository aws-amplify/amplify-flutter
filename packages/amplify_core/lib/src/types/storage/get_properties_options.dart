// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.get_properties_options}
/// Configurable options for `Amplify.Storage.getProperties`.
/// {@endtemplate}
class StorageGetPropertiesOptions<PluginOptions extends Object?>
    extends StorageOperationOptions {
  /// {@macro amplify_core.storage.get_properties_options}
  const StorageGetPropertiesOptions({
    required super.accessLevel,
    this.pluginOptions,
  });

  /// plugin specific options for `Amplify.Storage.getProperties`.
  final PluginOptions? pluginOptions;
}
