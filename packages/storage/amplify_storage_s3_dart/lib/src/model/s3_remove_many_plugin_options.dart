// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_remove_many_plugin_options.g.dart';

/// {@template storage.amplify_storage_s3.remove_many_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `removeMany`
/// API.
/// {@endtemplate}
@zAmplifySerializable
class S3RemoveManyPluginOptions extends StorageRemoveManyPluginOptions {
  /// {@macro storage.amplify_storage_s3.remove_many_plugin_options}
  const S3RemoveManyPluginOptions();

  /// {@macro storage.amplify_storage_s3.remove_many_plugin_options}
  factory S3RemoveManyPluginOptions.fromJson(Map<String, Object?> json) =>
      _$S3RemoveManyPluginOptionsFromJson(json);

  @override
  List<Object?> get props => [];

  @override
  String get runtimeTypeName => 'S3RemoveManyPluginOptions';

  @override
  Map<String, Object?> toJson() => _$S3RemoveManyPluginOptionsToJson(this);
}
