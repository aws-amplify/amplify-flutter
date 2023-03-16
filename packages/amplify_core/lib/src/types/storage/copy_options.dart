// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template amplify_core.storage.copy_options}
/// Configurable options for `Amplify.Storage.copy`.
/// {@endtemplate}
class StorageCopyOptions
    with
        AWSEquatable<StorageCopyOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.copy_options}
  const StorageCopyOptions({this.pluginOptions});

  /// plugin specific options for `Amplify.Storage.copy`.
  final StorageCopyPluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'StorageCopyOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// {@template amplify_core.storage.copy_plugin_options}
/// Plugin-specific options for `Amplify.Storage.copy`.
/// {@endtemplate}
abstract class StorageCopyPluginOptions
    with
        AWSEquatable<StorageCopyPluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.copy_plugin_options}
  const StorageCopyPluginOptions();
}
