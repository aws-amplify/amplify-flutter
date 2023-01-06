// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.upload_file_request}
/// Presents a storage upload data request.
/// {@endtemplate}
class StorageUploadFileRequest<Options extends StorageOperationOptions> {
  /// {@macro amplify_core.storage.upload_file_request}
  const StorageUploadFileRequest({
    required this.localFile,
    required this.key,
    this.options,
  });

  /// The key of the object upload to.
  final String key;

  /// The local file to upload.
  final AWSFile localFile;

  /// The configurable options of the [StorageUploadFileRequest].
  final Options? options;
}
