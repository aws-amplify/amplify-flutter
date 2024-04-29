// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template amplify_core.storage.remove_many_options}
/// Configurable options for `Amplify.Storage.removeMany`.
/// {@endtemplate}
class StorageRemoveManyOptions
    with
        AWSEquatable<StorageRemoveManyOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.remove_many_options}
  const StorageRemoveManyOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.storage.remove_many_plugin_options}
  final StorageRemoveManyPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'StorageRemoveManyOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// {@template amplify_core.storage.remove_many_plugin_options}
/// Plugin-specific options for `Amplify.Storage.removeMany`.
/// {@endtemplate}
abstract class StorageRemoveManyPluginOptions
    with
        AWSEquatable<StorageRemoveManyPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.remove_many_plugin_options}
  const StorageRemoveManyPluginOptions();
}
