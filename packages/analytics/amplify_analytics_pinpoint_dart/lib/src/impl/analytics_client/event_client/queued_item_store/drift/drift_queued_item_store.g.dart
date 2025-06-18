// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_queued_item_store.dart';

// ignore_for_file: type=lint
class $DriftQueuedItemsTable extends DriftQueuedItems
    with TableInfo<$DriftQueuedItemsTable, DriftQueuedItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftQueuedItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drift_queued_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<DriftQueuedItem> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftQueuedItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftQueuedItem(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $DriftQueuedItemsTable createAlias(String alias) {
    return $DriftQueuedItemsTable(attachedDatabase, alias);
  }
}

class DriftQueuedItem extends DataClass implements Insertable<DriftQueuedItem> {
  /// Identifies object in the SQL database.
  final int id;

  /// The string value stored for this object.
  final String value;
  const DriftQueuedItem({required this.id, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['value'] = Variable<String>(value);
    return map;
  }

  DriftQueuedItemsCompanion toCompanion(bool nullToAbsent) {
    return DriftQueuedItemsCompanion(id: Value(id), value: Value(value));
  }

  factory DriftQueuedItem.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftQueuedItem(
      id: serializer.fromJson<int>(json['id']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'value': serializer.toJson<String>(value),
    };
  }

  DriftQueuedItem copyWith({int? id, String? value}) =>
      DriftQueuedItem(id: id ?? this.id, value: value ?? this.value);
  DriftQueuedItem copyWithCompanion(DriftQueuedItemsCompanion data) {
    return DriftQueuedItem(
      id: data.id.present ? data.id.value : this.id,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftQueuedItem(')
          ..write('id: $id, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftQueuedItem &&
          other.id == this.id &&
          other.value == this.value);
}

class DriftQueuedItemsCompanion extends UpdateCompanion<DriftQueuedItem> {
  final Value<int> id;
  final Value<String> value;
  const DriftQueuedItemsCompanion({
    this.id = const Value.absent(),
    this.value = const Value.absent(),
  });
  DriftQueuedItemsCompanion.insert({
    this.id = const Value.absent(),
    required String value,
  }) : value = Value(value);
  static Insertable<DriftQueuedItem> custom({
    Expression<int>? id,
    Expression<String>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (value != null) 'value': value,
    });
  }

  DriftQueuedItemsCompanion copyWith({Value<int>? id, Value<String>? value}) {
    return DriftQueuedItemsCompanion(
      id: id ?? this.id,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftQueuedItemsCompanion(')
          ..write('id: $id, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

abstract class _$DriftQueuedItemStore extends GeneratedDatabase {
  _$DriftQueuedItemStore(QueryExecutor e) : super(e);
  $DriftQueuedItemStoreManager get managers =>
      $DriftQueuedItemStoreManager(this);
  late final $DriftQueuedItemsTable driftQueuedItems = $DriftQueuedItemsTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [driftQueuedItems];
}

typedef $$DriftQueuedItemsTableCreateCompanionBuilder =
    DriftQueuedItemsCompanion Function({Value<int> id, required String value});
typedef $$DriftQueuedItemsTableUpdateCompanionBuilder =
    DriftQueuedItemsCompanion Function({Value<int> id, Value<String> value});

class $$DriftQueuedItemsTableFilterComposer
    extends Composer<_$DriftQueuedItemStore, $DriftQueuedItemsTable> {
  $$DriftQueuedItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $$DriftQueuedItemsTableOrderingComposer
    extends Composer<_$DriftQueuedItemStore, $DriftQueuedItemsTable> {
  $$DriftQueuedItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DriftQueuedItemsTableAnnotationComposer
    extends Composer<_$DriftQueuedItemStore, $DriftQueuedItemsTable> {
  $$DriftQueuedItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$DriftQueuedItemsTableTableManager
    extends
        RootTableManager<
          _$DriftQueuedItemStore,
          $DriftQueuedItemsTable,
          DriftQueuedItem,
          $$DriftQueuedItemsTableFilterComposer,
          $$DriftQueuedItemsTableOrderingComposer,
          $$DriftQueuedItemsTableAnnotationComposer,
          $$DriftQueuedItemsTableCreateCompanionBuilder,
          $$DriftQueuedItemsTableUpdateCompanionBuilder,
          (
            DriftQueuedItem,
            BaseReferences<
              _$DriftQueuedItemStore,
              $DriftQueuedItemsTable,
              DriftQueuedItem
            >,
          ),
          DriftQueuedItem,
          PrefetchHooks Function()
        > {
  $$DriftQueuedItemsTableTableManager(
    _$DriftQueuedItemStore db,
    $DriftQueuedItemsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DriftQueuedItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DriftQueuedItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DriftQueuedItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> value = const Value.absent(),
              }) => DriftQueuedItemsCompanion(id: id, value: value),
          createCompanionCallback:
              ({Value<int> id = const Value.absent(), required String value}) =>
                  DriftQueuedItemsCompanion.insert(id: id, value: value),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$DriftQueuedItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$DriftQueuedItemStore,
      $DriftQueuedItemsTable,
      DriftQueuedItem,
      $$DriftQueuedItemsTableFilterComposer,
      $$DriftQueuedItemsTableOrderingComposer,
      $$DriftQueuedItemsTableAnnotationComposer,
      $$DriftQueuedItemsTableCreateCompanionBuilder,
      $$DriftQueuedItemsTableUpdateCompanionBuilder,
      (
        DriftQueuedItem,
        BaseReferences<
          _$DriftQueuedItemStore,
          $DriftQueuedItemsTable,
          DriftQueuedItem
        >,
      ),
      DriftQueuedItem,
      PrefetchHooks Function()
    >;

class $DriftQueuedItemStoreManager {
  final _$DriftQueuedItemStore _db;
  $DriftQueuedItemStoreManager(this._db);
  $$DriftQueuedItemsTableTableManager get driftQueuedItems =>
      $$DriftQueuedItemsTableTableManager(_db, _db.driftQueuedItems);
}
