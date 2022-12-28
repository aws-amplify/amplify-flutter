// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.get_properties_options}
/// Configurable options to initiate a [StorageGetPropertiesRequest].
/// {@endtemplate}
class StorageGetPropertiesOptions extends StorageOperationOptions {
  /// {@macro amplify_core.storage.get_properties_options}
  const StorageGetPropertiesOptions({
    required super.accessLevel,
  });
}
