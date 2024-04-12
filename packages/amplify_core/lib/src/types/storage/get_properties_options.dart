// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template amplify_core.storage.get_properties_options}
/// Configurable options for `Amplify.Storage.getProperties`.
/// {@endtemplate}
class StorageGetPropertiesOptions
    with
        AWSEquatable<StorageGetPropertiesOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.get_properties_options}
  const StorageGetPropertiesOptions({
    this.pluginOptions,
  });

  /// {@macro amplify_core.storage.download_get_properties_plugin_options}
  final StorageGetPropertiesPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'StorageGetPropertiesOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// {@template amplify_core.storage.download_get_properties_plugin_options}
/// Plugin-specific options for `Amplify.Storage.getProperties`.
/// {@endtemplate}
abstract class StorageGetPropertiesPluginOptions
    with
        AWSEquatable<StorageGetPropertiesPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const StorageGetPropertiesPluginOptions();
}
