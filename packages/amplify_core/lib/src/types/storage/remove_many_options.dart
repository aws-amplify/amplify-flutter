// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.remove_many_options}
/// Configurable options to initiate a [StorageRemoveManyRequest].
/// {@endtemplate}
class StorageRemoveManyOptions extends StorageOperationOptions {
  /// {@macro amplify_core.storage.remove_many_options}
  const StorageRemoveManyOptions({
    required super.accessLevel,
  });
}
