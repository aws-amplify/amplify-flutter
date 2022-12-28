// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.upload_data_result}
/// Presents the result of a [StorageUploadDataOperation].
/// {@endtemplate}
class StorageUploadDataResult<Item extends StorageItem> {
  /// {@macro amplify_core.storage.upload_data_result}
  const StorageUploadDataResult({
    required this.uploadedItem,
  });

  /// The uploaded object of the [StorageUploadDataOperation].
  final Item uploadedItem;
}
