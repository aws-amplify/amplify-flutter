// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_firehose_dart/src/db/firehose_record_database.dart';
import 'package:amplify_firehose_dart/src/impl/firehose_record.dart';
import 'package:amplify_firehose_dart/src/impl/storage/record_storage.dart';
import 'package:drift/drift.dart';
import 'package:meta/meta.dart';

/// {@template amplify_firehose.sqlite_record_storage}
/// SQLite-backed [RecordStorage] implementation using Drift.
///
/// Used on VM (iOS, macOS, Linux, Windows, Android) platforms.
/// {@endtemplate}
final class SqliteRecordStorage extends RecordStorage {
  /// {@macro amplify_firehose.sqlite_record_storage}
  ///
  /// Prefer [create] for production use — it eagerly queries the cache
  /// size from the database. This constructor is available for tests
  /// where the database starts empty.
  SqliteRecordStorage({
    required FirehoseRecordDatabase database,
    required super.maxCacheBytes,
    super.maxRecordsPerBatch,
    super.maxBytesPerBatch,
    super.maxRecordSizeBytes,
    super.initialCachedSize,
  }) : _db = database;

  /// {@macro amplify_firehose.sqlite_record_storage}
  ///
  /// Opens the database.
  static Future<SqliteRecordStorage> create({
    required FirehoseRecordDatabase database,
    required int maxCacheBytes,
  }) async {
    final initialSize = await _queryCacheSize(database);
    return SqliteRecordStorage(
      database: database,
      maxCacheBytes: maxCacheBytes,
      initialCachedSize: initialSize,
    );
  }

  final FirehoseRecordDatabase _db;

  /// Provides access to the underlying database (for testing).
  FirehoseRecordDatabase get database => _db;

  /// Queries the current cache size from the database.
  static Future<int> _queryCacheSize(FirehoseRecordDatabase db) async {
    final query = db.selectOnly(db.firehoseRecords)
      ..addColumns([db.firehoseRecords.dataSize.sum()]);
    final result = await query.getSingleOrNull();
    if (result == null) return 0;
    return result.read(db.firehoseRecords.dataSize.sum()) ?? 0;
  }

  /// Returns the in-memory cached size directly (O(1), no DB query).
  @visibleForTesting
  int getCurrentCacheSize() => cachedSize;

  @override
  Future<void> writeRecord(RecordInput record) async {
    await _db
        .into(_db.firehoseRecords)
        .insert(
          FirehoseRecordsCompanion.insert(
            streamName: record.streamName,
            data: record.data,
            dataSize: record.dataSize,
            createdAt: record.createdAt.millisecondsSinceEpoch,
          ),
        );
  }

  @override
  Future<Map<String, List<Record>>> doGetRecordsByStream() async {
    final results = await _db
        .customSelect(
          '''
      SELECT id, stream_name, data, data_size, retry_count, created_at
      FROM (
        SELECT *,
          ROW_NUMBER() OVER (PARTITION BY stream_name ORDER BY id) as rn,
          SUM(data_size) OVER (PARTITION BY stream_name ORDER BY id) as running_size
        FROM firehose_records
      )
      WHERE rn <= ?1 AND running_size <= ?2
      ORDER BY stream_name, id
      ''',
          variables: [
            Variable.withInt(maxRecordsPerBatch),
            Variable.withInt(maxBytesPerBatch),
          ],
          readsFrom: {_db.firehoseRecords},
        )
        .get();

    final recordsByStream = <String, List<Record>>{};
    for (final row in results) {
      final record = _rowToRecord(row);
      recordsByStream.putIfAbsent(record.streamName, () => []).add(record);
    }
    return recordsByStream;
  }

  @override
  Future<void> doDeleteRecords(Iterable<int> ids) async {
    if (ids.isEmpty) return;
    await (_db.delete(_db.firehoseRecords)..where((t) => t.id.isIn(ids))).go();
  }

  @override
  Future<int> doQueryCacheSize() => _queryCacheSize(_db);

  @override
  Future<void> doIncrementRetryCount(Iterable<int> ids) async {
    if (ids.isEmpty) return;
    await (_db.update(_db.firehoseRecords)..where((t) => t.id.isIn(ids))).write(
      FirehoseRecordsCompanion.custom(
        retryCount: _db.firehoseRecords.retryCount + const Constant(1),
      ),
    );
  }

  @override
  Future<int> doGetRecordCount() async {
    final query = _db.selectOnly(_db.firehoseRecords)
      ..addColumns([_db.firehoseRecords.id.count()]);
    final result = await query.getSingleOrNull();
    if (result == null) return 0;
    return result.read(_db.firehoseRecords.id.count()) ?? 0;
  }

  @override
  Future<void> doClearRecords() async {
    await _db.delete(_db.firehoseRecords).go();
  }

  @override
  Future<void> doClose() async {
    await _db.close();
  }

  Record _rowToRecord(QueryRow row) {
    return Record(
      id: row.read<int>('id'),
      streamName: row.read<String>('stream_name'),
      data: row.read<Uint8List>('data'),
      dataSize: row.read<int>('data_size'),
      retryCount: row.read<int>('retry_count'),
      createdAt: row.read<int>('created_at'),
    );
  }
}
