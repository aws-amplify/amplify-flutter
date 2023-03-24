// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.get_properties_request}
/// Presents a storage get properties request.
/// {@endtemplate}
class StorageGetPropertiesRequest {
  /// {@macro amplify_core.storage.get_properties_request}
  const StorageGetPropertiesRequest({
    required this.key,
    this.options,
  });

  /// Key of the object to get properties for.
  final String key;

  /// Configurable options of the [StorageGetPropertiesRequest].
  final StorageGetPropertiesOptions? options;
}
