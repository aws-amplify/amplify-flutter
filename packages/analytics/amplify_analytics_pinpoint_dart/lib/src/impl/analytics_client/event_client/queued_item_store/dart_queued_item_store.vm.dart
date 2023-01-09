// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/drift/drift_queued_item_store.dart';

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/queued_item_store.dart';
import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@macro amplify_analytics_pinpoint_dart.dart_queued_item_store}
class DartQueuedItemStore implements QueuedItemStore, Closeable {
  /// {@macro amplify_analytics_pinpoint_dart.dart_queued_item_store}
  DartQueuedItemStore(String? storagePath)
      : _database = DriftQueuedItemStore(storagePath!);

  final DriftQueuedItemStore _database;

  @override
  Future<void> add(String string) {
    return _database.add(string);
  }

  @override
  Future<void> deleteItems(Iterable<QueuedItem> items) {
    return _database.deleteItems(items);
  }

  @override
  Future<Iterable<QueuedItem>> get(int maxToGet) {
    return _database.get(maxToGet);
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
