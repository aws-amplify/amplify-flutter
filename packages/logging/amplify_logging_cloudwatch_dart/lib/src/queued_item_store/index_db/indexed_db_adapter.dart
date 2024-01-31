// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: implementation_imports

import 'dart:async';
import 'dart:js_util';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_logging_cloudwatch_dart/src/queued_item_store/queued_item_store.dart';
import 'package:aws_common/src/js/indexed_db.dart';
import 'package:collection/collection.dart';

// TODO(kylechen): Consider merging/refactoring with existing 'amplify_secure_storage_web - _IndexedDBStorage' class
/// {@template amplify_logging_cloudwatch.indexed_db_adapter}
/// Provide indexDB methods for storing/retrieving Strings.
/// {@endtemplate}
class IndexedDbAdapter implements QueuedItemStore {
  /// {@macro amplify_logging_cloudwatch.indexed_db_adapter}
  IndexedDbAdapter();

  /// The name of the database.
  ///
  /// Reference: https://www.w3.org/TR/IndexedDB/#name
  String get databaseName => 'amplify_logging_cloudwatch';

  /// The name of the object store.
  ///
  /// Reference: https://www.w3.org/TR/IndexedDB/#object-store-name
  final storeName = 'logging_cached_logs';

  late final Future<void> _databaseOpenEvent = _openDatabase();

  late final IDBDatabase _database;

  int _currentTotalByteSize = 0;

  /// Checks for IDB availability and attempts to open the database.
  Future<void> _openDatabase() async {
    final db = indexedDB;
    if (db == null) {
      throw const InvalidStateException('IndexedDB is not available');
    }
    final openRequest = db.open(databaseName, 1)
      ..onupgradeneeded = (event) {
        final database = event.target.result;
        final objectStoreNames = database.objectStoreNames;
        if (!objectStoreNames.contains(storeName)) {
          database.createObjectStore(
            storeName,
            keyPath: 'id',
            autoIncrement: true,
          );
        }
      };
    _database = await openRequest.future;
  }

  /// Returns a new [IDBObjectStore] instance after waiting for initialization
  /// to complete.
  IDBObjectStore _getObjectStore() {
    final transaction = _database.transaction(
      storeName,
      mode: IDBTransactionMode.readwrite,
    );
    final store = transaction.objectStore(storeName);
    return store;
  }

  @override
  Future<void> addItem(
    String string,
    String timestamp, {
    bool enableQueueRotation = false,
  }) async {
    if (enableQueueRotation) {
      final toDelete = await getCount(1);
      await deleteItems(toDelete);
    }
    await _databaseOpenEvent;
    await _getObjectStore()
        .push({'value': string, 'timestamp': timestamp}).future;

    _currentTotalByteSize += QueuedItem.getByteSize(string, timestamp);
  }

  @override
  Future<Iterable<QueuedItem>> getCount([int? count]) async {
    final readValues = <QueuedItem>[];

    await _databaseOpenEvent;
    final store = _getObjectStore();
    final request = store.getAll(null, count);

    await request.future;

    for (final elem in request.result) {
      final value = elem as Object;
      final id = getProperty<int>(value, 'id');
      final itemValue = getProperty<String>(value, 'value');
      final timestamp = getProperty<String>(value, 'timestamp');
      readValues.add(
        QueuedItem(id: id, value: itemValue, timestamp: timestamp),
      );
    }
    return readValues;
  }

  @override
  Future<void> deleteItems(Iterable<QueuedItem> items) async {
    if (items.isEmpty) return;

    final idsToDelete = items.map((item) => item.id);

    await _databaseOpenEvent;
    final store = _getObjectStore();

    final ranges = idsToDelete.splitBetween((a, b) => b != a + 1).map(
          (range) => IDBKeyRange.bound(range.first, range.last),
        );
    await Future.wait<void>(
      ranges.map((range) => store.deleteByKeyRange(range).future),
    );

    for (final item in items) {
      _currentTotalByteSize -= item.byteSize;
    }
  }

  @override
  Future<Iterable<QueuedItem>> getAll() async {
    return getCount();
  }

  @override
  bool isFull(int maxSizeInMB) {
    final maxBytes = maxSizeInMB * 1024 * 1024;
    return _currentTotalByteSize >= maxBytes;
  }

  /// Clear the database.
  @override
  Future<void> clear() async {
    await _databaseOpenEvent;
    await _getObjectStore().clear().future;
    _currentTotalByteSize = 0;
  }

  @override
  void close() {}

  /// Check that IndexDB will work on this device.
  static Future<bool> checkIsIndexedDBSupported() async {
    if (indexedDB == null) {
      return false;
    }
    // indexedDB will be non-null in Firefox private browsing,
    // but will fail to open.
    try {
      await indexedDB!.open('test', 1).future;
      return true;
    } on Object {
      return false;
    }
  }
}
