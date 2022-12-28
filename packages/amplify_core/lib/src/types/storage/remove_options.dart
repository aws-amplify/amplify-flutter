// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.remove_options}
/// Configurable options to initiate a [StorageRemoveRequest].
/// {@endtemplate}
class StorageRemoveOptions extends StorageOperationOptions {
  /// {@macro amplify_core.storage.remove_options}
  const StorageRemoveOptions({
    required super.accessLevel,
  });
}
