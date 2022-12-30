// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.download_file_result}
/// The result returned by the Storage S3 plugin `downloadFile` API.
/// {@endtemplate}
class S3DownloadFileResult extends StorageDownloadFileResult<S3Item> {
  /// {@macro storage.amplify_storage_s3.download_file_result}
  const S3DownloadFileResult({
    required super.localFile,
    required super.downloadedItem,
  });
}
