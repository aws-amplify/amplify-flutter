// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.remove_many_result}
/// Presents the result of a [StorageRemoveManyOperation].
/// {@endtemplate}
class StorageRemoveManyResult<Item extends StorageItem, Error extends Object> {
  /// {@macro amplify_core.storage.remove_many_result}
  const StorageRemoveManyResult({
    required this.removedItems,
    required this.errors,
  });

  /// The removed objects of the [StorageRemoveManyOperation].
  final List<Item> removedItems;

  /// The errors that occurred when removing the specified items.
  final List<Error> errors;
}
