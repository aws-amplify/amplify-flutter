// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_core.storage.move_options}
/// Configurable options for `Amplify.Storage.move`.
/// {@endtemplate}
class StorageMoveOptions<PluginOptions extends Object?> {
  /// {@macro amplify_core.storage.move_options}
  const StorageMoveOptions({this.pluginOptions});

  /// plugin specific options for `Amplify.Storage.move`.
  final PluginOptions? pluginOptions;
}
