// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.copy_result}
/// Presents the result of a [StorageCopyOperation].
/// {@endtemplate}
class StorageCopyResult<Item extends StorageItem> {
  /// {@macro amplify_core.storage.copy_result}
  const StorageCopyResult({
    required this.copiedItem,
  });

  /// The result object of the [StorageCopyOperation].
  final Item copiedItem;
}
