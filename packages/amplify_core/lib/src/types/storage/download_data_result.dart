// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.download_data_result}
/// The result of a [StorageDownloadDataOperation].
/// {@endtemplate}
class StorageDownloadDataResult<Item extends StorageItem> {
  /// {@macro amplify_core.storage.download_data_result}
  const StorageDownloadDataResult({
    required this.bytes,
    required this.downloadedItem,
  });

  /// The data of the downloaded object in bytes.
  final List<int> bytes;

  /// The result object containing the properties retrieved from the
  /// [StorageDownloadDataOperation].
  final Item downloadedItem;
}
