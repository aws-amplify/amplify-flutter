// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template amplify_core.storage.remove_options}
/// Configurable options for `Amplify.Storage.remove`.
/// {@endtemplate}
class StorageRemoveOptions
    with
        AWSEquatable<StorageRemoveOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.remove_options}
  const StorageRemoveOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.storage.remove_plugin_options}
  final StorageRemovePluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'StorageRemoveOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// {@template amplify_core.storage.remove_plugin_options}
/// Plugin-specific options for `Amplify.Storage.remove`.
/// {@endtemplate}
abstract class StorageRemovePluginOptions
    with
        AWSEquatable<StorageRemovePluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.remove_plugin_options}
  const StorageRemovePluginOptions();
}
