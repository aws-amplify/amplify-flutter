// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.download_file_request}
/// A storage download file request.
/// {@endtemplate}
class StorageDownloadFileRequest {
  /// {@macro amplify_core.storage.download_file_request}
  const StorageDownloadFileRequest({
    required this.path,
    required this.localFile,
    this.options,
  });

  /// Path of the object to download.
  final StoragePath path;

  /// Reference to the local file that download the object to.
  final AWSFile localFile;

  /// Configurable options of the [StorageDownloadFileRequest].
  final StorageDownloadFileOptions? options;
}
