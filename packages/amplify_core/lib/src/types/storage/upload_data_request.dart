// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.upload_data_request}
/// Presents a storage upload data request.
/// {@endtemplate}
class StorageUploadDataRequest {
  /// {@macro amplify_core.storage.upload_data_request}
  const StorageUploadDataRequest({
    required this.path,
    required this.data,
    this.options,
  });

  /// Path to upload the data to.
  final StoragePath path;

  /// The data payload to upload.
  final StorageDataPayload data;

  /// The configurable options of the [StorageUploadDataRequest].
  final StorageUploadDataOptions? options;
}
