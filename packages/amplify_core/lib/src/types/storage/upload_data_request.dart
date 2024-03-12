// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.upload_data_request}
/// Presents a storage upload data request.
/// {@endtemplate}
class StorageUploadDataRequest {
  /// {@macro amplify_core.storage.upload_data_request}
  const StorageUploadDataRequest({
    required this.data,
    @Deprecated('Use StorageUploadDataResult.uploadedItem.path instead') required this.key,
    this.options,
  });

  /// The key of the object upload to.
  @Deprecated('Use StorageUploadDataResult.uploadedItem.path instead') final String key;

  /// The data payload to upload.
  final StorageDataPayload data;

  /// The configurable options of the [StorageUploadDataRequest].
  final StorageUploadDataOptions? options;
}
