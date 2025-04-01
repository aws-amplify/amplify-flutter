// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.copy_options}
/// Configurable options for `Amplify.Storage.copy`.
/// {@endtemplate}
class StorageCopyOptions
    with
        AWSEquatable<StorageCopyOptions>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.storage.copy_options}
  const StorageCopyOptions({this.pluginOptions, this.buckets});

  /// plugin specific options for `Amplify.Storage.copy`.
  final StorageCopyPluginOptions? pluginOptions;

  /// Optionally specify which buckets to target
  final CopyBuckets? buckets;

  @override
  List<Object?> get props => [pluginOptions, buckets];

  @override
  String get runtimeTypeName => 'StorageCopyOptions';

  @override
  Map<String, Object?> toJson() => {
    'pluginOptions': pluginOptions?.toJson(),
    'buckets': buckets?.toJson(),
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
