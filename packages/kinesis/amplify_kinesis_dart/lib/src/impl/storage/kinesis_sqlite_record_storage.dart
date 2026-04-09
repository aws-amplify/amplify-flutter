// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_kinesis_dart/src/db/kinesis_record_database.dart';
import 'package:amplify_kinesis_dart/src/model/kinesis_record.dart';
import 'package:amplify_record_cache_dart/amplify_record_cache_dart.dart';
import 'package:drift/drift.dart';
import 'package:meta/meta.dart';

/// {@template amplify_kinesis.kinesis_sqlite_record_storage}
/// KDS-specific SQLite [RecordStorage] backed by [KinesisRecordDatabase].
///
/// Persists the `partitionKey` column that is unique to Kinesis Data Streams.
/// Records are stored in a Drift-managed SQLite database and returned as
/// [KinesisRecord] instances.
/// {@endtemplate}
class SqliteRecordStorage extends RecordStorage {
  /// {@macro amplify_kinesis.kinesis_sqlite_record_storage}
  SqliteRecordStorage({
    required KinesisRecordDatabase database,
    required super.maxCacheBytes,
    required super.maxRecordsPerBatch,
    required super.maxBytesPerBatch,
    required super.maxRecordSizeBytes,
    super.initialCachedSize,
  }) : _db = database;

  /// Creates a [SqliteRecordStorage] with the current cache size read from
  /// the database.
  static Future<SqliteRecordStorage> create({
    required KinesisRecordDatabase database,
    required int maxCacheBytes,
    required int maxRecordsPerBatch,
    required int maxBytesPerBatch,
    required int maxRecordSizeBytes,
  }) async {
    final initialSize = await _queryCacheSize(database);
    return SqliteRecordStorage(
      database: database,
      maxCacheBytes: maxCacheBytes,
      maxRecordsPerBatch: maxRecordsPerBatch,
      maxBytesPerBatch: maxBytesPerBatch,
      maxRecordSizeBytes: maxRecordSizeBytes,
      initialCachedSize: initialSize,
    );
  }

  final KinesisRecordDatabase _db;

  /// Returns the current cached size for testing.
  @visibleForTesting
  int getCurrentCacheSize() => cachedSize;

  @override
  Future<void> writeRecord(RecordInput record) async {
    final kinesisInput = record as KinesisRecordInput;
    await _db
        .into(_db.kinesisRecords)
        .insert(
          KinesisRecordsCompanion.insert(
            streamName: kinesisInput.streamName,
            partitionKey: kinesisInput.partitionKey,
            data: kinesisInput.data,
            dataSize: kinesisInput.dataSize,
            createdAt: kinesisInput.createdAt.millisecondsSinceEpoch,
          ),
        );
  }

  @override
  Future<Map<String, List<Record>>> doGetRecordsByStream() async {
    final query = _db.selectOnly(_db.kinesisRecords)
      ..addColumns([
        _db.kinesisRecords.id,
        _db.kinesisRecords.streamName,
        _db.kinesisRecords.partitionKey,
        _db.kinesisRecords.data,
        _db.kinesisRecords.dataSize,
        _db.kinesisRecords.retryCount,
        _db.kinesisRecords.createdAt,
      ])
      ..orderBy([
        OrderingTerm.asc(_db.kinesisRecords.streamName),
        OrderingTerm.asc(_db.kinesisRecords.id),
      ]);

    final rows = await query.get();

    final result = <String, List<Record>>{};
    final streamSizes = <String, int>{};
    final streamCounts = <String, int>{};

    for (final row in rows) {
      final record = _rowToRecord(row);
      final stream = record.streamName;
      final count = streamCounts[stream] ?? 0;
      final size = streamSizes[stream] ?? 0;
      if (count >= maxRecordsPerBatch) continue;
      if (size + record.dataSize > maxBytesPerBatch) continue;

      result.putIfAbsent(stream, () => []).add(record);
      streamCounts[stream] = count + 1;
      streamSizes[stream] = size + record.dataSize;
    }

    return result;
  }

  KinesisRecord _rowToRecord(TypedResult row) {
    return KinesisRecord(
      id: row.read(_db.kinesisRecords.id)!,
      streamName: row.read(_db.kinesisRecords.streamName)!,
      partitionKey: row.read(_db.kinesisRecords.partitionKey)!,
      data: Uint8List.fromList(row.read(_db.kinesisRecords.data)!),
      dataSize: row.read(_db.kinesisRecords.dataSize)!,
      retryCount: row.read(_db.kinesisRecords.retryCount)!,
      createdAt: row.read(_db.kinesisRecords.createdAt)!,
    );
  }

  @override
  Future<void> doDeleteRecords(Iterable<int> ids) async {
    final idList = ids.toList();
    if (idList.isEmpty) return;
    await (_db.delete(
      _db.kinesisRecords,
    )..where((t) => t.id.isIn(idList))).go();
  }

  @override
  Future<void> doIncrementRetryCount(Iterable<int> ids) async {
    final idList = ids.toList();
    if (idList.isEmpty) return;
    await _db.customUpdate(
      'UPDATE kinesis_records SET retry_count = retry_count + 1 '
      'WHERE id IN (${idList.join(', ')})',
      updates: {_db.kinesisRecords},
    );
  }

  @override
  Future<int> doGetRecordCount() async {
    final countExpr = _db.kinesisRecords.id.count();
    final query = _db.selectOnly(_db.kinesisRecords)..addColumns([countExpr]);
    final result = await query.getSingle();
    return result.read(countExpr) ?? 0;
  }

  @override
  Future<void> doClearRecords() async {
    await _db.delete(_db.kinesisRecords).go();
  }

  @override
  Future<int> doQueryCacheSize() => _queryCacheSize(_db);

  static Future<int> _queryCacheSize(KinesisRecordDatabase db) async {
    final sumExpr = db.kinesisRecords.dataSize.sum();
    final query = db.selectOnly(db.kinesisRecords)..addColumns([sumExpr]);
    final result = await query.getSingle();
    return result.read(sumExpr) ?? 0;
  }

  @override
  Future<void> doClose() async {
    await _db.close();
  }
}
