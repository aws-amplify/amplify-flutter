// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_logging_cloudwatch_dart/src/queued_item_store/queued_item_store.dart';
import 'package:meta/meta.dart';

/// {@template amplify_logging_cloudwatch.dart_queued_item_store}
/// Stores strings using IndexedDB for web and Drift for all other platforms.
/// {@endtemplate}
class DartQueuedItemStore implements QueuedItemStore, Closeable {
  /// {@macro amplify_logging_cloudwatch.dart_queued_item_store}
  // ignore: avoid_unused_constructor_parameters
  DartQueuedItemStore(AppPathProvider appPathProvider) {
    throw UnimplementedError('constructor has not been implemented.');
  }

  @override
  FutureOr<Iterable<QueuedItem>> getCount(int count) {
    throw UnimplementedError('getCount() has not been implemented.');
  }

  @override
  FutureOr<void> addItem(
    String string,
    String timestamp, {
    bool enableQueueRotation = false,
  }) {
    throw UnimplementedError('addItem() has not been implemented.');
  }

  @override
  FutureOr<void> deleteItems(Iterable<QueuedItem> items) {
    throw UnimplementedError('deleteItems() has not been implemented.');
  }

  @override
  FutureOr<void> close() async {
    throw UnimplementedError('close() has not been implemented.');
  }

  @override
  bool isFull(int maxSizeInMB) {
    throw UnimplementedError('isFull() has not been implemented.');
  }

  @override
  FutureOr<Iterable<QueuedItem>> getAll() {
    throw UnimplementedError('getAll() has not been implemented.');
  }

  @override
  @visibleForTesting
  FutureOr<void> clear() async {
    throw UnimplementedError('clear() has not been implemented.');
  }
}
