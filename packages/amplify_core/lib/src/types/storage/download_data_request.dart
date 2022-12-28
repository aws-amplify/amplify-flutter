// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.download_data_request}
/// A storage download data request.
/// {@endtemplate}
class StorageDownloadDataRequest<Options extends StorageDownloadDataOptions> {
  /// {@macro amplify_core.storage.download_data_request}
  const StorageDownloadDataRequest({
    required this.key,
    this.options,
  });

  /// Key of the object to download.
  final String key;

  /// Configurable options of the download request.
  final Options? options;
}
