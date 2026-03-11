// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

// ignore: implementation_imports
import 'package:aws_common/src/js/indexed_db.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/kinesis_record.dart';
import 'package:aws_kinesis_datastreams_dart/src/impl/storage/record_storage.dart';
import 'package:aws_kinesis_datastreams_dart/src/kinesis_data_streams_options.dart'
    show kKinesisMaxBatchBytes, kKinesisMaxRecordsPerBatch;
import 'package:web/web.dart';

/// {@template aws_kinesis_datastreams.indexeddb_record_storage}
/// IndexedDB-backed [RecordStorage] implementation for web.
/// {@endtemplate}
final class IndexedDbRecordStorage extends RecordStorage {
  /// {@macro aws_kinesis_datastreams.indexeddb_record_storage}
  IndexedDbRecordStorage({
    required super.maxCacheBytes,
    required String identifier,
  }) : _dbName = 'amplify_kinesis_$identifier';

  final String _dbName;
  static const _storeName = 'kinesis_records';
  static const _streamIndex = 'stream_name_idx';

  late final Future<void> _openEvent = _openDatabase();
  late IDBDatabase _database;

  Future<void> _openDatabase() async {
    final db = indexedDB;
    if (db == null) {
      throw StateError('IndexedDB is not available');
    }

    void onUpgradeNeeded(IDBVersionChangeEvent event) {
      final database = event.target?.getProperty<IDBDatabase>('result'.toJS);
      final names = database?.objectStoreNames;
      if (!(names?.contains(_storeName) ?? false)) {
        database!.createObjectStore(
          _storeName,
          IDBObjectStoreParameters(keyPath: 'id'.toJS, autoIncrement: true),
        ).createIndex(
          _streamIndex,
          'stream_name'.toJS,
          IDBIndexParameters(unique: false),
        );
      }
    }

    final request = db.open(_dbName, 1)
      ..onupgradeneeded = onUpgradeNeeded.toJS;
    final result = await request.future;
    if (result.isA<IDBDatabase>()) {
      _database = result as IDBDatabase;
    } else {
      throw StateError('Failed to open IndexedDB: $_dbName');
    }
  }

  IDBObjectStore _getStore() {
    final tx = _database.transaction(_storeName.toJS, 'readwrite');
    return tx.objectStore(_storeName);
  }

  @override
  Future<void> saveRecord(RecordInput record) async {
    await _openEvent;
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
  Future<List<Record>> getRecordsBatch({
    int maxCount = kKinesisMaxRecordsPerBatch,
    int maxBytes = kKinesisMaxBatchBytes,
  }) async {
    await _openEvent;
    final all = await _getAllRecords();
    all.sort((a, b) {
      var cmp = a.streamName.compareTo(b.streamName);
      if (cmp != 0) return cmp;
      cmp = a.partitionKey.compareTo(b.partitionKey);
      if (cmp != 0) return cmp;
      return a.id.compareTo(b.id);
    });

    final result = <Record>[];
    var runningSize = 0;
    for (final record in all) {
      if (result.length >= maxCount) break;
      runningSize += record.dataSize;
      if (runningSize > maxBytes && result.isNotEmpty) break;
      result.add(record);
    }
    return result;
  }

  @override
  Future<Map<String, List<Record>>> getRecordsByStream({
    Set<int> excludingIds = const {},
    int maxCount = kKinesisMaxRecordsPerBatch,
    int maxBytes = kKinesisMaxBatchBytes,
  }) async {
    await _openEvent;
    final all = await _getAllRecords();
    final filtered = all
        .where((r) => !excludingIds.contains(r.id))
        .toList()
      ..sort((a, b) {
        final cmp = a.streamName.compareTo(b.streamName);
        if (cmp != 0) return cmp;
        return a.id.compareTo(b.id);
      });

    final result = <String, List<Record>>{};
    final streamSizes = <String, int>{};
    final streamCounts = <String, int>{};

    for (final record in filtered) {
      final stream = record.streamName;
      final count = streamCounts[stream] ?? 0;
      final size = streamSizes[stream] ?? 0;
      if (count >= maxCount) continue;
      if (size + record.dataSize > maxBytes) continue;

      result.putIfAbsent(stream, () => []).add(record);
      streamCounts[stream] = count + 1;
      streamSizes[stream] = size + record.dataSize;
    }
    return result;
  }

  @override
  Future<void> deleteRecords(Iterable<int> ids) async {
    if (ids.isEmpty) return;
    await _openEvent;
    final store = _getStore();
    for (final id in ids) {
      await store.delete(id.toJS).future;
    }
  }

  @override
  Future<void> incrementRetryCount(Iterable<int> ids) async {
    if (ids.isEmpty) return;
    await _openEvent;
    final store = _getStore();
    for (final id in ids) {
      final request = store.get(id.toJS);
      await request.future;
      final obj = request.result;
      if (obj == null || obj.isUndefinedOrNull) continue;
      final jsObj = obj as JSObject;
      final current =
          jsObj.getProperty<JSNumber>('retry_count'.toJS).toDartInt;
      jsObj.setProperty('retry_count'.toJS, (current + 1).toJS);
      await store.put(jsObj).future;
    }
  }

  @override
  Future<int> getCurrentCacheSize() async {
    await _openEvent;
    final all = await _getAllRecords();
    var total = 0;
    for (final record in all) {
      total += record.dataSize;
    }
    return total;
  }

  @override
  Future<int> getRecordCount() async {
    await _openEvent;
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
  Future<void> clear() async {
    await _openEvent;
    await _getStore().clear().future;
  }

  @override
  Future<void> close() async {
    try {
      await _openEvent;
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

  Record _jsToRecord(JSObject obj) {
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
