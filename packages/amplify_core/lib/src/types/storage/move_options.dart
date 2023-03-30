// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// {@template amplify_core.storage.move_options}
/// Configurable options for `Amplify.Storage.move`.
/// {@endtemplate}
class StorageMoveOptions
    with
        AWSEquatable<StorageMoveOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.move_options}
  const StorageMoveOptions({this.pluginOptions});

  /// {@macro amplify_core.storage.move_plugin_options}
  final StorageMovePluginOptions? pluginOptions;

  @override
  List<Object?> get props => [pluginOptions];

  @override
  String get runtimeTypeName => 'StorageMoveOptions';

  @override
  Map<String, Object?> toJson() => {
        'pluginOptions': pluginOptions?.toJson(),
      };
}

/// {@template amplify_core.storage.move_plugin_options}
/// Plugin-specific options for `Amplify.Storage.move`.
/// {@endtemplate}
abstract class StorageMovePluginOptions
    with
        AWSEquatable<StorageMovePluginOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.move_plugin_options}
  const StorageMovePluginOptions();
}
