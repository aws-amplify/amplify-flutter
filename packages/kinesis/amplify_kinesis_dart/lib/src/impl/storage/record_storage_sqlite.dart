// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_kinesis_dart/src/db/kinesis_record_database.dart';
import 'package:amplify_kinesis_dart/src/impl/kinesis_record.dart';
import 'package:amplify_kinesis_dart/src/impl/storage/record_storage.dart';
import 'package:drift/drift.dart';
import 'package:meta/meta.dart';

/// {@template amplify_kinesis.sqlite_record_storage}
/// SQLite-backed [RecordStorage] implementation using Drift.
///
/// Used on VM (iOS, macOS, Linux, Windows, Android) platforms.
/// {@endtemplate}
final class SqliteRecordStorage extends RecordStorage {
  /// {@macro amplify_kinesis.sqlite_record_storage}
  ///
  /// Prefer [create] for production use — it eagerly queries the cache
  /// size from the database. This constructor is available for tests
  /// where the database starts empty.
  SqliteRecordStorage({
    required KinesisRecordDatabase database,
    required super.maxCacheBytes,
    super.maxRecordsPerStream,
    super.maxBytesPerStream,
    super.maxRecordSizeBytes,
    super.maxPartitionKeyLength,
    super.initialCachedSize,
  }) : _db = database;

  /// {@macro amplify_kinesis.sqlite_record_storage}
  ///
  /// Opens the database.
  static Future<SqliteRecordStorage> create({
    required KinesisRecordDatabase database,
    required int maxCacheBytes,
  }) async {
    final initialSize = await _queryCacheSize(database);
    return SqliteRecordStorage(
      database: database,
      maxCacheBytes: maxCacheBytes,
      initialCachedSize: initialSize,
    );
  }

  final KinesisRecordDatabase _db;

  /// Provides access to the underlying database (for testing).
  KinesisRecordDatabase get database => _db;

  /// Queries the current cache size from the database.
  static Future<int> _queryCacheSize(KinesisRecordDatabase db) async {
    final query = db.selectOnly(db.kinesisRecords)
      ..addColumns([db.kinesisRecords.dataSize.sum()]);
    final result = await query.getSingleOrNull();
    if (result == null) return 0;
    return result.read(db.kinesisRecords.dataSize.sum()) ?? 0;
  }

  /// Returns the in-memory cached size directly (O(1), no DB query).
  @visibleForTesting
  int getCurrentCacheSize() => cachedSize;

  @override
  Future<void> writeRecord(RecordInput record) async {
    await _db
        .into(_db.kinesisRecords)
        .insert(
          KinesisRecordsCompanion.insert(
            streamName: record.streamName,
            partitionKey: record.partitionKey,
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
      SELECT id, stream_name, partition_key, data, data_size, retry_count, created_at
      FROM (
        SELECT *,
          ROW_NUMBER() OVER (PARTITION BY stream_name ORDER BY id) as rn,
          SUM(data_size) OVER (PARTITION BY stream_name ORDER BY id) as running_size
        FROM kinesis_records
      )
      WHERE rn <= ?1 AND running_size <= ?2
      ORDER BY stream_name, id
      ''',
          variables: [
            Variable.withInt(maxRecordsPerStream),
            Variable.withInt(maxBytesPerStream),
          ],
          readsFrom: {_db.kinesisRecords},
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
    await (_db.delete(_db.kinesisRecords)..where((t) => t.id.isIn(ids))).go();
  }

  @override
  Future<int> doQueryCacheSize() => _queryCacheSize(_db);

  @override
  Future<void> doIncrementRetryCount(Iterable<int> ids) async {
    if (ids.isEmpty) return;
    await (_db.update(_db.kinesisRecords)..where((t) => t.id.isIn(ids))).write(
      KinesisRecordsCompanion.custom(
        retryCount: _db.kinesisRecords.retryCount + const Constant(1),
      ),
    );
  }

  @override
  Future<int> doGetRecordCount() async {
    final query = _db.selectOnly(_db.kinesisRecords)
      ..addColumns([_db.kinesisRecords.id.count()]);
    final result = await query.getSingleOrNull();
    if (result == null) return 0;
    return result.read(_db.kinesisRecords.id.count()) ?? 0;
  }

  @override
  Future<void> doClearRecords() async {
    await _db.delete(_db.kinesisRecords).go();
  }

  @override
  Future<void> doClose() async {
    await _db.close();
  }

  Record _rowToRecord(QueryRow row) {
    return Record(
      id: row.read<int>('id'),
      streamName: row.read<String>('stream_name'),
      partitionKey: row.read<String>('partition_key'),
      data: row.read<Uint8List>('data'),
      dataSize: row.read<int>('data_size'),
      retryCount: row.read<int>('retry_count'),
      createdAt: row.read<int>('created_at'),
    );
  }
}
