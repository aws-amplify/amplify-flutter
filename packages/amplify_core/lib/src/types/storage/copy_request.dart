// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.copy_request}
/// Presents a storage copy request.
/// {@endtemplate}
class StorageCopyRequest<Item extends StorageItem,
    Options extends StorageCopyOptions> {
  /// {@macro amplify_core.storage.copy_request}
  const StorageCopyRequest({
    required this.source,
    required this.destination,
    this.options,
  });

  /// Copy source.
  final StorageItemWithAccessLevel<Item> source;

  /// Copy destination.
  final StorageItemWithAccessLevel<Item> destination;

  /// Configurable options of the [StorageCopyRequest].
  final Options? options;
}
