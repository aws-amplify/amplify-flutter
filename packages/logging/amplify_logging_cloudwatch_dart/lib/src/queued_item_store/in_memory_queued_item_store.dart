// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

import 'package:amplify_logging_cloudwatch_dart/src/queued_item_store/queued_item_store.dart';

/// {@template amplify_logging_cloudwatch_dart_dart.in_memory_queued_item_store}
/// Stores string elements in device memory.
/// {@endtemplate}
class InMemoryQueuedItemStore implements QueuedItemStore {
  /// {@macro amplify_logging_cloudwatch_dart.in_memory_queued_item_store}
  InMemoryQueuedItemStore();

  /// The next ID that should be used when adding an item in the DB.
  int _nextId = 0;
  int _currentTotalByteSize = 0;
  final LinkedHashMap<int, QueuedItem> _database =
      LinkedHashMap<int, QueuedItem>();

  @override
  void addItem(
    String string,
    String timestamp, {
    bool enableQueueRotation = false,
  }) {
    if (enableQueueRotation) {
      final toDelete = _database.values.take(1);
      deleteItems(toDelete);
    }

    final queuedItem = QueuedItem(
      id: _nextId,
      value: string,
      timestamp: timestamp,
    );
    _database[_nextId] = queuedItem;
    _nextId++;
    _currentTotalByteSize += queuedItem.byteSize;
  }

  @override
  Iterable<QueuedItem> getCount(int count) {
    return _database.values.take(count).toList();
  }

  @override
  void deleteItems(Iterable<QueuedItem> items) {
    for (final item in items) {
      _database.remove(item.id);
      _currentTotalByteSize -= item.byteSize;
    }
  }

  @override
  void clear() {
    _database.clear();
    _currentTotalByteSize = 0;
  }

  @override
  void close() {}

  @override
  Iterable<QueuedItem> getAll() {
    return _database.values.toList();
  }

  @override
  bool isFull(int maxSizeInMB) {
    final maxBytes = maxSizeInMB * 1024 * 1024;
    return _currentTotalByteSize >= maxBytes;
  }
}
