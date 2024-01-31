// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: implementation_imports

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_logging_cloudwatch_dart/src/queued_item_store/in_memory_queued_item_store.dart';
import 'package:amplify_logging_cloudwatch_dart/src/queued_item_store/index_db/indexed_db_adapter.dart';
import 'package:amplify_logging_cloudwatch_dart/src/queued_item_store/queued_item_store.dart';
import 'package:meta/meta.dart';

/// {@macro amplify_logging_cloudwatch.dart_queued_item_store}
class DartQueuedItemStore
    with AWSDebuggable, AmplifyLoggerMixin
    implements QueuedItemStore, Closeable {
  /// {@macro amplify_logging_cloudwatch.index_db_queued_item_store}
  // ignore: avoid_unused_constructor_parameters
  DartQueuedItemStore(AppPathProvider appPathProvider);

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
  AmplifyLogger get logger => AmplifyLogger.category(Category.logging);

  @override
  Future<void> addItem(
    String string,
    String timestamp, {
    bool enableQueueRotation = false,
  }) async {
    final db = await _database;
    await db.addItem(
      string,
      timestamp,
      enableQueueRotation: enableQueueRotation,
    );
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
