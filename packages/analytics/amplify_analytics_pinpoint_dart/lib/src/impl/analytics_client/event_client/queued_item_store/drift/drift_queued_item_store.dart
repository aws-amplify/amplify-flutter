// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/event_client/queued_item_store/queued_item_store.dart';
import 'package:amplify_db_common_dart/amplify_db_common_dart.dart';
import 'package:drift/drift.dart';

part 'drift_queued_item_store.g.dart';

/// SQL schema of data stored in DriftDatabase
class DriftQueuedItems extends Table {
  /// Identifies object in the SQL database
  IntColumn get id => integer().autoIncrement()();

  /// The string value stored for this object
  TextColumn get value => text()();
}

/// {@template amplify_analytics_pinpoint_dart.drift_queued_item_store}
/// Drift class for managing stored [DriftQueuedItems]
/// {@endtemplate}
@DriftDatabase(tables: [DriftQueuedItems])
class DriftQueuedItemStore extends _$DriftQueuedItemStore
    implements QueuedItemStore {
  /// {@macro amplify_analytics_pinpoint_dart.drift_queued_item_store}
  factory DriftQueuedItemStore(String storagePath) {
    final driftQueryExecutor = connect(
      name: 'analytics_cached_events',
      path: storagePath,
    );
    return DriftQueuedItemStore._(driftQueryExecutor);
  }

  DriftQueuedItemStore._(super.driftQueryExecutor);

  // Reminder: Bump this number whenever you change or add a table definition.
  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // Note: From schemaVersion 1->2 we renamed DriftJsonStrings to DriftQueuedItems before the GA release
        await m.createAll();
      },
    );
  }

  @override
  Future<void> addItem(String value) async {
    await into(driftQueuedItems)
        .insert(DriftQueuedItemsCompanion(value: Value(value)));
  }

  @override
  Future<Iterable<QueuedItem>> getCount(int count) async {
    final statement = (select(driftQueuedItems)
      ..orderBy([(v) => OrderingTerm.asc(v.id)])
      ..limit(count));

    final retrievedItems = await statement.get();
    return retrievedItems.map(
      (item) => QueuedItem(
        id: item.id,
        value: item.value,
      ),
    );
  }

  @override
  Future<void> deleteItems(Iterable<QueuedItem> items) async {
    final idsToDelete = items.map((item) => item.id);
    final statement = delete(driftQueuedItems)
      ..where((t) => t.id.isIn(idsToDelete));
    await statement.go();
  }

  @override
  Future<void> clear() {
    return delete(driftQueuedItems).go();
  }
}
