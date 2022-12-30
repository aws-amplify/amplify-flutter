// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.remove_result}
/// Presents the result of a [StorageRemoveOperation].
/// {@endtemplate}
class StorageRemoveResult<Item extends StorageItem> {
  /// {@macro amplify_core.storage.remove_result}
  const StorageRemoveResult({
    required this.removedItem,
  });

  /// The removed object of the [StorageRemoveOperation].
  final Item removedItem;
}
