// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_core.storage.copy_options}
/// Configurable options for `Amplify.Storage.copy`.
/// {@endtemplate}
class StorageCopyOptions<PluginOptions extends Object?> {
  /// {@macro amplify_core.storage.copy_options}
  const StorageCopyOptions({this.pluginOptions});

  /// plugin specific options for `Amplify.Storage.copy`.
  final PluginOptions? pluginOptions;
}
