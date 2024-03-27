// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_core.storage.storage_item}
/// Presents a storage object.
/// {@endtemplate}
class StorageItem {
  /// {@macro amplify_core.storage.storage_item}
  const StorageItem({
    this.key,
    // TODO(Jordan-Nelson): make required
    this.path = '',
    this.size,
    this.lastModified,
    this.eTag,
    this.metadata = const <String, String>{},
  });

  // TODO(Jordan-Nelson): Remove key
  final String? key;
  final String path;
  final int? size;
  final DateTime? lastModified;
  final String? eTag;
  final Map<String, String> metadata;
}
