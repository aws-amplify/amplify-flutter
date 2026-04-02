// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_cache_database.dart';

// ignore_for_file: type=lint
class $CachedRecordsTable extends CachedRecords
    with TableInfo<$CachedRecordsTable, DriftStoredRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedRecordsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _streamNameMeta = const VerificationMeta(
    'streamName',
  );
  @override
  late final GeneratedColumn<String> streamName = GeneratedColumn<String>(
    'stream_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _partitionKeyMeta = const VerificationMeta(
    'partitionKey',
  );
  @override
  late final GeneratedColumn<String> partitionKey = GeneratedColumn<String>(
    'partition_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<Uint8List> data = GeneratedColumn<Uint8List>(
    'data',
    aliasedName,
    false,
    type: DriftSqlType.blob,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dataSizeMeta = const VerificationMeta(
    'dataSize',
  );
  @override
  late final GeneratedColumn<int> dataSize = GeneratedColumn<int>(
    'data_size',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _retryCountMeta = const VerificationMeta(
    'retryCount',
  );
  @override
  late final GeneratedColumn<int> retryCount = GeneratedColumn<int>(
    'retry_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    streamName,
    partitionKey,
    data,
    dataSize,
    retryCount,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_records';
  @override
  VerificationContext validateIntegrity(
    Insertable<DriftStoredRecord> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('stream_name')) {
      context.handle(
        _streamNameMeta,
        streamName.isAcceptableOrUnknown(data['stream_name']!, _streamNameMeta),
      );
    } else if (isInserting) {
      context.missing(_streamNameMeta);
    }
    if (data.containsKey('partition_key')) {
      context.handle(
        _partitionKeyMeta,
        partitionKey.isAcceptableOrUnknown(
          data['partition_key']!,
          _partitionKeyMeta,
        ),
      );
    }
    if (data.containsKey('data')) {
      context.handle(
        _dataMeta,
        this.data.isAcceptableOrUnknown(data['data']!, _dataMeta),
      );
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    if (data.containsKey('data_size')) {
      context.handle(
        _dataSizeMeta,
        dataSize.isAcceptableOrUnknown(data['data_size']!, _dataSizeMeta),
      );
    } else if (isInserting) {
      context.missing(_dataSizeMeta);
    }
    if (data.containsKey('retry_count')) {
      context.handle(
        _retryCountMeta,
        retryCount.isAcceptableOrUnknown(data['retry_count']!, _retryCountMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftStoredRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftStoredRecord(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      streamName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}stream_name'],
      )!,
      partitionKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}partition_key'],
      )!,
      data: attachedDatabase.typeMapping.read(
        DriftSqlType.blob,
        data['${effectivePrefix}data'],
      )!,
      dataSize: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}data_size'],
      )!,
      retryCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}retry_count'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $CachedRecordsTable createAlias(String alias) {
    return $CachedRecordsTable(attachedDatabase, alias);
  }
}

class DriftStoredRecord extends DataClass
    implements Insertable<DriftStoredRecord> {
  /// Auto-incrementing primary key.
  final int id;

  /// The name of the target stream.
  final String streamName;

  /// The partition key (empty string for services that don't use it).
  final String partitionKey;

  /// The data blob to send.
  final Uint8List data;

  /// The size of the record in bytes.
  final int dataSize;

  /// The number of times this record has been retried.
  final int retryCount;

  /// Unix timestamp of when the record was created.
  final int createdAt;
  const DriftStoredRecord({
    required this.id,
    required this.streamName,
    required this.partitionKey,
    required this.data,
    required this.dataSize,
    required this.retryCount,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['stream_name'] = Variable<String>(streamName);
    map['partition_key'] = Variable<String>(partitionKey);
    map['data'] = Variable<Uint8List>(data);
    map['data_size'] = Variable<int>(dataSize);
    map['retry_count'] = Variable<int>(retryCount);
    map['created_at'] = Variable<int>(createdAt);
    return map;
  }

  CachedRecordsCompanion toCompanion(bool nullToAbsent) {
    return CachedRecordsCompanion(
      id: Value(id),
      streamName: Value(streamName),
      partitionKey: Value(partitionKey),
      data: Value(data),
      dataSize: Value(dataSize),
      retryCount: Value(retryCount),
      createdAt: Value(createdAt),
    );
  }

  factory DriftStoredRecord.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftStoredRecord(
      id: serializer.fromJson<int>(json['id']),
      streamName: serializer.fromJson<String>(json['streamName']),
      partitionKey: serializer.fromJson<String>(json['partitionKey']),
      data: serializer.fromJson<Uint8List>(json['data']),
      dataSize: serializer.fromJson<int>(json['dataSize']),
      retryCount: serializer.fromJson<int>(json['retryCount']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'streamName': serializer.toJson<String>(streamName),
      'partitionKey': serializer.toJson<String>(partitionKey),
      'data': serializer.toJson<Uint8List>(data),
      'dataSize': serializer.toJson<int>(dataSize),
      'retryCount': serializer.toJson<int>(retryCount),
      'createdAt': serializer.toJson<int>(createdAt),
    };
  }

  DriftStoredRecord copyWith({
    int? id,
    String? streamName,
    String? partitionKey,
    Uint8List? data,
    int? dataSize,
    int? retryCount,
    int? createdAt,
  }) => DriftStoredRecord(
    id: id ?? this.id,
    streamName: streamName ?? this.streamName,
    partitionKey: partitionKey ?? this.partitionKey,
    data: data ?? this.data,
    dataSize: dataSize ?? this.dataSize,
    retryCount: retryCount ?? this.retryCount,
    createdAt: createdAt ?? this.createdAt,
  );
  DriftStoredRecord copyWithCompanion(CachedRecordsCompanion data) {
    return DriftStoredRecord(
      id: data.id.present ? data.id.value : this.id,
      streamName: data.streamName.present
          ? data.streamName.value
          : this.streamName,
      partitionKey: data.partitionKey.present
          ? data.partitionKey.value
          : this.partitionKey,
      data: data.data.present ? data.data.value : this.data,
      dataSize: data.dataSize.present ? data.dataSize.value : this.dataSize,
      retryCount: data.retryCount.present
          ? data.retryCount.value
          : this.retryCount,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftStoredRecord(')
          ..write('id: $id, ')
          ..write('streamName: $streamName, ')
          ..write('partitionKey: $partitionKey, ')
          ..write('data: $data, ')
          ..write('dataSize: $dataSize, ')
          ..write('retryCount: $retryCount, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    streamName,
    partitionKey,
    $driftBlobEquality.hash(data),
    dataSize,
    retryCount,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftStoredRecord &&
          other.id == this.id &&
          other.streamName == this.streamName &&
          other.partitionKey == this.partitionKey &&
          $driftBlobEquality.equals(other.data, this.data) &&
          other.dataSize == this.dataSize &&
          other.retryCount == this.retryCount &&
          other.createdAt == this.createdAt);
}

class CachedRecordsCompanion extends UpdateCompanion<DriftStoredRecord> {
  final Value<int> id;
  final Value<String> streamName;
  final Value<String> partitionKey;
  final Value<Uint8List> data;
  final Value<int> dataSize;
  final Value<int> retryCount;
  final Value<int> createdAt;
  const CachedRecordsCompanion({
    this.id = const Value.absent(),
    this.streamName = const Value.absent(),
    this.partitionKey = const Value.absent(),
    this.data = const Value.absent(),
    this.dataSize = const Value.absent(),
    this.retryCount = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  CachedRecordsCompanion.insert({
    this.id = const Value.absent(),
    required String streamName,
    this.partitionKey = const Value.absent(),
    required Uint8List data,
    required int dataSize,
    this.retryCount = const Value.absent(),
    required int createdAt,
  }) : streamName = Value(streamName),
       data = Value(data),
       dataSize = Value(dataSize),
       createdAt = Value(createdAt);
  static Insertable<DriftStoredRecord> custom({
    Expression<int>? id,
    Expression<String>? streamName,
    Expression<String>? partitionKey,
    Expression<Uint8List>? data,
    Expression<int>? dataSize,
    Expression<int>? retryCount,
    Expression<int>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (streamName != null) 'stream_name': streamName,
      if (partitionKey != null) 'partition_key': partitionKey,
      if (data != null) 'data': data,
      if (dataSize != null) 'data_size': dataSize,
      if (retryCount != null) 'retry_count': retryCount,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  CachedRecordsCompanion copyWith({
    Value<int>? id,
    Value<String>? streamName,
    Value<String>? partitionKey,
    Value<Uint8List>? data,
    Value<int>? dataSize,
    Value<int>? retryCount,
    Value<int>? createdAt,
  }) {
    return CachedRecordsCompanion(
      id: id ?? this.id,
      streamName: streamName ?? this.streamName,
      partitionKey: partitionKey ?? this.partitionKey,
      data: data ?? this.data,
      dataSize: dataSize ?? this.dataSize,
      retryCount: retryCount ?? this.retryCount,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (streamName.present) {
      map['stream_name'] = Variable<String>(streamName.value);
    }
    if (partitionKey.present) {
      map['partition_key'] = Variable<String>(partitionKey.value);
    }
    if (data.present) {
      map['data'] = Variable<Uint8List>(data.value);
    }
    if (dataSize.present) {
      map['data_size'] = Variable<int>(dataSize.value);
    }
    if (retryCount.present) {
      map['retry_count'] = Variable<int>(retryCount.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedRecordsCompanion(')
          ..write('id: $id, ')
          ..write('streamName: $streamName, ')
          ..write('partitionKey: $partitionKey, ')
          ..write('data: $data, ')
          ..write('dataSize: $dataSize, ')
          ..write('retryCount: $retryCount, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$RecordCacheDatabase extends GeneratedDatabase {
  _$RecordCacheDatabase(QueryExecutor e) : super(e);
  $RecordCacheDatabaseManager get managers => $RecordCacheDatabaseManager(this);
  late final $CachedRecordsTable cachedRecords = $CachedRecordsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cachedRecords];
}

typedef $$CachedRecordsTableCreateCompanionBuilder =
    CachedRecordsCompanion Function({
      Value<int> id,
      required String streamName,
      Value<String> partitionKey,
      required Uint8List data,
      required int dataSize,
      Value<int> retryCount,
      required int createdAt,
    });
typedef $$CachedRecordsTableUpdateCompanionBuilder =
    CachedRecordsCompanion Function({
      Value<int> id,
      Value<String> streamName,
      Value<String> partitionKey,
      Value<Uint8List> data,
      Value<int> dataSize,
      Value<int> retryCount,
      Value<int> createdAt,
    });

class $$CachedRecordsTableFilterComposer
    extends Composer<_$RecordCacheDatabase, $CachedRecordsTable> {
  $$CachedRecordsTableFilterComposer({
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

  ColumnFilters<String> get streamName => $composableBuilder(
    column: $table.streamName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get partitionKey => $composableBuilder(
    column: $table.partitionKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<Uint8List> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dataSize => $composableBuilder(
    column: $table.dataSize,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get retryCount => $composableBuilder(
    column: $table.retryCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CachedRecordsTableOrderingComposer
    extends Composer<_$RecordCacheDatabase, $CachedRecordsTable> {
  $$CachedRecordsTableOrderingComposer({
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

  ColumnOrderings<String> get streamName => $composableBuilder(
    column: $table.streamName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get partitionKey => $composableBuilder(
    column: $table.partitionKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<Uint8List> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dataSize => $composableBuilder(
    column: $table.dataSize,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get retryCount => $composableBuilder(
    column: $table.retryCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CachedRecordsTableAnnotationComposer
    extends Composer<_$RecordCacheDatabase, $CachedRecordsTable> {
  $$CachedRecordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get streamName => $composableBuilder(
    column: $table.streamName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get partitionKey => $composableBuilder(
    column: $table.partitionKey,
    builder: (column) => column,
  );

  GeneratedColumn<Uint8List> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);

  GeneratedColumn<int> get dataSize =>
      $composableBuilder(column: $table.dataSize, builder: (column) => column);

  GeneratedColumn<int> get retryCount => $composableBuilder(
    column: $table.retryCount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$CachedRecordsTableTableManager
    extends
        RootTableManager<
          _$RecordCacheDatabase,
          $CachedRecordsTable,
          DriftStoredRecord,
          $$CachedRecordsTableFilterComposer,
          $$CachedRecordsTableOrderingComposer,
          $$CachedRecordsTableAnnotationComposer,
          $$CachedRecordsTableCreateCompanionBuilder,
          $$CachedRecordsTableUpdateCompanionBuilder,
          (
            DriftStoredRecord,
            BaseReferences<
              _$RecordCacheDatabase,
              $CachedRecordsTable,
              DriftStoredRecord
            >,
          ),
          DriftStoredRecord,
          PrefetchHooks Function()
        > {
  $$CachedRecordsTableTableManager(
    _$RecordCacheDatabase db,
    $CachedRecordsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CachedRecordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CachedRecordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CachedRecordsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> streamName = const Value.absent(),
                Value<String> partitionKey = const Value.absent(),
                Value<Uint8List> data = const Value.absent(),
                Value<int> dataSize = const Value.absent(),
                Value<int> retryCount = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
              }) => CachedRecordsCompanion(
                id: id,
                streamName: streamName,
                partitionKey: partitionKey,
                data: data,
                dataSize: dataSize,
                retryCount: retryCount,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String streamName,
                Value<String> partitionKey = const Value.absent(),
                required Uint8List data,
                required int dataSize,
                Value<int> retryCount = const Value.absent(),
                required int createdAt,
              }) => CachedRecordsCompanion.insert(
                id: id,
                streamName: streamName,
                partitionKey: partitionKey,
                data: data,
                dataSize: dataSize,
                retryCount: retryCount,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CachedRecordsTableProcessedTableManager =
    ProcessedTableManager<
      _$RecordCacheDatabase,
      $CachedRecordsTable,
      DriftStoredRecord,
      $$CachedRecordsTableFilterComposer,
      $$CachedRecordsTableOrderingComposer,
      $$CachedRecordsTableAnnotationComposer,
      $$CachedRecordsTableCreateCompanionBuilder,
      $$CachedRecordsTableUpdateCompanionBuilder,
      (
        DriftStoredRecord,
        BaseReferences<
          _$RecordCacheDatabase,
          $CachedRecordsTable,
          DriftStoredRecord
        >,
      ),
      DriftStoredRecord,
      PrefetchHooks Function()
    >;

class $RecordCacheDatabaseManager {
  final _$RecordCacheDatabase _db;
  $RecordCacheDatabaseManager(this._db);
  $$CachedRecordsTableTableManager get cachedRecords =>
      $$CachedRecordsTableTableManager(_db, _db.cachedRecords);
}
