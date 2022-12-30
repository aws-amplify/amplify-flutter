// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';

/// {@template storage.amplify_storage_s3.download_data_result}
/// The result returned by the Storage S3 plugin `downloadData` API.
/// {@endtemplate}
class S3DownloadDataResult extends StorageDownloadDataResult<S3Item> {
  /// {@macro storage.amplify_storage_s3.download_data_result}
  const S3DownloadDataResult({
    required super.bytes,
    required super.downloadedItem,
  });
}
