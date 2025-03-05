// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.remove_many_options}
/// Configurable options for `Amplify.Storage.removeMany`.
/// {@endtemplate}
class StorageRemoveManyOptions
    with
        AWSEquatable<StorageRemoveManyOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.remove_many_options}
  const StorageRemoveManyOptions({this.pluginOptions, this.bucket});

  /// {@macro amplify_core.storage.remove_many_plugin_options}
  final StorageRemoveManyPluginOptions? pluginOptions;

  /// Optionally specify which bucket to target
  final StorageBucket? bucket;

  @override
  List<Object?> get props => [pluginOptions, bucket];

  @override
  String get runtimeTypeName => 'StorageRemoveManyOptions';

  @override
  Map<String, Object?> toJson() => {
    'pluginOptions': pluginOptions?.toJson(),
    'bucket': bucket?.toJson(),
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
