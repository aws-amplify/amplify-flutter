// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';
import 'dart:typed_data';

import 'package:amplify_kinesis_dart/src/model/kinesis_record.dart';
import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';
import 'package:web/web.dart' as web;

/// {@template amplify_kinesis.kinesis_indexeddb_record_storage}
/// KDS-specific IndexedDB [RecordStorage] for web platforms.
///
/// Persists the `partition_key` property that is unique to Kinesis Data
/// Streams. Records are stored in an IndexedDB object store and returned
/// as [KinesisRecord] instances.
/// {@endtemplate}
class KinesisIndexedDbRecordStorage extends RecordStorage {
  /// {@macro amplify_kinesis.kinesis_indexeddb_record_storage}
  KinesisIndexedDbRecordStorage._({
    required web.IDBDatabase database,
    required super.maxCacheBytes,
    required super.maxRecordsPerBatch,
    required super.maxBytesPerBatch,
    required super.maxRecordSizeBytes,
    super.initialCachedSize,
  }) : _db = database;

  static const _storeName = 'kinesis_records';
  static const _dbPrefix = 'amplify_kinesis_';

  final web.IDBDatabase _db;

  /// Opens (or creates) the IndexedDB database and returns a ready storage.
  static Future<KinesisIndexedDbRecordStorage> create({
    required String identifier,
    required int maxCacheBytes,
    required int maxRecordsPerBatch,
    required int maxBytesPerBatch,
    required int maxRecordSizeBytes,
  }) async {
    final dbName = '$_dbPrefix$identifier';
    final db = await _openDatabase(dbName);
    final initialSize = await _queryCacheSize(db);
    return KinesisIndexedDbRecordStorage._(
      database: db,
      maxCacheBytes: maxCacheBytes,
      maxRecordsPerBatch: maxRecordsPerBatch,
      maxBytesPerBatch: maxBytesPerBatch,
      maxRecordSizeBytes: maxRecordSizeBytes,
      initialCachedSize: initialSize,
    );
  }

  static Future<web.IDBDatabase> _openDatabase(String name) {
    final completer = Completer<web.IDBDatabase>();
    final request = web.window.self.indexedDB.open(name, 1);

    request.onupgradeneeded = ((web.IDBVersionChangeEvent event) {
      final db =
          (event.target! as web.IDBOpenDBRequest).result as web.IDBDatabase;
      if (!db.objectStoreNames.contains(_storeName)) {
        final store = db.createObjectStore(
          _storeName,
          web.IDBObjectStoreParameters(keyPath: 'id'.toJS, autoIncrement: true),
        );
        store.createIndex('stream_name', 'stream_name'.toJS);
      }
    }).toJS;

    request.onsuccess = ((web.Event event) {
      completer.complete(
        (event.target! as web.IDBOpenDBRequest).result as web.IDBDatabase,
      );
    }).toJS;

    request.onerror = ((web.Event event) {
      completer.completeError(
        StateError('Failed to open IndexedDB: ${event.type}'),
      );
    }).toJS;

    return completer.future;
  }

  static Future<T> _completeRequest<T>(web.IDBRequest request) {
    final completer = Completer<T>();
    request.onsuccess = ((web.Event event) {
      completer.complete((event.target! as web.IDBRequest).result as T);
    }).toJS;
    request.onerror = ((web.Event event) {
      completer.completeError(
        StateError('IndexedDB request failed: ${event.type}'),
      );
    }).toJS;
    return completer.future;
  }

  web.IDBObjectStore _store(String mode) {
    final tx = _db.transaction(_storeName.toJS, mode);
    return tx.objectStore(_storeName);
  }

  @override
  Future<void> writeRecord(RecordInput record) async {
    final kinesisInput = record as KinesisRecordInput;
    final store = _store('readwrite');
    final obj = <String, Object>{
      'stream_name': kinesisInput.streamName,
      'partition_key': kinesisInput.partitionKey,
      'data': kinesisInput.data,
      'data_size': kinesisInput.dataSize,
      'retry_count': 0,
      'created_at': kinesisInput.createdAt.millisecondsSinceEpoch,
    }.jsify();
    await _completeRequest<JSAny?>(store.add(obj));
  }

  @override
  Future<Map<String, List<Record>>> doGetRecordsByStream() async {
    final store = _store('readonly');
    final request = store.openCursor();
    final result = <String, List<Record>>{};
    final streamSizes = <String, int>{};
    final streamCounts = <String, int>{};

    final completer = Completer<void>();
    request.onsuccess = ((web.Event event) {
      final cursor =
          (event.target! as web.IDBRequest).result as web.IDBCursorWithValue?;
      if (cursor == null) {
        if (!completer.isCompleted) completer.complete();
        return;
      }
      final value = (cursor.value as JSObject).dartify()! as Map;
      final record = _mapToRecord(cursor.key! as JSNumber, value);
      final stream = record.streamName;
      final count = streamCounts[stream] ?? 0;
      final size = streamSizes[stream] ?? 0;

      if (count < maxRecordsPerBatch &&
          size + record.dataSize <= maxBytesPerBatch) {
        result.putIfAbsent(stream, () => []).add(record);
        streamCounts[stream] = count + 1;
        streamSizes[stream] = size + record.dataSize;
      }
      cursor.continue_();
    }).toJS;
    request.onerror = ((web.Event event) {
      if (!completer.isCompleted) {
        completer.completeError(
          StateError('IndexedDB cursor failed: ${event.type}'),
        );
      }
    }).toJS;
    await completer.future;

    return result;
  }

  KinesisRecord _mapToRecord(JSNumber key, Map<dynamic, dynamic> value) {
    return KinesisRecord(
      id: key.toDartDouble.toInt(),
      streamName: value['stream_name']! as String,
      partitionKey: value['partition_key']! as String,
      data: Uint8List.fromList((value['data']! as List).cast<int>()),
      dataSize: value['data_size']! as int,
      retryCount: value['retry_count']! as int,
      createdAt: value['created_at']! as int,
    );
  }

  @override
  Future<void> doDeleteRecords(Iterable<int> ids) async {
    final idSet = ids.toSet();
    if (idSet.isEmpty) return;
    final store = _store('readwrite');
    for (final id in idSet) {
      await _completeRequest<JSAny?>(store.delete(id.toJS));
    }
  }

  @override
  Future<void> doIncrementRetryCount(Iterable<int> ids) async {
    final idSet = ids.toSet();
    if (idSet.isEmpty) return;
    final store = _store('readwrite');
    for (final id in idSet) {
      final obj = await _completeRequest<JSAny?>(store.get(id.toJS));
      if (obj == null) continue;
      final map = Map<String, Object>.from((obj as JSObject).dartify()! as Map);
      map['retry_count'] = (map['retry_count']! as int) + 1;
      await _completeRequest<JSAny?>(store.put(map.jsify(), id.toJS));
    }
  }

  @override
  Future<int> doGetRecordCount() async {
    final store = _store('readonly');
    final result = await _completeRequest<JSNumber>(store.count());
    return result.toDartDouble.toInt();
  }

  @override
  Future<void> doClearRecords() async {
    final store = _store('readwrite');
    await _completeRequest<JSAny?>(store.clear());
  }

  @override
  Future<int> doQueryCacheSize() => _queryCacheSize(_db);

  static Future<int> _queryCacheSize(web.IDBDatabase db) async {
    final tx = db.transaction(_storeName.toJS, 'readonly');
    final store = tx.objectStore(_storeName);
    final request = store.openCursor();
    var total = 0;

    final completer = Completer<void>();
    request.onsuccess = ((web.Event event) {
      final cursor =
          (event.target! as web.IDBRequest).result as web.IDBCursorWithValue?;
      if (cursor == null) {
        if (!completer.isCompleted) completer.complete();
        return;
      }
      final value = (cursor.value as JSObject).dartify()! as Map;
      total += value['data_size']! as int;
      cursor.continue_();
    }).toJS;
    request.onerror = ((web.Event event) {
      if (!completer.isCompleted) {
        completer.completeError(
          StateError('IndexedDB cursor failed: ${event.type}'),
        );
      }
    }).toJS;
    await completer.future;

    return total;
  }

  @override
  Future<void> doClose() async {
    _db.close();
  }
}
