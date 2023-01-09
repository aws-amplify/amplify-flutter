// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

/// Database for storing strings
abstract class QueuedItemStore {
  /// Insert an item to the end of the queue.
  FutureOr<void> add(String string);

  /// Get the first [count] items from the queue.
  FutureOr<Iterable<QueuedItem>> get(int count);

  /// Delete [items] from the store.
  FutureOr<void> deleteItems(Iterable<QueuedItem> items);

  /// Clear the queue of items
  FutureOr<void> clear();

  /// Closes this store and release resources
  FutureOr<void> close();
}

/// {@template amplify_analytics_pinpoint_dart.string_database_element}
/// An item stored in the [QueuedItemStore]
/// {@endtemplate}
class QueuedItem {
  /// {@macro amplify_analytics_pinpoint_dart.string_database_element}
  const QueuedItem({required this.id, required this.value});

  /// The ID in the item
  final int id;

  /// The value of the item
  final String value;

  @override
  String toString() => '$id : $value';
}
