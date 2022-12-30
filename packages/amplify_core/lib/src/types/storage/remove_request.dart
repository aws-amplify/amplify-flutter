// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.remove_request}
/// Presents a storage copy request.
/// {@endtemplate}
class StorageRemoveRequest<Options extends StorageRemoveOptions> {
  /// {@macro amplify_core.storage.remove_request}
  const StorageRemoveRequest({
    required this.key,
    this.options,
  });

  /// The object key to be removed.
  final String key;

  /// Configurable options of the [StorageRemoveRequest].
  final Options? options;
}
