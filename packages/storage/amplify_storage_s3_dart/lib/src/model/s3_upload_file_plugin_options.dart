// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 's3_upload_file_plugin_options.g.dart';

/// {@template storage.amplify_storage_s3.upload_file_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `uploadFile`
/// API.
/// {@endtemplate}
@zAmplifySerializable
class S3UploadFilePluginOptions extends StorageUploadFilePluginOptions {
  /// {@macro storage.amplify_storage_s3.upload_file_plugin_options}
  const S3UploadFilePluginOptions({
    this.getProperties = false,
    this.useAccelerateEndpoint = false,
  });

  /// {@macro storage.amplify_storage_s3.upload_file_plugin_options}
  factory S3UploadFilePluginOptions.fromJson(Map<String, Object?> json) =>
      _$S3UploadFilePluginOptionsFromJson(json);

  /// Whether to retrieve properties for the uploaded object using the
  /// `getProperties` API.
  final bool getProperties;

  /// {@macro storage.amplify_storage_s3.transfer_acceleration}
  final bool useAccelerateEndpoint;

  @override
  List<Object?> get props => [
        getProperties,
        useAccelerateEndpoint,
      ];

  @override
  String get runtimeTypeName => 'S3UploadFilePluginOptions';

  @override
  Map<String, Object?> toJson() => _$S3UploadFilePluginOptionsToJson(this);
}
