// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/storage/base/storage_operation_options.dart';
import 'package:aws_common/aws_common.dart';

/// {@template amplify_core.storage.download_data_options}
/// Configurable options for `Amplify.Storage.downloadData`.
/// {@endtemplate}
class StorageDownloadDataOptions extends StorageOperationOptions
    with
        AWSEquatable<StorageDownloadDataOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.download_data_options}
  const StorageDownloadDataOptions({
    required super.accessLevel,
    this.pluginOptions,
  });

  /// {@macro amplify_core.storage.download_data_plugin_options}
  final StorageDownloadDataPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [accessLevel, pluginOptions];

  @override
  String get runtimeTypeName => 'StorageDownloadDataOptions';

  @override
  Map<String, Object?> toJson() => {
        'accessLevel': accessLevel.name,
        'pluginOptions': pluginOptions?.toJson(),
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
