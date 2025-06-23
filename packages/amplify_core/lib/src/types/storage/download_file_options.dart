// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.download_file_options}
/// Configurable options for `Amplify.Storage.downloadFile`.
/// {@endtemplate}
class StorageDownloadFileOptions
    with
        AWSEquatable<StorageDownloadFileOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.download_file_options}
  const StorageDownloadFileOptions({this.pluginOptions, this.bucket});

  /// {@macro amplify_core.storage.download_file_plugin_options}
  final StorageDownloadFilePluginOptions? pluginOptions;

  /// Optionally specify which bucket to target
  final StorageBucket? bucket;

  @override
  List<Object?> get props => [pluginOptions, bucket];

  @override
  String get runtimeTypeName => 'StorageDownloadFileOptions';

  @override
  Map<String, Object?> toJson() => {
    'pluginOptions': pluginOptions?.toJson(),
    'bucket': bucket?.toJson(),
  };
}

/// {@template amplify_core.storage.download_file_plugin_options}
/// Plugin-specific options for `Amplify.Storage.downloadFile`.
/// {@endtemplate}
abstract class StorageDownloadFilePluginOptions
    with
        AWSEquatable<StorageDownloadFilePluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.download_file_plugin_options}
  const StorageDownloadFilePluginOptions();
}
