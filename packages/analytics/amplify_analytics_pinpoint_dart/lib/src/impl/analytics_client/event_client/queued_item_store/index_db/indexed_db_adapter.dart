// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/queued_item_store.dart';
import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:aws_common/src/js/indexed_db.dart';
import 'package:collection/collection.dart';
import 'package:web/web.dart';

// TODO(kylechen): Consider merging/refactoring with existing 'amplify_secure_storage_web - _IndexedDBStorage' class
/// {@template amplify_analytics_pinpoint_dart.indexed_db_adapter}
/// Provide indexDB methods for storing/retrieving Strings.
/// {@endtemplate}
class IndexedDbAdapter implements QueuedItemStore {
  /// {@macro amplify_analytics_pinpoint_dart.indexed_db_adapter}
  IndexedDbAdapter();

  /// The name of the database.
  ///
  /// Reference: https://www.w3.org/TR/IndexedDB/#name
  String get databaseName => 'amplify_analytics_pinpoint';

  /// The name of the object store.
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
    void onUpgradeNeeded(IDBVersionChangeEvent event) {
      final database = event.target?.getProperty<IDBDatabase>('result'.toJS);
      final objectStoreNames = database?.objectStoreNames;
      if (!(objectStoreNames?.contains(storeName) ?? false)) {
        database?.createObjectStore(
          storeName,
          IDBObjectStoreParameters(keyPath: 'id'.toJS, autoIncrement: true),
        );
      }
    }

    final openRequest = db.open(databaseName, 1)
      ..onupgradeneeded = onUpgradeNeeded.toJS;

    final result = await openRequest.future;
    if (result.isA<IDBDatabase>()) {
      result as IDBDatabase;
      _database = result;
    } else {
      throw const InvalidStateException('IDBOpenDBRequest failed');
    }
  }

  /// Returns a new [IDBObjectStore] instance after waiting for initialization
  /// to complete.
  IDBObjectStore _getObjectStore() {
    final transaction = _database.transaction(storeName.toJS, 'readwrite');
    final store = transaction.objectStore(storeName);
    return store;
  }

  @override
  Future<void> addItem(String string) async {
    await _databaseOpenEvent;
    final item = JSObject()..setProperty('value'.toJS, string.toJS);

    await _getObjectStore().add(item).future;
  }

  @override
  Future<Iterable<QueuedItem>> getCount([int? count]) async {
    final readValues = <QueuedItem>[];

    await _databaseOpenEvent;
    final store = _getObjectStore();

    late IDBRequest request;
    if (count == null) {
      request = store.getAll();
    } else {
      request = store.getAll(null, count);
    }

    await request.future;
    final jsResult = request.result;
    var result = <JSObject>[];
    if (jsResult.isA<JSArray<JSObject>>()) {
      jsResult as JSArray<JSObject>;
      result = jsResult.toDart;
    }

    for (final elem in result) {
      final id = elem.getProperty<JSNumber>('id'.toJS).toDartInt;
      final string = elem.getProperty<JSString>('value'.toJS).toDart;

      readValues.add(QueuedItem(id: id, value: string));
    }
    return readValues;
  }

  @override
  Future<void> deleteItems(Iterable<QueuedItem> items) async {
    if (items.isEmpty) return;

    final idsToDelete = items.map((item) => item.id);

    await _databaseOpenEvent;
    final store = _getObjectStore();

    final ranges = idsToDelete
        .splitBetween((a, b) => b != a + 1)
        .map((range) => IDBKeyRange.bound(range.first.toJS, range.last.toJS));
    await Future.wait<void>(ranges.map((range) => store.delete(range).future));
  }

  /// Clear the database.
  @override
  Future<void> clear() async {
    await _databaseOpenEvent;
    await _getObjectStore().clear().future;
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
      final openRequest = indexedDB!.open('test', 1);
      await openRequest.future;
      return true;
    } on Object {
      return false;
    }
  }
}
