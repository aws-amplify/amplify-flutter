// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_remove_plugin_options.g.dart';

/// {@template storage.amplify_storage_s3.remove_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `remove` API.
/// {@endtemplate}
@zAmplifySerializable
class S3RemovePluginOptions extends StorageRemovePluginOptions {
  /// {@macro storage.amplify_storage_s3.remove_plugin_options}
  const S3RemovePluginOptions();

  /// {@macro storage.amplify_storage_s3.remove_plugin_options}
  factory S3RemovePluginOptions.fromJson(Map<String, Object?> json) =>
      _$S3RemovePluginOptionsFromJson(json);

  @override
  List<Object?> get props => [];

  @override
  String get runtimeTypeName => 'S3RemovePluginOptions';

  @override
  Map<String, Object?> toJson() => _$S3RemovePluginOptionsToJson(this);
}
