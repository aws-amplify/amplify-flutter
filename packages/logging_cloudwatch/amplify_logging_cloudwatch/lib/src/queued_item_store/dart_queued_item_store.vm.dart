// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_logging_cloudwatch/src/queued_item_store/drift/drift_queued_item_store.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
import 'package:meta/meta.dart';

/// {@macro amplify_analytics_pinpoint_dart.dart_queued_item_store}
class DartQueuedItemStore implements QueuedItemStore, Closeable {
  /// {@macro amplify_analytics_pinpoint_dart.dart_queued_item_store}
  factory DartQueuedItemStore(String? storagePath) {
    assert(
      storagePath != null,
      'A storage path is required on VM for locating the DB',
    );
    final database = DriftQueuedItemStore(storagePath!);
    return DartQueuedItemStore._(database);
  }

  DartQueuedItemStore._(this._database);

  final DriftQueuedItemStore _database;

  @override
  Future<void> addItem(String string, String timestamp) {
    return _database.addItem(string, timestamp);
  }

  @override
  Future<void> deleteItems(Iterable<QueuedItem> items) {
    return _database.deleteItems(items);
  }

  @override
  Future<Iterable<QueuedItem>> getCount(int count) {
    return _database.getCount(count);
  }

  @override
  Future<Iterable<QueuedItem>> getAll() {
    return _database.getAll();
  }

  @override
  Future<bool> isFull(int maxSizeInMB) {
    return _database.isFull(maxSizeInMB);
  }

  @override
  @visibleForTesting
  Future<void> clear() async {
    return _database.clear();
  }

  @override
  Future<void> close() async {
    return _database.close();
  }
}
