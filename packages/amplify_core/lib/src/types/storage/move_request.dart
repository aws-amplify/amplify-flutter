// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.move_request}
/// Presents a storage copy request.
/// {@endtemplate}
class StorageMoveRequest<Item extends StorageItem,
    Options extends StorageMoveOptions> {
  /// {@macro amplify_core.storage.move_request}
  const StorageMoveRequest({
    required this.source,
    required this.destination,
    this.options,
  });

  /// Move source object.
  final StorageItemWithAccessLevel<Item> source;

  /// Move destination object.
  final StorageItemWithAccessLevel<Item> destination;

  /// Configurable options of the [StorageMoveRequest].
  final Options? options;
}
