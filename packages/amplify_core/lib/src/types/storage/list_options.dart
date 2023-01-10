// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.list_options}
/// Configurable options to initiate a [StorageListRequest].
/// {@endtemplate}
class StorageListOptions extends StorageOperationOptions {
  /// {@macro amplify_core.storage.list_options}
  const StorageListOptions({
    required super.accessLevel,
    required this.pageSize,
    this.nextToken,
  });

  /// The number of object to be listed in each page.
  final int pageSize;

  /// Token used to list the next page.
  final String? nextToken;
}
