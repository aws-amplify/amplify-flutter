// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.download_data_plugin_options}
/// The configurable parameters invoking the Storage S3 plugin `downloadData` API.
/// {@endtemplate}
class S3DownloadDataPluginOptions {
  /// {@macro storage.amplify_storage_s3.download_data_options}
  const S3DownloadDataPluginOptions({
    bool getProperties = false,
    S3DataBytesRange? bytesRange,
    bool useAccelerateEndpoint = false,
  }) : this._(
          bytesRange: bytesRange,
          getProperties: getProperties,
          useAccelerateEndpoint: useAccelerateEndpoint,
        );

  const S3DownloadDataPluginOptions._({
    this.getProperties = false,
    this.bytesRange,
    this.targetIdentityId,
    this.useAccelerateEndpoint = false,
  });

  /// {@macro storage.amplify_storage_s3.download_data_options}
  ///
  /// Use this when calling `downloadData` on an object that belongs to another
  /// user (identified by [targetIdentityId]) rather than the currently
  /// signed-in user.
  const S3DownloadDataPluginOptions.forIdentity(
    String targetIdentityId, {
    bool getProperties = false,
    S3DataBytesRange? bytesRange,
    bool useAccelerateEndpoint = false,
  }) : this._(
          targetIdentityId: targetIdentityId,
          getProperties: getProperties,
          bytesRange: bytesRange,
          useAccelerateEndpoint: useAccelerateEndpoint,
        );

  /// The byte range to download from the object.
  final S3DataBytesRange? bytesRange;

  /// The identity ID of another user who uploaded the object.
  ///
  /// This can be set by using [S3DownloadDataPluginOptions.forIdentity].
  final String? targetIdentityId;

  /// Whether to retrieve properties for the downloaded object using the
  /// `getProperties` API.
  final bool getProperties;

  /// {@template storage.amplify_storage_s3.transfer_acceleration}
  /// Whether to use [S3 Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transfer-acceleration.html)
  /// enabled endpoint for the operation.
  /// {@endtemplate}
  final bool useAccelerateEndpoint;
}
