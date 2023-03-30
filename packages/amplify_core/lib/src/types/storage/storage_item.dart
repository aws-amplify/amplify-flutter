// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/storage/access_level.dart';

/// {@template amplify_core.storage.storage_item}
/// Presents a storage object.
/// {@endtemplate}
class StorageItem {
  /// {@macro amplify_core.storage.storage_item}
  const StorageItem({
    required this.key,
    this.size,
    this.lastModified,
    this.eTag,
    this.metadata = const <String, String>{},
  });

  final String key;
  final int? size;
  final DateTime? lastModified;
  final String? eTag;
  final Map<String, String> metadata;
}

/// {@template amplify_core.storage.storage_item_access_level}
/// Presents a storage object with its access level information.
/// {@endtemplate}
class StorageItemWithAccessLevel<Item extends StorageItem> {
  /// {@macro amplify_core.storage.storage_item_access_level}
  const StorageItemWithAccessLevel({
    required this.storageItem,
    required this.accessLevel,
  });

  final Item storageItem;
  final StorageAccessLevel accessLevel;
}
