// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template storage.amplify_storage_s3.upload_file_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `uploadFile`
/// API.
/// {@endtemplate}
class S3UploadFilePluginOptions {
  /// {@macro storage.amplify_storage_s3.upload_file_plugin_options}
  const S3UploadFilePluginOptions({
    this.getProperties = false,
    this.metadata,
    this.useAccelerateEndpoint = false,
  });

  /// The metadata attached to the object to be uploaded.
  final Map<String, String>? metadata;

  /// Whether to retrieve properties for the uploaded object using the
  /// `getProperties` API.
  final bool getProperties;

  /// {@macro storage.amplify_storage_s3.transfer_acceleration}
  final bool useAccelerateEndpoint;
}
