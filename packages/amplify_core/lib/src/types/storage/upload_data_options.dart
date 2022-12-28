// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.upload_data_options}
/// Configurable options to initiate a [StorageUploadDataRequest].
/// {@endtemplate}
class StorageUploadDataOptions extends StorageOperationOptions {
  /// {@macro amplify_core.storage.upload_data_options}
  const StorageUploadDataOptions({
    required super.accessLevel,
  });
}
