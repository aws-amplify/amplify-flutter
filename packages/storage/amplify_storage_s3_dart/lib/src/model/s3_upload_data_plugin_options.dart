// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_upload_data_plugin_options.g.dart';

/// {@template storage.amplify_storage_s3.upload_data_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `uploadData`
/// API.
/// {@endtemplate}
@zAmplifySerializable
class S3UploadDataPluginOptions extends StorageUploadDataPluginOptions {
  /// {@macro storage.amplify_storage_s3.upload_data_plugin_options}
  const S3UploadDataPluginOptions({
    this.getProperties = false,
    this.metadata,
    this.useAccelerateEndpoint = false,
  });

  /// {@macro storage.amplify_storage_s3.upload_data_plugin_options}
  factory S3UploadDataPluginOptions.fromJson(Map<String, Object?> json) =>
      _$S3UploadDataPluginOptionsFromJson(json);

  /// The metadata attached to the object to be uploaded.
  final Map<String, String>? metadata;

  /// Whether to retrieve properties for the uploaded object using the
  /// `getProperties` API.
  final bool getProperties;

  /// {@macro storage.amplify_storage_s3.transfer_acceleration}
  final bool useAccelerateEndpoint;

  @override
  List<Object?> get props => [getProperties, useAccelerateEndpoint, metadata];

  @override
  String get runtimeTypeName => 'S3UploadDataPluginOptions';

  @override
  Map<String, Object?> toJson() => _$S3UploadDataPluginOptionsToJson(this);
}
