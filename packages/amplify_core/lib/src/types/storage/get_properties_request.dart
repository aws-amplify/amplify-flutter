// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'base/storage_operation_options.dart';

/// {@template amplify_core.storage.get_properties_request}
/// Presents a storage get properties request.
/// {@endtemplate}
class StorageGetPropertiesRequest<Options extends StorageOperationOptions> {
  /// {@macro amplify_core.storage.get_properties_request}
  const StorageGetPropertiesRequest({
    required this.key,
    this.options,
  });

  /// Key of the object to get properties for.
  final String key;

  /// Configurable options of the get properties request.
  final Options? options;
}
