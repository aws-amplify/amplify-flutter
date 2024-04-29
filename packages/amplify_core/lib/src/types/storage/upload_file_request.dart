// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.upload_file_request}
/// Presents a storage upload data request.
/// {@endtemplate}
class StorageUploadFileRequest {
  /// {@macro amplify_core.storage.upload_file_request}
  const StorageUploadFileRequest({
    required this.path,
    required this.localFile,
    this.options,
  });

  /// Path to upload the file to.
  final StoragePath path;

  /// The local file to upload.
  final AWSFile localFile;

  /// The configurable options of the [StorageUploadFileRequest].
  final StorageUploadFileOptions? options;
}
