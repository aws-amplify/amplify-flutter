// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.get_url_options}
/// Configurable options for `Amplify.Storage.getUrl`.
/// {@endtemplate}
class StorageGetUrlOptions
    with
        AWSEquatable<StorageGetUrlOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.get_url_options}
  const StorageGetUrlOptions({this.pluginOptions, this.bucket});

  /// {@macro amplify_core.storage.get_url_plugin_options}
  final StorageGetUrlPluginOptions? pluginOptions;

  /// Optionally specify which bucket to target
  final StorageBucket? bucket;

  @override
  List<Object?> get props => [pluginOptions, bucket];

  @override
  String get runtimeTypeName => 'StorageGetUrlOptions';

  @override
  Map<String, Object?> toJson() => {
    'pluginOptions': pluginOptions?.toJson(),
    'bucket': bucket?.toJson(),
  };
}

/// {@template amplify_core.storage.get_url_plugin_options}
/// Plugin-specific options for `Amplify.Storage.downloadData`.
/// {@endtemplate}
abstract class StorageGetUrlPluginOptions
    with
        AWSEquatable<StorageGetUrlPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.get_url_plugin_options}
  const StorageGetUrlPluginOptions();
}
