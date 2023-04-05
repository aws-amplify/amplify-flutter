// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template storage.amplify_storage_s3.upload_data_options}
/// The configurable parameters invoking the Storage S3 plugin `uploadData`
/// API.
/// {@endtemplate}
@Deprecated(
  'use StorageUploadDataOptions(pluginOptions: S3UploadDataPluginOptions(...)) instead.',
)
class S3UploadDataOptions extends StorageUploadDataOptions {
  /// {@macro storage.amplify_storage_s3.upload_data_options}
  @Deprecated(
    'use StorageUploadDataOptions(pluginOptions: S3UploadDataPluginOptions(...)) instead.',
  )
  const S3UploadDataOptions({
    super.accessLevel = StorageAccessLevel.guest,
    this.getProperties = false,
    super.metadata,
    this.useAccelerateEndpoint = false,
  });

  /// Whether to retrieve properties for the uploaded object using the
  /// `getProperties` API.
  final bool getProperties;

  /// {@macro storage.amplify_storage_s3.transfer_acceleration}
  final bool useAccelerateEndpoint;
}
