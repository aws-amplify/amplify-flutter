// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/storage/base/storage_operation_options.dart';
import 'package:aws_common/aws_common.dart';

/// {@template amplify_core.storage.list_options}
/// Configurable options for `Amplify.Storage.list`.
/// {@endtemplate}
class StorageListOptions extends StorageOperationOptions
    with
        AWSEquatable<StorageListOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.list_options}
  const StorageListOptions({
    required super.accessLevel,
    this.pageSize = 1000,
    this.nextToken,
    this.pluginOptions,
  });

  /// The number of object to be listed in each page.
  final int pageSize;

  /// Token used to list the next page.
  final String? nextToken;

  /// {@macro amplify_core.storage.list_plugin_options}
  final StorageListPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [accessLevel, pageSize, nextToken, pluginOptions];

  @override
  String get runtimeTypeName => 'StorageListOptions';

  @override
  Map<String, Object?> toJson() => {
        'accessLevel': accessLevel.name,
        'pageSize': pageSize,
        'nextToken': nextToken,
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// {@template amplify_core.storage.list_plugin_options}
/// Plugin-specific options for `Amplify.Storage.list`.
/// {@endtemplate}
abstract class StorageListPluginOptions
    with
        AWSEquatable<StorageListPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.list_plugin_options}
  const StorageListPluginOptions();
}
