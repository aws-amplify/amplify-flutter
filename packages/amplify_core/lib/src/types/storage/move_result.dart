// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.move_result}
/// Presents the result of a [StorageCopyOperation].
/// {@endtemplate}
class StorageMoveResult<Item extends StorageItem> {
  /// {@macro amplify_core.storage.move_result}
  const StorageMoveResult({
    required this.movedItem,
  });

  /// The result object of the [StorageCopyOperation].
  final Item movedItem;
}
