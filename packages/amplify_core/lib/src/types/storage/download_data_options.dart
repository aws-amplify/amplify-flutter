// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.download_data_options}
/// Configurable options for `Amplify.Storage.downloadData`.
/// {@endtemplate}
class StorageDownloadDataOptions
    with
        AWSEquatable<StorageDownloadDataOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.download_data_options}
  const StorageDownloadDataOptions({this.pluginOptions, this.bucket});

  /// {@macro amplify_core.storage.download_data_plugin_options}
  final StorageDownloadDataPluginOptions? pluginOptions;

  /// Optionally specify which bucket to target
  final StorageBucket? bucket;

  @override
  List<Object?> get props => [pluginOptions, bucket];

  @override
  String get runtimeTypeName => 'StorageDownloadDataOptions';

  @override
  Map<String, Object?> toJson() => {
    'pluginOptions': pluginOptions?.toJson(),
    'bucket': bucket?.toJson(),
  };
}

/// {@template amplify_core.storage.download_data_plugin_options}
/// Plugin-specific options for `Amplify.Storage.downloadData`.
/// {@endtemplate}
abstract class StorageDownloadDataPluginOptions
    with
        AWSEquatable<StorageDownloadDataPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.download_data_plugin_options}
  const StorageDownloadDataPluginOptions();
}
