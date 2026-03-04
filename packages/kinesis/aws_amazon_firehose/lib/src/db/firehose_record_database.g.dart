// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firehose_record_database.dart';

// ignore_for_file: type=lint
class $FirehoseRecordsTable extends FirehoseRecords
    with TableInfo<$FirehoseRecordsTable, FirehoseRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FirehoseRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _streamNameMeta =
      const VerificationMeta('streamName');
  @override
  late final GeneratedColumn<String> streamName = GeneratedColumn<String>(
      'stream_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<Uint8List> data = GeneratedColumn<Uint8List>(
      'data', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  static const VerificationMeta _dataSizeMeta =
      const VerificationMeta('dataSize');
  @override
  late final GeneratedColumn<int> dataSize = GeneratedColumn<int>(
      'data_size', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _retryCountMeta =
      const VerificationMeta('retryCount');
  @override
  late final GeneratedColumn<int> retryCount = GeneratedColumn<int>(
      'retry_count', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
      'created_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, streamName, data, dataSize, retryCount, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'firehose_records';
  @override
  VerificationContext validateIntegrity(Insertable<FirehoseRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('stream_name')) {
      context.handle(
          _streamNameMeta,
          streamName.isAcceptableOrUnknown(
              data['stream_name']!, _streamNameMeta));
    } else if (isInserting) {
      context.missing(_streamNameMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['data']!, _dataMeta));
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    if (data.containsKey('data_size')) {
      context.handle(_dataSizeMeta,
          dataSize.isAcceptableOrUnknown(data['data_size']!, _dataSizeMeta));
    } else if (isInserting) {
      context.missing(_dataSizeMeta);
    }
    if (data.containsKey('retry_count')) {
      context.handle(
          _retryCountMeta,
          retryCount.isAcceptableOrUnknown(
              data['retry_count']!, _retryCountMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FirehoseRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FirehoseRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      streamName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}stream_name'])!,
      data: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}data'])!,
      dataSize: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}data_size'])!,
      retryCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}retry_count'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $FirehoseRecordsTable createAlias(String alias) {
    return $FirehoseRecordsTable(attachedDatabase, alias);
  }
}

class FirehoseRecord extends DataClass implements Insertable<FirehoseRecord> {
  /// Auto-incrementing primary key.
  final int id;

  /// The delivery stream name.
  final String streamName;

  /// The data blob.
  final Uint8List data;

  /// Size of the data in bytes (for efficient batch size calculations).
  final int dataSize;

  /// Number of times this record has been retried.
  final int retryCount;

  /// Timestamp when the record was created (milliseconds since epoch).
  final int createdAt;
  const FirehoseRecord(
      {required this.id,
      required this.streamName,
      required this.data,
      required this.dataSize,
      required this.retryCount,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['stream_name'] = Variable<String>(streamName);
    map['data'] = Variable<Uint8List>(data);
    map['data_size'] = Variable<int>(dataSize);
    map['retry_count'] = Variable<int>(retryCount);
    map['created_at'] = Variable<int>(createdAt);
    return map;
  }

  FirehoseRecordsCompanion toCompanion(bool nullToAbsent) {
    return FirehoseRecordsCompanion(
      id: Value(id),
      streamName: Value(streamName),
      data: Value(data),
      dataSize: Value(dataSize),
      retryCount: Value(retryCount),
      createdAt: Value(createdAt),
    );
  }

  factory FirehoseRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FirehoseRecord(
      id: serializer.fromJson<int>(json['id']),
      streamName: serializer.fromJson<String>(json['streamName']),
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
      'data': serializer.toJson<Uint8List>(data),
      'dataSize': serializer.toJson<int>(dataSize),
      'retryCount': serializer.toJson<int>(retryCount),
      'createdAt': serializer.toJson<int>(createdAt),
    };
  }

  FirehoseRecord copyWith(
          {int? id,
          String? streamName,
          Uint8List? data,
          int? dataSize,
          int? retryCount,
          int? createdAt}) =>
      FirehoseRecord(
        id: id ?? this.id,
        streamName: streamName ?? this.streamName,
        data: data ?? this.data,
        dataSize: dataSize ?? this.dataSize,
        retryCount: retryCount ?? this.retryCount,
        createdAt: createdAt ?? this.createdAt,
      );
  FirehoseRecord copyWithCompanion(FirehoseRecordsCompanion data) {
    return FirehoseRecord(
      id: data.id.present ? data.id.value : this.id,
      streamName:
          data.streamName.present ? data.streamName.value : this.streamName,
      data: data.data.present ? data.data.value : this.data,
      dataSize: data.dataSize.present ? data.dataSize.value : this.dataSize,
      retryCount:
          data.retryCount.present ? data.retryCount.value : this.retryCount,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FirehoseRecord(')
          ..write('id: $id, ')
          ..write('streamName: $streamName, ')
          ..write('data: $data, ')
          ..write('dataSize: $dataSize, ')
          ..write('retryCount: $retryCount, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, streamName, $driftBlobEquality.hash(data),
      dataSize, retryCount, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FirehoseRecord &&
          other.id == this.id &&
          other.streamName == this.streamName &&
          $driftBlobEquality.equals(other.data, this.data) &&
          other.dataSize == this.dataSize &&
          other.retryCount == this.retryCount &&
          other.createdAt == this.createdAt);
}

class FirehoseRecordsCompanion extends UpdateCompanion<FirehoseRecord> {
  final Value<int> id;
  final Value<String> streamName;
  final Value<Uint8List> data;
  final Value<int> dataSize;
  final Value<int> retryCount;
  final Value<int> createdAt;
  const FirehoseRecordsCompanion({
    this.id = const Value.absent(),
    this.streamName = const Value.absent(),
    this.data = const Value.absent(),
    this.dataSize = const Value.absent(),
    this.retryCount = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  FirehoseRecordsCompanion.insert({
    this.id = const Value.absent(),
    required String streamName,
    required Uint8List data,
    required int dataSize,
    this.retryCount = const Value.absent(),
    required int createdAt,
  })  : streamName = Value(streamName),
        data = Value(data),
        dataSize = Value(dataSize),
        createdAt = Value(createdAt);
  static Insertable<FirehoseRecord> custom({
    Expression<int>? id,
    Expression<String>? streamName,
    Expression<Uint8List>? data,
    Expression<int>? dataSize,
    Expression<int>? retryCount,
    Expression<int>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (streamName != null) 'stream_name': streamName,
      if (data != null) 'data': data,
      if (dataSize != null) 'data_size': dataSize,
      if (retryCount != null) 'retry_count': retryCount,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  FirehoseRecordsCompanion copyWith(
      {Value<int>? id,
      Value<String>? streamName,
      Value<Uint8List>? data,
      Value<int>? dataSize,
      Value<int>? retryCount,
      Value<int>? createdAt}) {
    return FirehoseRecordsCompanion(
      id: id ?? this.id,
      streamName: streamName ?? this.streamName,
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
    return (StringBuffer('FirehoseRecordsCompanion(')
          ..write('id: $id, ')
          ..write('streamName: $streamName, ')
          ..write('data: $data, ')
          ..write('dataSize: $dataSize, ')
          ..write('retryCount: $retryCount, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$FirehoseRecordDatabase extends GeneratedDatabase {
  _$FirehoseRecordDatabase(QueryExecutor e) : super(e);
  $FirehoseRecordDatabaseManager get managers =>
      $FirehoseRecordDatabaseManager(this);
  late final $FirehoseRecordsTable firehoseRecords =
      $FirehoseRecordsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [firehoseRecords];
}

typedef $$FirehoseRecordsTableCreateCompanionBuilder = FirehoseRecordsCompanion
    Function({
  Value<int> id,
  required String streamName,
  required Uint8List data,
  required int dataSize,
  Value<int> retryCount,
  required int createdAt,
});
typedef $$FirehoseRecordsTableUpdateCompanionBuilder = FirehoseRecordsCompanion
    Function({
  Value<int> id,
  Value<String> streamName,
  Value<Uint8List> data,
  Value<int> dataSize,
  Value<int> retryCount,
  Value<int> createdAt,
});

class $$FirehoseRecordsTableFilterComposer
    extends Composer<_$FirehoseRecordDatabase, $FirehoseRecordsTable> {
  $$FirehoseRecordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get streamName => $composableBuilder(
      column: $table.streamName, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get data => $composableBuilder(
      column: $table.data, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get dataSize => $composableBuilder(
      column: $table.dataSize, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get retryCount => $composableBuilder(
      column: $table.retryCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$FirehoseRecordsTableOrderingComposer
    extends Composer<_$FirehoseRecordDatabase, $FirehoseRecordsTable> {
  $$FirehoseRecordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get streamName => $composableBuilder(
      column: $table.streamName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get data => $composableBuilder(
      column: $table.data, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get dataSize => $composableBuilder(
      column: $table.dataSize, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get retryCount => $composableBuilder(
      column: $table.retryCount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$FirehoseRecordsTableAnnotationComposer
    extends Composer<_$FirehoseRecordDatabase, $FirehoseRecordsTable> {
  $$FirehoseRecordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get streamName => $composableBuilder(
      column: $table.streamName, builder: (column) => column);

  GeneratedColumn<Uint8List> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);

  GeneratedColumn<int> get dataSize =>
      $composableBuilder(column: $table.dataSize, builder: (column) => column);

  GeneratedColumn<int> get retryCount => $composableBuilder(
      column: $table.retryCount, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$FirehoseRecordsTableTableManager extends RootTableManager<
    _$FirehoseRecordDatabase,
    $FirehoseRecordsTable,
    FirehoseRecord,
    $$FirehoseRecordsTableFilterComposer,
    $$FirehoseRecordsTableOrderingComposer,
    $$FirehoseRecordsTableAnnotationComposer,
    $$FirehoseRecordsTableCreateCompanionBuilder,
    $$FirehoseRecordsTableUpdateCompanionBuilder,
    (
      FirehoseRecord,
      BaseReferences<_$FirehoseRecordDatabase, $FirehoseRecordsTable,
          FirehoseRecord>
    ),
    FirehoseRecord,
    PrefetchHooks Function()> {
  $$FirehoseRecordsTableTableManager(
      _$FirehoseRecordDatabase db, $FirehoseRecordsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FirehoseRecordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FirehoseRecordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FirehoseRecordsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> streamName = const Value.absent(),
            Value<Uint8List> data = const Value.absent(),
            Value<int> dataSize = const Value.absent(),
            Value<int> retryCount = const Value.absent(),
            Value<int> createdAt = const Value.absent(),
          }) =>
              FirehoseRecordsCompanion(
            id: id,
            streamName: streamName,
            data: data,
            dataSize: dataSize,
            retryCount: retryCount,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String streamName,
            required Uint8List data,
            required int dataSize,
            Value<int> retryCount = const Value.absent(),
            required int createdAt,
          }) =>
              FirehoseRecordsCompanion.insert(
            id: id,
            streamName: streamName,
            data: data,
            dataSize: dataSize,
            retryCount: retryCount,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$FirehoseRecordsTableProcessedTableManager = ProcessedTableManager<
    _$FirehoseRecordDatabase,
    $FirehoseRecordsTable,
    FirehoseRecord,
    $$FirehoseRecordsTableFilterComposer,
    $$FirehoseRecordsTableOrderingComposer,
    $$FirehoseRecordsTableAnnotationComposer,
    $$FirehoseRecordsTableCreateCompanionBuilder,
    $$FirehoseRecordsTableUpdateCompanionBuilder,
    (
      FirehoseRecord,
      BaseReferences<_$FirehoseRecordDatabase, $FirehoseRecordsTable,
          FirehoseRecord>
    ),
    FirehoseRecord,
    PrefetchHooks Function()>;

class $FirehoseRecordDatabaseManager {
  final _$FirehoseRecordDatabase _db;
  $FirehoseRecordDatabaseManager(this._db);
  $$FirehoseRecordsTableTableManager get firehoseRecords =>
      $$FirehoseRecordsTableTableManager(_db, _db.firehoseRecords);
}
