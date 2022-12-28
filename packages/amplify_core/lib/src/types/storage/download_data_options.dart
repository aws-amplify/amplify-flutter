// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.download_data_options}
/// Configurable options to initiate a [StorageDownloadDataRequest].
/// {@endtemplate}
class StorageDownloadDataOptions extends StorageOperationOptions {
  /// {@macro amplify_core.storage.download_data_options}
  const StorageDownloadDataOptions({
    required super.accessLevel,
  });
}
