// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.get_properties_result}
/// Presents the result of a [StorageGetPropertiesOperation].
/// {@endtemplate}
class StorageGetPropertiesResult<Item extends StorageItem> {
  /// {@macro amplify_core.storage.get_properties_result}
  const StorageGetPropertiesResult({
    required this.storageItem,
  });

  /// The result object containing the properties retrieved from the
  /// [StorageGetPropertiesOperation].
  final Item storageItem;
}
