// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.remove_many_request}
/// Presents a storage remove many request.
/// {@endtemplate}
class StorageRemoveManyRequest<Options extends StorageRemoveManyOptions> {
  /// {@macro amplify_core.storage.remove_many_request}
  const StorageRemoveManyRequest({
    required this.keys,
    this.options,
  });

  /// Object keys to be removed.
  final List<String> keys;

  /// Configurable options of the [StorageRemoveManyRequest].
  final Options? options;
}
