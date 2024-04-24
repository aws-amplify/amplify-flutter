// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.remove_many_request}
/// Presents a storage remove many request.
/// {@endtemplate}
class StorageRemoveManyRequest {
  /// {@macro amplify_core.storage.remove_many_request}
  const StorageRemoveManyRequest({
    required this.paths,
    this.options,
  });

  /// Object keys to be removed.
  final List<StoragePath> paths;

  /// Configurable options of the [StorageRemoveManyRequest].
  final StorageRemoveManyOptions? options;
}
