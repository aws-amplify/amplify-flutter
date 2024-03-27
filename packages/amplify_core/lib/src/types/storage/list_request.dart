// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.list_request}
/// Presents a storage list request.
/// {@endtemplate}
class StorageListRequest {
  /// {@macro amplify_core.storage.list_request}
  const StorageListRequest({
    required this.path,
    this.options,
  });

  /// Path to list objects under.
  final StoragePath path;

  /// Configurable options of the [StorageListRequest].
  final StorageListOptions? options;
}
