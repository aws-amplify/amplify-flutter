// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.download_data_options}
/// The configurable parameters invoking theStorage S3 plugin `downloadData` API.
/// {@endtemplate}
class S3DownloadDataOptions extends StorageDownloadDataOptions {
  /// {@macro storage.amplify_storage_s3.download_data_options}
  const S3DownloadDataOptions({
    StorageAccessLevel accessLevel = StorageAccessLevel.guest,
    bool getProperties = false,
    S3DataBytesRange? bytesRange,
  }) : this._(
          accessLevel: accessLevel,
          bytesRange: bytesRange,
          getProperties: getProperties,
        );

  const S3DownloadDataOptions._({
    super.accessLevel = StorageAccessLevel.guest,
    this.getProperties = false,
    this.bytesRange,
    this.targetIdentityId,
  });

  /// {@macro storage.amplify_storage_s3.download_data_options}
  ///
  /// Use this when calling `downloadData` on an object that belongs to another
  /// user (identified by [targetIdentityId]) rather than the currently
  /// signed-in user.
  const S3DownloadDataOptions.forIdentity(
    String targetIdentityId, {
    bool getProperties = false,
    S3DataBytesRange? bytesRange,
  }) : this._(
          accessLevel: StorageAccessLevel.protected,
          targetIdentityId: targetIdentityId,
          getProperties: getProperties,
          bytesRange: bytesRange,
        );

  /// The byte range to download from the object.
  final S3DataBytesRange? bytesRange;

  /// The identity ID of another user who uploaded the object.
  ///
  /// This can be set by using [S3DownloadDataOptions.forIdentity].
  final String? targetIdentityId;

  /// Whether to retrieve properties for the downloaded object using the
  /// `getProperties` API.
  final bool getProperties;
}
