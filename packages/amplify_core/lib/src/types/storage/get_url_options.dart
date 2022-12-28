// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.get_url_options}
/// Configurable options to initiate a [StorageGetUrlRequest].
/// {@endtemplate}
class StorageGetUrlOptions extends StorageOperationOptions {
  /// {@macro amplify_core.storage.get_url_options}
  const StorageGetUrlOptions({
    required super.accessLevel,
  });
}
