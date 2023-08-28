// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

/// Database for storing strings.
abstract interface class QueuedItemStore {
  /// Insert an item to the end of the queue.
  FutureOr<void> addItem(String string, String timestamp);

  /// Get the first [count] items from the queue.
  FutureOr<Iterable<QueuedItem>> getCount(int count);

  /// Delete [items] from the store.
  FutureOr<void> deleteItems(Iterable<QueuedItem> items);

  /// Get all items from the queue.
  FutureOr<Iterable<QueuedItem>> getAll();

  /// Whether the queue size is reached [maxSizeInMB].
  FutureOr<bool> isFull(int maxSizeInMB);

  /// Clear the queue of items.
  FutureOr<void> clear();

  /// Closes this store and release resources.
  FutureOr<void> close();
}

/// {@template aws_logging_cloudwatch.string_database_element}
/// An item stored in the [QueuedItemStore].
/// {@endtemplate}
class QueuedItem {
  /// {@macro aws_logging_cloudwatch.string_database_element}
  const QueuedItem({
    required this.id,
    required this.value,
    required this.timestamp,
  });

  /// The ID in the item.
  final int id;

  /// The value of the item.
  final String value;

  /// The timestamp of the item.
  final String timestamp;
}
