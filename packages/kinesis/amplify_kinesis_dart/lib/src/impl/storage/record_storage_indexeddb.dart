// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:amplify_kinesis_dart/src/impl/kinesis_record.dart';
import 'package:amplify_kinesis_dart/src/impl/storage/record_storage.dart';
// ignore: implementation_imports
import 'package:aws_common/src/js/indexed_db.dart';
import 'package:web/web.dart';

/// {@template amplify_kinesis.indexeddb_record_storage}
/// IndexedDB-backed [RecordStorage] implementation for web.
///
/// Use [create] to open the database and eagerly compute the initial
/// cache size before constructing the storage.
/// {@endtemplate}
final class IndexedDbRecordStorage extends RecordStorage {
  IndexedDbRecordStorage._({
    required super.maxCacheBytes,
    required super.initialCachedSize,
    required IDBDatabase database,
  }) : _database = database;

  /// {@macro amplify_kinesis.indexeddb_record_storage}
  ///
  /// Opens the IndexedDB database and eagerly computes the initial
  /// cache size.
  static Future<IndexedDbRecordStorage> create({
    required int maxCacheBytes,
    required String identifier,
  }) async {
    final database = await _openDatabase('amplify_kinesis_$identifier');
    final initialSize = await _computeCacheSize(database);
    return IndexedDbRecordStorage._(
      maxCacheBytes: maxCacheBytes,
      initialCachedSize: initialSize,
      database: database,
    );
  }

  final IDBDatabase _database;
  static const _storeName = 'kinesis_records';

  /// Returns an object store handle within a new transaction.
  IDBObjectStore _getStore([String mode = 'readwrite']) {
    final tx = _database.transaction(_storeName.toJS, mode);
    return tx.objectStore(_storeName);
  }

  @override
  Future<void> writeRecord(RecordInput record) async {
    final obj = JSObject()
      ..setProperty('stream_name'.toJS, record.streamName.toJS)
      ..setProperty('partition_key'.toJS, record.partitionKey.toJS)
      ..setProperty('data'.toJS, record.data.toJS)
      ..setProperty('data_size'.toJS, record.dataSize.toJS)
      ..setProperty('retry_count'.toJS, 0.toJS)
      ..setProperty(
        'created_at'.toJS,
        record.createdAt.millisecondsSinceEpoch.toJS,
      );
    await _getStore().add(obj).future;
  }

  @override
  Future<Map<String, List<Record>>> doGetRecordsByStream() async {
    final all = await _getAllRecords();
    all.sort((a, b) {
      final cmp = a.streamName.compareTo(b.streamName);
      if (cmp != 0) return cmp;
      return a.id.compareTo(b.id);
    });

    final result = <String, List<Record>>{};
    final streamSizes = <String, int>{};
    final streamCounts = <String, int>{};

    for (final record in all) {
      final stream = record.streamName;
      final count = streamCounts[stream] ?? 0;
      final size = streamSizes[stream] ?? 0;
      if (count >= maxRecordsPerStream) continue;
      if (size + record.dataSize > maxBytesPerStream) continue;

      result.putIfAbsent(stream, () => []).add(record);
      streamCounts[stream] = count + 1;
      streamSizes[stream] = size + record.dataSize;
    }
    return result;
  }

  @override
  Future<void> doDeleteRecords(Iterable<int> ids) async {
    if (ids.isEmpty) return;
    final store = _getStore();
    final futures = <Future<JSAny?>>[];
    for (final id in ids) {
      futures.add(store.delete(id.toJS).future);
    }
    await Future.wait(futures);
  }

  @override
  Future<int> doQueryCacheSize() => _computeCacheSize(_database);

  @override
  Future<void> doIncrementRetryCount(Iterable<int> ids) async {
    if (ids.isEmpty) return;
    final store = _getStore();
    for (final id in ids) {
      final request = store.get(id.toJS);
      await request.future;
      final obj = request.result;
      if (obj == null || obj.isUndefinedOrNull) continue;
      final jsObj = obj as JSObject;
      final current = jsObj.getProperty<JSNumber>('retry_count'.toJS).toDartInt;
      jsObj.setProperty('retry_count'.toJS, (current + 1).toJS);
      await store.put(jsObj).future;
    }
  }

  @override
  Future<int> doGetRecordCount() async {
    final store = _getStore();
    final request = store.count();
    await request.future;
    final result = request.result;
    if (result.isA<JSNumber>()) {
      return (result as JSNumber).toDartInt;
    }
    return 0;
  }

  @override
  Future<void> doClearRecords() async {
    await _getStore().clear().future;
  }

  @override
  Future<void> doClose() async {
    try {
      _database.close();
    } on Object {
      // Ignore close errors.
    }
  }

  /// Reads all records from the object store.
  Future<List<Record>> _getAllRecords() async {
    final store = _getStore();
    final request = store.getAll();
    await request.future;
    final jsResult = request.result;
    if (!jsResult.isA<JSArray<JSObject>>()) return [];

    final jsArray = (jsResult as JSArray<JSObject>).toDart;
    return jsArray.map(_jsToRecord).toList();
  }

  static Record _jsToRecord(JSObject obj) {
    return Record(
      id: obj.getProperty<JSNumber>('id'.toJS).toDartInt,
      streamName: obj.getProperty<JSString>('stream_name'.toJS).toDart,
      partitionKey: obj.getProperty<JSString>('partition_key'.toJS).toDart,
      data: (obj.getProperty<JSUint8Array>('data'.toJS)).toDart,
      dataSize: obj.getProperty<JSNumber>('data_size'.toJS).toDartInt,
      retryCount: obj.getProperty<JSNumber>('retry_count'.toJS).toDartInt,
      createdAt: obj.getProperty<JSNumber>('created_at'.toJS).toDartInt,
    );
  }

  /// Opens an IndexedDB database, creating the object store if needed.
  static Future<IDBDatabase> _openDatabase(String dbName) async {
    final db = indexedDB;
    if (db == null) {
      throw StateError('IndexedDB is not available');
    }

    void onUpgradeNeeded(IDBVersionChangeEvent event) {
      final database = event.target?.getProperty<IDBDatabase>('result'.toJS);
      final names = database?.objectStoreNames;
      if (!(names?.contains(_storeName) ?? false)) {
        database!
            .createObjectStore(
              _storeName,
              IDBObjectStoreParameters(keyPath: 'id'.toJS, autoIncrement: true),
            )
            .createIndex(
              'stream_name_idx',
              'stream_name'.toJS,
              IDBIndexParameters(unique: false),
            );
      }
    }

    final request = db.open(dbName, 1)..onupgradeneeded = onUpgradeNeeded.toJS;
    final result = await request.future;
    if (result.isA<IDBDatabase>()) {
      return result as IDBDatabase;
    }
    throw StateError('Failed to open IndexedDB: $dbName');
  }

  /// Computes cache size from DB using a cursor.
  static Future<int> _computeCacheSize(IDBDatabase database) async {
    final tx = database.transaction(_storeName.toJS, 'readonly');
    final store = tx.objectStore(_storeName);
    final request = store.openCursor();
    final completer = Completer<int>();
    var total = 0;

    request
      ..onsuccess = ((Event event) {
        final cursor = request.result;
        if (cursor == null || cursor.isUndefinedOrNull) {
          completer.complete(total);
          return;
        }
        final idbCursor = cursor as IDBCursorWithValue;
        final value = idbCursor.value;
        if (!value.isUndefinedOrNull) {
          total += (value as JSObject)
              .getProperty<JSNumber>('data_size'.toJS)
              .toDartInt;
        }
        idbCursor.continue_();
      }).toJS
      ..onerror = ((Event event) {
        completer.completeError(
          StateError('Failed to compute cache size from IndexedDB'),
        );
      }).toJS;

    return completer.future;
  }

  /// Checks whether IndexedDB is available and functional.
  static Future<bool> checkIsSupported() async {
    if (indexedDB == null) return false;
    try {
      final request = indexedDB!.open('kinesis_idb_test', 1);
      await request.future;
      return true;
    } on Object {
      return false;
    }
  }
}
