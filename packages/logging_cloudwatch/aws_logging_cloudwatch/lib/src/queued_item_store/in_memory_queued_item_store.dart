// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

import 'package:aws_logging_cloudwatch/src/queued_item_store/queued_item_store.dart';

/// {@template aws_logging_cloudwatch.in_memory_queued_item_store}
/// Stores string elements in device memory.
/// {@endtemplate}
class InMemoryQueuedItemStore implements QueuedItemStore {
  /// {@macro aws_logging_cloudwatch.in_memory_queued_item_store}
  InMemoryQueuedItemStore();

  /// The next ID that should be used when adding an item in the DB.
  int _nextId = 0;
  int _currentTotalByteSize = 0;
  final LinkedHashMap<int, QueuedItem> _database =
      LinkedHashMap<int, QueuedItem>();

  int sizeOfQueuedItem(String value) {
    var size = 0;
    size += value.length;
    size += 23; // 23 bytes for the timestamp
    size += 8; // 8 bytes for the id
    return size;
  }

  @override
  void addItem(String string, String timestamp) {
    _currentTotalByteSize += sizeOfQueuedItem(string);
    _database[_nextId] = QueuedItem(
      id: _nextId,
      value: string,
      timestamp: timestamp,
    );
    _nextId++;
  }

  @override
  Iterable<QueuedItem> getCount(int count) {
    return _database.values.take(count).toList();
  }

  @override
  void deleteItems(Iterable<QueuedItem> items) {
    for (final item in items) {
      _currentTotalByteSize -= sizeOfQueuedItem(item.value);
      _database.remove(item.id);
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
