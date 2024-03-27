// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_get_properties_plugin_options.g.dart';

/// {@template storage.amplify_storage_s3.get_properties_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `getProperties` API.
/// {@endtemplate}
@zAmplifySerializable
class S3GetPropertiesPluginOptions extends StorageGetPropertiesPluginOptions {
  /// {@macro storage.amplify_storage_s3.get_properties_plugin_options}
  const S3GetPropertiesPluginOptions() : this._();

  const S3GetPropertiesPluginOptions._();

  /// {@macro storage.amplify_storage_s3.get_properties_plugin_options}
  factory S3GetPropertiesPluginOptions.fromJson(Map<String, Object?> json) =>
      _$S3GetPropertiesPluginOptionsFromJson(json);

  @override
  List<Object?> get props => [];

  @override
  String get runtimeTypeName => 'S3GetPropertiesPluginOptions';

  @override
  Map<String, Object?> toJson() => _$S3GetPropertiesPluginOptionsToJson(this);
}
