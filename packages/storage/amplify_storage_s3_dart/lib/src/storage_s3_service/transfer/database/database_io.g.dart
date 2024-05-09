// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_io.dart';

// ignore_for_file: type=lint
class $TransferRecordsTable extends TransferRecords
    with TableInfo<$TransferRecordsTable, data.TransferRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransferRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _uploadIdMeta =
      const VerificationMeta('uploadId');
  @override
  late final GeneratedColumn<String> uploadId = GeneratedColumn<String>(
      'upload_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _objectKeyMeta =
      const VerificationMeta('objectKey');
  @override
  late final GeneratedColumn<String> objectKey = GeneratedColumn<String>(
      'object_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, uploadId, objectKey, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transfer_records';
  @override
  VerificationContext validateIntegrity(
      Insertable<data.TransferRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('upload_id')) {
      context.handle(_uploadIdMeta,
          uploadId.isAcceptableOrUnknown(data['upload_id']!, _uploadIdMeta));
    } else if (isInserting) {
      context.missing(_uploadIdMeta);
    }
    if (data.containsKey('object_key')) {
      context.handle(_objectKeyMeta,
          objectKey.isAcceptableOrUnknown(data['object_key']!, _objectKeyMeta));
    } else if (isInserting) {
      context.missing(_objectKeyMeta);
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
  data.TransferRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return data.TransferRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      uploadId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}upload_id'])!,
      objectKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}object_key'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $TransferRecordsTable createAlias(String alias) {
    return $TransferRecordsTable(attachedDatabase, alias);
  }
}

class TransferRecord extends DataClass
    implements Insertable<data.TransferRecord> {
  /// The record id.
  final int id;

  /// The multipart upload id.
  final String uploadId;

  /// The object key associated with the [uploadId].
  final String objectKey;

  /// Timestamp of [uploadId] creation.
  final String createdAt;
  const TransferRecord(
      {required this.id,
      required this.uploadId,
      required this.objectKey,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['upload_id'] = Variable<String>(uploadId);
    map['object_key'] = Variable<String>(objectKey);
    map['created_at'] = Variable<String>(createdAt);
    return map;
  }

  TransferRecordsCompanion toCompanion(bool nullToAbsent) {
    return TransferRecordsCompanion(
      id: Value(id),
      uploadId: Value(uploadId),
      objectKey: Value(objectKey),
      createdAt: Value(createdAt),
    );
  }

  factory TransferRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TransferRecord(
      id: serializer.fromJson<int>(json['id']),
      uploadId: serializer.fromJson<String>(json['uploadId']),
      objectKey: serializer.fromJson<String>(json['objectKey']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'uploadId': serializer.toJson<String>(uploadId),
      'objectKey': serializer.toJson<String>(objectKey),
      'createdAt': serializer.toJson<String>(createdAt),
    };
  }

  data.TransferRecord copyWith(
          {int? id, String? uploadId, String? objectKey, String? createdAt}) =>
      data.TransferRecord(
        id: id ?? this.id,
        uploadId: uploadId ?? this.uploadId,
        objectKey: objectKey ?? this.objectKey,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('TransferRecord(')
          ..write('id: $id, ')
          ..write('uploadId: $uploadId, ')
          ..write('objectKey: $objectKey, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, uploadId, objectKey, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is data.TransferRecord &&
          other.id == this.id &&
          other.uploadId == this.uploadId &&
          other.objectKey == this.objectKey &&
          other.createdAt == this.createdAt);
}

class TransferRecordsCompanion extends UpdateCompanion<data.TransferRecord> {
  final Value<int> id;
  final Value<String> uploadId;
  final Value<String> objectKey;
  final Value<String> createdAt;
  const TransferRecordsCompanion({
    this.id = const Value.absent(),
    this.uploadId = const Value.absent(),
    this.objectKey = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  TransferRecordsCompanion.insert({
    this.id = const Value.absent(),
    required String uploadId,
    required String objectKey,
    required String createdAt,
  })  : uploadId = Value(uploadId),
        objectKey = Value(objectKey),
        createdAt = Value(createdAt);
  static Insertable<data.TransferRecord> custom({
    Expression<int>? id,
    Expression<String>? uploadId,
    Expression<String>? objectKey,
    Expression<String>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (uploadId != null) 'upload_id': uploadId,
      if (objectKey != null) 'object_key': objectKey,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  TransferRecordsCompanion copyWith(
      {Value<int>? id,
      Value<String>? uploadId,
      Value<String>? objectKey,
      Value<String>? createdAt}) {
    return TransferRecordsCompanion(
      id: id ?? this.id,
      uploadId: uploadId ?? this.uploadId,
      objectKey: objectKey ?? this.objectKey,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (uploadId.present) {
      map['upload_id'] = Variable<String>(uploadId.value);
    }
    if (objectKey.present) {
      map['object_key'] = Variable<String>(objectKey.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransferRecordsCompanion(')
          ..write('id: $id, ')
          ..write('uploadId: $uploadId, ')
          ..write('objectKey: $objectKey, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$TransferDatabase extends GeneratedDatabase {
  _$TransferDatabase(QueryExecutor e) : super(e);
  _$TransferDatabaseManager get managers => _$TransferDatabaseManager(this);
  late final $TransferRecordsTable transferRecords =
      $TransferRecordsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [transferRecords];
}

typedef $$TransferRecordsTableInsertCompanionBuilder = TransferRecordsCompanion
    Function({
  Value<int> id,
  required String uploadId,
  required String objectKey,
  required String createdAt,
});
typedef $$TransferRecordsTableUpdateCompanionBuilder = TransferRecordsCompanion
    Function({
  Value<int> id,
  Value<String> uploadId,
  Value<String> objectKey,
  Value<String> createdAt,
});

class $$TransferRecordsTableTableManager extends RootTableManager<
    _$TransferDatabase,
    $TransferRecordsTable,
    data.TransferRecord,
    $$TransferRecordsTableFilterComposer,
    $$TransferRecordsTableOrderingComposer,
    $$TransferRecordsTableProcessedTableManager,
    $$TransferRecordsTableInsertCompanionBuilder,
    $$TransferRecordsTableUpdateCompanionBuilder> {
  $$TransferRecordsTableTableManager(
      _$TransferDatabase db, $TransferRecordsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TransferRecordsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TransferRecordsTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$TransferRecordsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> uploadId = const Value.absent(),
            Value<String> objectKey = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
          }) =>
              TransferRecordsCompanion(
            id: id,
            uploadId: uploadId,
            objectKey: objectKey,
            createdAt: createdAt,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String uploadId,
            required String objectKey,
            required String createdAt,
          }) =>
              TransferRecordsCompanion.insert(
            id: id,
            uploadId: uploadId,
            objectKey: objectKey,
            createdAt: createdAt,
          ),
        ));
}

class $$TransferRecordsTableProcessedTableManager extends ProcessedTableManager<
    _$TransferDatabase,
    $TransferRecordsTable,
    data.TransferRecord,
    $$TransferRecordsTableFilterComposer,
    $$TransferRecordsTableOrderingComposer,
    $$TransferRecordsTableProcessedTableManager,
    $$TransferRecordsTableInsertCompanionBuilder,
    $$TransferRecordsTableUpdateCompanionBuilder> {
  $$TransferRecordsTableProcessedTableManager(super.$state);
}

class $$TransferRecordsTableFilterComposer
    extends FilterComposer<_$TransferDatabase, $TransferRecordsTable> {
  $$TransferRecordsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get uploadId => $state.composableBuilder(
      column: $state.table.uploadId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get objectKey => $state.composableBuilder(
      column: $state.table.objectKey,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$TransferRecordsTableOrderingComposer
    extends OrderingComposer<_$TransferDatabase, $TransferRecordsTable> {
  $$TransferRecordsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get uploadId => $state.composableBuilder(
      column: $state.table.uploadId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get objectKey => $state.composableBuilder(
      column: $state.table.objectKey,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$TransferDatabaseManager {
  final _$TransferDatabase _db;
  _$TransferDatabaseManager(this._db);
  $$TransferRecordsTableTableManager get transferRecords =>
      $$TransferRecordsTableTableManager(_db, _db.transferRecords);
}
