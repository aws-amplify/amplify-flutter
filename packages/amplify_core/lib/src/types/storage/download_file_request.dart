// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.download_file_request}
/// A storage download file request.
/// {@endtemplate}
class StorageDownloadFileRequest<Options extends StorageDownloadFileOptions> {
  /// {@macro amplify_core.storage.download_file_request}
  const StorageDownloadFileRequest({
    required this.key,
    required this.localFile,
    this.options,
  });

  /// Key of the object to download.
  final String key;

  /// Reference to the local file that download the object to.
  final AWSFile localFile;

  /// Configurable options of the download request.
  final Options? options;
}
