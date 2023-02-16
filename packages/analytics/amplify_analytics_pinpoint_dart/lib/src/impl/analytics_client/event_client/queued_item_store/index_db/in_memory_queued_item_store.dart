// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/queued_item_store.dart';

/// {@template amplify_analytics_pinpoint_dart.in_memory_queued_item_store}
/// Stores string elements in device memory
/// {@endtemplate}
class InMemoryQueuedItemStore implements QueuedItemStore {
  /// {@macro amplify_analytics_pinpoint_dart.in_memory_queued_item_store}
  InMemoryQueuedItemStore();

  /// The next ID that should be used when adding an item in the DB
  int _nextId = 0;
  final LinkedHashMap<int, QueuedItem> _database =
      LinkedHashMap<int, QueuedItem>();

  @override
  void addItem(String string) {
    _database[_nextId] = QueuedItem(
      id: _nextId,
      value: string,
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
      _database.remove(item.id);
    }
  }

  @override
  void clear() {
    _database.clear();
  }

  @override
  void close() {}
}
