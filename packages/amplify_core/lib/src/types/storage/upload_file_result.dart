// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.upload_file_result}
/// Presents the result of a [StorageUploadFileOperation].
/// {@endtemplate}
class StorageUploadFileResult<Item extends StorageItem> {
  /// {@macro amplify_core.storage.upload_file_result}
  const StorageUploadFileResult({
    required this.uploadedItem,
  });

  /// The uploaded object of the [StorageUploadFileOperation].
  final Item uploadedItem;
}
