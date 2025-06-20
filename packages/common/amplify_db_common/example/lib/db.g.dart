// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// ignore_for_file: type=lint
class $CountTableTable extends CountTable
    with TableInfo<$CountTableTable, CountTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CountTableTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _countMeta = const VerificationMeta('count');
  @override
  late final GeneratedColumn<int> count = GeneratedColumn<int>(
    'count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, count];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'count_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<CountTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('count')) {
      context.handle(
        _countMeta,
        count.isAcceptableOrUnknown(data['count']!, _countMeta),
      );
    } else if (isInserting) {
      context.missing(_countMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CountTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CountTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      count: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}count'],
      )!,
    );
  }

  @override
  $CountTableTable createAlias(String alias) {
    return $CountTableTable(attachedDatabase, alias);
  }
}

class CountTableData extends DataClass implements Insertable<CountTableData> {
  final int id;
  final int count;
  const CountTableData({required this.id, required this.count});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['count'] = Variable<int>(count);
    return map;
  }

  CountTableCompanion toCompanion(bool nullToAbsent) {
    return CountTableCompanion(id: Value(id), count: Value(count));
  }

  factory CountTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CountTableData(
      id: serializer.fromJson<int>(json['id']),
      count: serializer.fromJson<int>(json['count']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'count': serializer.toJson<int>(count),
    };
  }

  CountTableData copyWith({int? id, int? count}) =>
      CountTableData(id: id ?? this.id, count: count ?? this.count);
  CountTableData copyWithCompanion(CountTableCompanion data) {
    return CountTableData(
      id: data.id.present ? data.id.value : this.id,
      count: data.count.present ? data.count.value : this.count,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CountTableData(')
          ..write('id: $id, ')
          ..write('count: $count')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, count);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CountTableData &&
          other.id == this.id &&
          other.count == this.count);
}

class CountTableCompanion extends UpdateCompanion<CountTableData> {
  final Value<int> id;
  final Value<int> count;
  const CountTableCompanion({
    this.id = const Value.absent(),
    this.count = const Value.absent(),
  });
  CountTableCompanion.insert({
    this.id = const Value.absent(),
    required int count,
  }) : count = Value(count);
  static Insertable<CountTableData> custom({
    Expression<int>? id,
    Expression<int>? count,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (count != null) 'count': count,
    });
  }

  CountTableCompanion copyWith({Value<int>? id, Value<int>? count}) {
    return CountTableCompanion(id: id ?? this.id, count: count ?? this.count);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (count.present) {
      map['count'] = Variable<int>(count.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CountTableCompanion(')
          ..write('id: $id, ')
          ..write('count: $count')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  $AppDbManager get managers => $AppDbManager(this);
  late final $CountTableTable countTable = $CountTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [countTable];
}

typedef $$CountTableTableCreateCompanionBuilder =
    CountTableCompanion Function({Value<int> id, required int count});
typedef $$CountTableTableUpdateCompanionBuilder =
    CountTableCompanion Function({Value<int> id, Value<int> count});

class $$CountTableTableFilterComposer
    extends Composer<_$AppDb, $CountTableTable> {
  $$CountTableTableFilterComposer({
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

  ColumnFilters<int> get count => $composableBuilder(
    column: $table.count,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CountTableTableOrderingComposer
    extends Composer<_$AppDb, $CountTableTable> {
  $$CountTableTableOrderingComposer({
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

  ColumnOrderings<int> get count => $composableBuilder(
    column: $table.count,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CountTableTableAnnotationComposer
    extends Composer<_$AppDb, $CountTableTable> {
  $$CountTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get count =>
      $composableBuilder(column: $table.count, builder: (column) => column);
}

class $$CountTableTableTableManager
    extends
        RootTableManager<
          _$AppDb,
          $CountTableTable,
          CountTableData,
          $$CountTableTableFilterComposer,
          $$CountTableTableOrderingComposer,
          $$CountTableTableAnnotationComposer,
          $$CountTableTableCreateCompanionBuilder,
          $$CountTableTableUpdateCompanionBuilder,
          (
            CountTableData,
            BaseReferences<_$AppDb, $CountTableTable, CountTableData>,
          ),
          CountTableData,
          PrefetchHooks Function()
        > {
  $$CountTableTableTableManager(_$AppDb db, $CountTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CountTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CountTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CountTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> count = const Value.absent(),
              }) => CountTableCompanion(id: id, count: count),
          createCompanionCallback:
              ({Value<int> id = const Value.absent(), required int count}) =>
                  CountTableCompanion.insert(id: id, count: count),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CountTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDb,
      $CountTableTable,
      CountTableData,
      $$CountTableTableFilterComposer,
      $$CountTableTableOrderingComposer,
      $$CountTableTableAnnotationComposer,
      $$CountTableTableCreateCompanionBuilder,
      $$CountTableTableUpdateCompanionBuilder,
      (
        CountTableData,
        BaseReferences<_$AppDb, $CountTableTable, CountTableData>,
      ),
      CountTableData,
      PrefetchHooks Function()
    >;

class $AppDbManager {
  final _$AppDb _db;
  $AppDbManager(this._db);
  $$CountTableTableTableManager get countTable =>
      $$CountTableTableTableManager(_db, _db.countTable);
}
