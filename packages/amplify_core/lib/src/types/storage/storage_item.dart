// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'access_level.dart';

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
  });

  final String key;
  final int? size;
  final DateTime? lastModified;
  final String? eTag;
}

/// List of [StorageItem].
typedef StorageItems<Item extends StorageItem> = List<Item>;

/// {@template amplify_core.storage.storage_item_access_level}
/// Presents a storage object with its access level information.
/// {@endtemplate}
class StorageItemWithAccessLevel extends StorageItem {
  /// {@macro amplify_core.storage.storage_item_access_level}
  const StorageItemWithAccessLevel({
    required super.key,
    required this.storageAccessLevel,
  });

  final StorageAccessLevel storageAccessLevel;
}
