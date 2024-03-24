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
    this.targetIdentityId,
    this.useAccelerateEndpoint = false,
  });

  /// {@macro storage.amplify_storage_s3.download_data_options}
  ///
  /// Use this when calling `downloadFile` on an object that belongs to other
  /// user (identified by [targetIdentityId]) rather than the currently signed
  /// user.
  @Deprecated(
    'use StorageDownloadFileOptions(pluginOptions:S3DownloadFilePluginOptions.forIdentity(...)) instead.',
  )
  const S3DownloadFileOptions.forIdentity(
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
  /// This can be set by using [S3DownloadFileOptions.forIdentity].
  final String? targetIdentityId;

  /// Whether to retrieve properties for the downloaded object using the
  /// `getProperties` API.
  final bool getProperties;

  /// {@macro storage.amplify_storage_s3.transfer_acceleration}
  final bool useAccelerateEndpoint;
}
