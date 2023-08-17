// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_logging_cloudwatch/src/queued_item_store/index_db/indexed_db_adapter.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
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
    }
    logger.warn(
      'IndexedDB is not available. '
      'Falling back to in-memory storage.',
    );
    return InMemoryQueuedItemStore();
  }();

  @override
  String get runtimeTypeName => 'DartQueuedItemStore';

  @override
  Future<void> addItem(String string, String timestamp) async {
    final db = await _database;
    await db.addItem(string, timestamp);
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

  @override
  Future<Iterable<QueuedItem>> getAll() async {
    final db = await _database;
    return db.getAll();
  }

  @override
  Future<bool> isFull(int maxSizeInMB) async {
    final db = await _database;
    return db.isFull(maxSizeInMB);
  }

  /// Clear IndexedDB data.
  @override
  @visibleForTesting
  Future<void> clear() async {
    final db = await _database;
    return db.clear();
  }

  @override
  void close() {}
}
