// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.list_result}
/// Presents the result of a [StorageListOperation].
/// {@endtemplate}
class StorageListResult<Item extends StorageItem> {
  /// {@macro amplify_core.storage.list_result}
  const StorageListResult(
    this.items, {
    required this.hasNextPage,
    this.nextToken,
    this.excludedSubpaths = const [],
  });

  /// The objects listed in the current page.
  final List<Item> items;

  /// The subpaths that were excluded from [items].
  ///
  /// Only populated when listing with [SubpathStrategy.exclude]; otherwise
  /// this list is empty.
  final List<String> excludedSubpaths;

  /// Whether has next page that can be listed using [nextToken].
  final bool hasNextPage;

  /// Token used to list the next page.
  final String? nextToken;
}
