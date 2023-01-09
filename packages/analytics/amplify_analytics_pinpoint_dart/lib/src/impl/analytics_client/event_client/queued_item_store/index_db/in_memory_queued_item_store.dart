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
  final Queue<QueuedItem> _database = Queue();

  @override
  void add(String string) {
    _database.add(
      QueuedItem(
        id: _nextId,
        value: string,
      ),
    );
    _nextId++;
  }

  @override
  Iterable<QueuedItem> get(int maxToGet) {
    return _database.take(maxToGet);
  }

  @override
  void deleteItems(Iterable<QueuedItem> items) {
    final idsToDelete = items.map((item) => item.id);
    final hashSet = HashSet<int>.from(idsToDelete);
    _database.removeWhere((item) => hashSet.contains(item.id));
  }

  @override
  void clear() {
    _database.clear();
  }

  @override
  void close() {}
}
