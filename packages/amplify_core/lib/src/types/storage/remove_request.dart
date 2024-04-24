// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.remove_request}
/// Presents a storage copy request.
/// {@endtemplate}
class StorageRemoveRequest {
  /// {@macro amplify_core.storage.remove_request}
  const StorageRemoveRequest({
    required this.path,
    this.options,
  });

  /// The object key to be removed.
  final StoragePath path;

  /// Configurable options of the [StorageRemoveRequest].
  final StorageRemoveOptions? options;
}
