// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.download_data_request}
/// A storage download data request.
/// {@endtemplate}
class StorageDownloadDataRequest {
  /// {@macro amplify_core.storage.download_data_request}
  const StorageDownloadDataRequest({
    required this.path,
    this.options,
  });

  /// Path of the object to download.
  final StoragePath path;

  /// Configurable options of the [StorageDownloadDataRequest].
  final StorageDownloadDataOptions? options;
}
