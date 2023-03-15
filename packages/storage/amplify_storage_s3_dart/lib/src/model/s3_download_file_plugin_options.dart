// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template storage.amplify_storage_s3.download_file_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `downloadFile` API.
/// {@endtemplate}
class S3DownloadFilePluginOptions {
  /// {@macro storage.amplify_storage_s3.download_file_plugin_options}
  const S3DownloadFilePluginOptions({
    bool getProperties = false,
    bool useAccelerateEndpoint = false,
  }) : this._(
          getProperties: getProperties,
          useAccelerateEndpoint: useAccelerateEndpoint,
        );

  const S3DownloadFilePluginOptions._({
    this.getProperties = false,
    this.targetIdentityId,
    this.useAccelerateEndpoint = false,
  });

  /// {@macro storage.amplify_storage_s3.download_data_plugin_options}
  ///
  /// Use this when calling `downloadFile` on an object that belongs to other
  /// user (identified by [targetIdentityId]) rather than the currently signed
  /// user.
  const S3DownloadFilePluginOptions.forIdentity(
    String targetIdentityId, {
    bool getProperties = false,
    bool useAccelerateEndpoint = false,
  }) : this._(
          targetIdentityId: targetIdentityId,
          getProperties: getProperties,
          useAccelerateEndpoint: useAccelerateEndpoint,
        );

  /// The identity ID of the user who uploaded the object.
  ///
  /// This can be set by using [S3DownloadFilePluginOptions.forIdentity].
  final String? targetIdentityId;

  /// Whether to retrieve properties for the downloaded object using the
  /// `getProperties` API.
  final bool getProperties;

  /// {@macro storage.amplify_storage_s3.transfer_acceleration}
  final bool useAccelerateEndpoint;
}
