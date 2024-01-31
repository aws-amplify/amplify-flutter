// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_logging_cloudwatch_dart/src/queued_item_store/drift/drift_queued_item_store.dart';
// ignore: implementation_imports
import 'package:amplify_logging_cloudwatch_dart/src/queued_item_store/queued_item_store.dart';
import 'package:meta/meta.dart';

/// {@macro amplify_logging_cloudwatch.dart_queued_item_store}
class DartQueuedItemStore implements QueuedItemStore, Closeable {
  /// {@macro amplify_logging_cloudwatch.dart_queued_item_store}
  factory DartQueuedItemStore(AppPathProvider pathProvider) {
    final FutureOr<String> path = pathProvider.getApplicationSupportPath();
    final database = DriftQueuedItemStore(path);
    return DartQueuedItemStore._(database);
  }

  DartQueuedItemStore._(this._database);

  final DriftQueuedItemStore _database;

  @override
  Future<void> addItem(
    String string,
    String timestamp, {
    bool enableQueueRotation = false,
  }) async {
    return _database.addItem(
      string,
      timestamp,
      enableQueueRotation: enableQueueRotation,
    );
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
  bool isFull(int maxSizeInMB) {
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
