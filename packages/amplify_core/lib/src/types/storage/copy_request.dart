// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.copy_request}
/// Presents a storage copy request.
/// {@endtemplate}
class StorageCopyRequest<Item extends StorageItem> {
  /// {@macro amplify_core.storage.copy_request}
  const StorageCopyRequest({
    required this.source,
    required this.destination,
    this.options,
  });

  /// Copy source.
  final StoragePath source;

  /// Copy destination.
  final StoragePath destination;

  /// Configurable options of the [StorageCopyRequest].
  final StorageCopyOptions? options;
}
