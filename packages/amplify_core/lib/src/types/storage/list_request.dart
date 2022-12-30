// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.list_request}
/// Presents a storage list request.
/// {@endtemplate}
class StorageListRequest<Options extends StorageListOptions> {
  /// {@macro amplify_core.storage.list_request}
  const StorageListRequest({
    this.path,
    this.options,
  });

  /// Path to list objects under.
  final String? path;

  /// Configurable options of the list request.
  final Options? options;
}
