// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_util';

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/queued_item_store.dart';
import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:aws_common/src/js/indexed_db.dart';

// TODO(kylechen): Consider merging/refactoring with existing 'amplify_secure_storage_web - _IndexedDBStorage' class
/// {@template amplify_analytics_pinpoint_dart.indexed_db_adapter}
/// Provide indexDB methods for storing/retrieving Strings
/// {@endtemplate}
class IndexedDbAdapter implements QueuedItemStore {
  /// {@macro amplify_analytics_pinpoint_dart.indexed_db_adapter}
  IndexedDbAdapter();

  /// The name of the database
  ///
  /// Reference: https://www.w3.org/TR/IndexedDB/#name
  String get databaseName => 'amplify_analytics_pinpoint';

  /// The name of the object store
  ///
  /// Reference: https://www.w3.org/TR/IndexedDB/#object-store-name
  final storeName = 'analytics_cached_events';

  late final Future<void> _databaseOpenEvent = _openDatabase();

  late final IDBDatabase _database;

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
  Future<void> add(String string) async {
    await _databaseOpenEvent;
    await _getObjectStore().push({'string': string}).future;
  }

  @override
  Future<Iterable<QueuedItem>> get([int? maxToGet]) async {
    final readValues = <QueuedItem>[];

    await _databaseOpenEvent;
    final store = _getObjectStore();
    final request = store.getAll(null, maxToGet);

    await request.future;

    for (final elem in request.result) {
      final value = elem as Object;
      final id = getProperty<int>(value, 'id');
      final string = getProperty<String>(value, 'string');
      readValues.add(
        QueuedItem(id: id, value: string),
      );
    }
    return readValues;
  }

  @override
  Future<void> deleteItems(Iterable<QueuedItem> items) async {
    final idsToDelete = items.map((item) => item.id);
    if (idsToDelete.isEmpty) return;

    await _databaseOpenEvent;
    final store = _getObjectStore();

    // First id in the sequential keyRange to delete
    var start = idsToDelete.first;

    // The last id in the sequential keyRange to delete
    var previous = idsToDelete.first - 1;

    for (final id in idsToDelete) {
      // If the previous id is not sequential with current id
      // Then delete the current range
      if (previous != id - 1) {
        store.deleteByKeyRange(
          IDBKeyRange.bound(start, previous),
        );
        start = id;
      }
      previous = id;
    }
    await store
        .deleteByKeyRange(IDBKeyRange.bound(start, idsToDelete.last))
        .future;
  }

  /// Clear the database
  @override
  Future<void> clear() async {
    await _databaseOpenEvent;
    await _getObjectStore().clear().future;
  }

  @override
  void close() {}

  /// Check that IndexDB will work on this device
  static Future<bool> checkIsIndexedDBSupported() async {
    if (indexedDB == null) {
      return false;
    }
    // indexedDB will be non-null in Firefox private browsing,
    // but will fail to open.
    try {
      final openRequest = indexedDB!.open('test', 1);
      await openRequest.future;
      return true;
    } on Exception {
      return false;
    }
  }
}
