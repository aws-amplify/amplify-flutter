// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_copy_plugin_options.g.dart';

/// {@template storage.amplify_storage_s3.copy_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `copy` API.
/// {@endtemplate}
@zAmplifySerializable
class S3CopyPluginOptions extends StorageCopyPluginOptions {
  /// {@macro storage.amplify_storage_s3.copy_plugin_options}
  const S3CopyPluginOptions({
    this.getProperties = false,
  });

  /// {@macro storage.amplify_storage_s3.copy_plugin_options}
  factory S3CopyPluginOptions.fromJson(Map<String, Object?> json) =>
      _$S3CopyPluginOptionsFromJson(json);

  /// Whether to retrieve properties for the copied object using the
  /// `getProperties` API.
  final bool getProperties;

  @override
  List<Object?> get props => [getProperties];

  @override
  String get runtimeTypeName => 'S3CopyPluginOptions';

  @override
  Map<String, Object?> toJson() => _$S3CopyPluginOptionsToJson(this);
}
