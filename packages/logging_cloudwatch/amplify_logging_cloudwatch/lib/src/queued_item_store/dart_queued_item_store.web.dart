// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_logging_cloudwatch/src/queued_item_store/index_db/indexed_db_adapter.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
import 'package:meta/meta.dart';

/// {@macro amplify_logging_cloudwatch.dart_queued_item_store}
class DartQueuedItemStore
    with AWSDebuggable, AWSLoggerMixin
    implements QueuedItemStore, Closeable {
  /// {@macro amplify_logging_cloudwatch.index_db_queued_item_store}
  // ignore: avoid_unused_constructor_parameters
  DartQueuedItemStore(String? storagePath);

  late final QueuedItemStore _database = () {
    if (IndexedDbAdapter.checkIsIndexedDBSupported()) {
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
  Future<void> addItem(
    String string,
    String timestamp, {
    bool enableQueueRotation = false,
  }) async {
    await _database.addItem(
      string,
      timestamp,
      enableQueueRotation: enableQueueRotation,
    );
  }

  @override
  Future<void> deleteItems(Iterable<QueuedItem> items) async {
    await _database.deleteItems(items);
  }

  @override
  Future<Iterable<QueuedItem>> getCount(int count) async {
    return _database.getCount(count);
  }

  @override
  Future<Iterable<QueuedItem>> getAll() async {
    return _database.getAll();
  }

  @override
  bool isFull(int maxSizeInMB) {
    return _database.isFull(maxSizeInMB);
  }

  /// Clear IndexedDB data.
  @override
  @visibleForTesting
  Future<void> clear() async {
    return _database.clear();
  }

  @override
  void close() {}
}
