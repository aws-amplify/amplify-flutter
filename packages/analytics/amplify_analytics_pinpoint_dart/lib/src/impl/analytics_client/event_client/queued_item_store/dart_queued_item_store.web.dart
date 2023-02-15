// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/index_db/in_memory_queued_item_store.dart';
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/index_db/indexed_db_adapter.dart';

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/queued_item_store.dart';
import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@macro amplify_analytics_pinpoint_dart.dart_queued_item_store}
class DartQueuedItemStore
    with AWSDebuggable, AWSLoggerMixin
    implements QueuedItemStore, Closeable {
  /// {@macro amplify_analytics_pinpoint_dart.index_db_queued_item_store}
  // ignore: avoid_unused_constructor_parameters
  DartQueuedItemStore(String? storagePath);

  late final Future<QueuedItemStore> _database = () async {
    if (await IndexedDbAdapter.checkIsIndexedDBSupported()) {
      return IndexedDbAdapter();
    } else {
      logger.warn(
        'IndexedDB is not available. '
        'Falling back to in-memory storage.',
      );
      return InMemoryQueuedItemStore();
    }
  }();

  @override
  String get runtimeTypeName => 'DartQueuedItemStore';

  @override
  Future<void> addItem(String string) async {
    final db = await _database;
    await db.addItem(string);
  }

  @override
  Future<void> deleteItems(Iterable<QueuedItem> items) async {
    final db = await _database;
    await db.deleteItems(items);
  }

  @override
  Future<Iterable<QueuedItem>> getCount(int count) async {
    final db = await _database;
    return db.getCount(count);
  }

  /// Clear IndexedDB data
  @override
  @visibleForTesting
  Future<void> clear() async {
    final db = await _database;
    return db.clear();
  }

  @override
  void close() {}
}
