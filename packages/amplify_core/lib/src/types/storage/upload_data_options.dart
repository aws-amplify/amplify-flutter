// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/storage/base/storage_operation_options.dart';
import 'package:aws_common/aws_common.dart';

/// {@template amplify_core.storage.upload_data_options}
/// Configurable options for `Amplify.Storage.uploadData`.
/// {@endtemplate}
class StorageUploadDataOptions extends StorageOperationOptions
    with
        AWSEquatable<StorageUploadDataOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.upload_data_options}
  const StorageUploadDataOptions({
    required super.accessLevel,
    this.pluginOptions,
  });

  /// {@macro amplify_core.storage.upload_data_plugin_options}
  final StorageUploadDataPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [accessLevel, pluginOptions];

  @override
  String get runtimeTypeName => 'StorageUploadDataOptions';

  @override
  Map<String, Object?> toJson() => {
        'accessLevel': accessLevel.name,
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// {@template amplify_core.storage.upload_data_plugin_options}
/// Plugin-specific options for `Amplify.Storage.uploadData`.
/// {@endtemplate}
abstract class StorageUploadDataPluginOptions
    with
        AWSEquatable<StorageUploadDataPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.upload_data_plugin_options}
  const StorageUploadDataPluginOptions();
}
