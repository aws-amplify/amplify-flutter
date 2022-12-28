// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.download_file_result}
/// The result of a [StorageDownloadFileOperation].
/// {@endtemplate}
class StorageDownloadFileResult<Item extends StorageItem> {
  /// {@macro amplify_core.storage.download_file_result}
  const StorageDownloadFileResult({
    required this.localFile,
    required this.downloadedItem,
  });

  /// Reference to the local file that download the object to.
  final AWSFile localFile;

  /// The result object containing the properties retrieved from the
  /// [StorageDownloadFileOperation].
  final Item downloadedItem;
}
