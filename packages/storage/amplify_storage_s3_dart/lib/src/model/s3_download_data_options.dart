// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.download_data_options}
/// The configurable parameters invoking the Storage S3 plugin `downloadData` API.
/// {@endtemplate}
@Deprecated(
  'use StorageDownloadDataOptions(pluginOptions:S3DownloadDataPluginOptions(...)) instead.',
)
class S3DownloadDataOptions extends StorageDownloadDataOptions {
  /// {@macro storage.amplify_storage_s3.download_data_options}
  @Deprecated(
    'use StorageDownloadDataOptions(pluginOptions:S3DownloadDataPluginOptions(...)) instead.',
  )
  const S3DownloadDataOptions({
    bool getProperties = false,
    S3DataBytesRange? bytesRange,
    bool useAccelerateEndpoint = false,
  }) : this._(
          bytesRange: bytesRange,
          getProperties: getProperties,
          useAccelerateEndpoint: useAccelerateEndpoint,
        );
  @Deprecated(
    'use StorageDownloadDataOptions(pluginOptions:S3DownloadDataPluginOptions(...)) instead.',
  )
  const S3DownloadDataOptions._({
    this.getProperties = false,
    this.bytesRange,
    this.useAccelerateEndpoint = false,
  });

  /// The byte range to download from the object.
  final S3DataBytesRange? bytesRange;

  /// Whether to retrieve properties for the downloaded object using the
  /// `getProperties` API.
  final bool getProperties;

  /// {@template storage.amplify_storage_s3.transfer_acceleration}
  /// Whether to use [S3 Transfer Acceleration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/transfer-acceleration.html)
  /// enabled endpoint for the operation.
  /// {@endtemplate}
  final bool useAccelerateEndpoint;
}
