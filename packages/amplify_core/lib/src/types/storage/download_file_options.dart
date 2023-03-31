// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/storage/base/storage_operation_options.dart';
import 'package:aws_common/aws_common.dart';

/// {@template amplify_core.storage.download_file_options}
/// Configurable options for `Amplify.Storage.downloadFile`.
/// {@endtemplate}
class StorageDownloadFileOptions extends StorageOperationOptions
    with
        AWSEquatable<StorageDownloadFileOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.download_file_options}
  const StorageDownloadFileOptions({
    required super.accessLevel,
    this.pluginOptions,
  });

  /// {@macro amplify_core.storage.download_file_plugin_options}
  final StorageDownloadFilePluginOptions? pluginOptions;

  @override
  List<Object?> get props => [accessLevel, pluginOptions];

  @override
  String get runtimeTypeName => 'StorageDownloadFileOptions';

  @override
  Map<String, Object?> toJson() => {
        'accessLevel': accessLevel.name,
        'pluginOptions': pluginOptions?.toJson(),
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
