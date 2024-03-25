// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template storage.amplify_storage_s3.download_file_options}
/// The configurable parameters invoking the Storage S3 plugin `downloadFile` API.
/// {@endtemplate}
@Deprecated(
  'use StorageDownloadFileOptions(pluginOptions:S3DownloadFilePluginOptions(...)) instead.',
)
class S3DownloadFileOptions extends StorageDownloadFileOptions {
  /// {@macro storage.amplify_storage_s3.download_file_options}
  @Deprecated(
    'use StorageDownloadFileOptions(pluginOptions:S3DownloadFilePluginOptions(...)) instead.',
  )
  const S3DownloadFileOptions({
    bool getProperties = false,
    bool useAccelerateEndpoint = false,
  }) : this._(
          getProperties: getProperties,
          useAccelerateEndpoint: useAccelerateEndpoint,
        );

  @Deprecated(
    'use StorageDownloadFileOptions(pluginOptions:S3DownloadFilePluginOptions(...)) instead.',
  )
  const S3DownloadFileOptions._({
    this.getProperties = false,
    this.useAccelerateEndpoint = false,
  });

  /// Whether to retrieve properties for the downloaded object using the
  /// `getProperties` API.
  final bool getProperties;

  /// {@macro storage.amplify_storage_s3.transfer_acceleration}
  final bool useAccelerateEndpoint;
}
