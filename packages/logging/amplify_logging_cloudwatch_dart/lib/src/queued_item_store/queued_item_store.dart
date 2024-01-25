// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

/// Database for storing strings.
abstract interface class QueuedItemStore {
  /// Insert an item to the end of the queue.
  /// If [enableQueueRotation] is `true` it removes the first item from the
  /// queue and adds the new item to the end of the queue.
  FutureOr<void> addItem(
    String string,
    String timestamp, {
    bool enableQueueRotation = false,
  });

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

/// {@template amplify_logging_cloudwatch_dart_dart.string_database_element}
/// An item stored in the [QueuedItemStore].
/// {@endtemplate}
class QueuedItem {
  /// {@macro amplify_logging_cloudwatch_dart.string_database_element}

  /// The size of the item, in bytes, when stored in the database.
  const QueuedItem({
    required this.id,
    required this.value,
    required this.timestamp,
  }) : _byteSize = value.length + timestamp.length + 8;
  final int _byteSize;

  /// The size of the item, in bytes, when stored in the database.
  int get byteSize => _byteSize;

  /// Returns the size of an item, in bytes.
  static int getByteSize(String value, String timestamp) {
    return value.length + timestamp.length + 8;
  }

  /// The ID in the item.
  final int id;

  /// The value of the item.
  final String value;

  /// The timestamp of the item.
  final String timestamp;
}
