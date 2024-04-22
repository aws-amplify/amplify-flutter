// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.remove_many_result}
/// Presents the result of a [StorageRemoveManyOperation].
/// {@endtemplate}
class StorageRemoveManyResult<Item extends StorageItem> {
  /// {@macro amplify_core.storage.remove_many_result}
  const StorageRemoveManyResult({
    required this.removedItems,
  });

  /// The removed objects of the [StorageRemoveManyOperation].
  final List<Item> removedItems;
}
