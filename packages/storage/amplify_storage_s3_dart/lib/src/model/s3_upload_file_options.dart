// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template storage.amplify_storage_s3.upload_file_options}
/// The configurable parameters invoking the Storage S3 plugin `uploadFile`
/// API.
/// {@endtemplate}
class S3UploadFileOptions extends StorageUploadFileOptions {
  /// {@macro storage.amplify_storage_s3.upload_file_options}
  const S3UploadFileOptions({
    super.accessLevel = StorageAccessLevel.guest,
    this.getProperties = false,
    this.metadata,
  });

  /// The metadata attached to the object to be uploaded.
  final Map<String, String>? metadata;

  /// Whether to retrieve properties for the uploaded object using the
  /// `getProperties` API.
  final bool getProperties;
}
