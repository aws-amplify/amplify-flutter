// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template storage.amplify_storage_s3.download_file_options}
/// The configurable parameters invoking the Storage S3 plugin `downloadFile` API.
/// {@endtemplate}
class S3DownloadFileOptions extends StorageDownloadFileOptions {
  /// {@macro storage.amplify_storage_s3.download_file_options}
  const S3DownloadFileOptions({
    StorageAccessLevel accessLevel = StorageAccessLevel.guest,
    bool getProperties = false,
  }) : this._(
          accessLevel: accessLevel,
          getProperties: getProperties,
        );

  const S3DownloadFileOptions._({
    super.accessLevel = StorageAccessLevel.guest,
    this.getProperties = false,
    this.targetIdentityId,
  });

  /// {@macro storage.amplify_storage_s3.download_data_options}
  ///
  /// Use this when calling `downloadFile` on an object that belongs to other
  /// user (identified by [targetIdentityId]) rather than the currently signed
  /// user.
  const S3DownloadFileOptions.forIdentity(
    String targetIdentityId, {
    bool getProperties = false,
  }) : this._(
          accessLevel: StorageAccessLevel.protected,
          targetIdentityId: targetIdentityId,
          getProperties: getProperties,
        );

  /// The identity ID of the user who uploaded the object.
  ///
  /// This can be set by using [S3DownloadFileOptions.forIdentity].
  final String? targetIdentityId;

  /// Whether to retrieve properties for the downloaded object using the
  /// `getProperties` API.
  final bool getProperties;
}
