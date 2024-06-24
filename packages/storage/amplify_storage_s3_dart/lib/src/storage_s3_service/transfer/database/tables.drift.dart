// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/tables.drift.dart'
    as i1;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/tables.dart'
    as i2;

class $TransferRecordsTable extends i2.TransferRecords
    with i0.TableInfo<$TransferRecordsTable, i1.TransferRecord> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransferRecordsTable(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _idMeta = const i0.VerificationMeta('id');
  @override
  late final i0.GeneratedColumn<int> id = i0.GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: i0.DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          i0.GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const i0.VerificationMeta _uploadIdMeta =
      const i0.VerificationMeta('uploadId');
  @override
  late final i0.GeneratedColumn<String> uploadId = i0.GeneratedColumn<String>(
      'upload_id', aliasedName, false,
      type: i0.DriftSqlType.string, requiredDuringInsert: true);
  static const i0.VerificationMeta _objectKeyMeta =
      const i0.VerificationMeta('objectKey');
  @override
  late final i0.GeneratedColumn<String> objectKey = i0.GeneratedColumn<String>(
      'object_key', aliasedName, false,
      type: i0.DriftSqlType.string, requiredDuringInsert: true);
  static const i0.VerificationMeta _createdAtMeta =
      const i0.VerificationMeta('createdAt');
  @override
  late final i0.GeneratedColumn<String> createdAt = i0.GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: i0.DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<i0.GeneratedColumn> get $columns => [id, uploadId, objectKey, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transfer_records';
  @override
  i0.VerificationContext validateIntegrity(
      i0.Insertable<i1.TransferRecord> instance,
      {bool isInserting = false}) {
    final context = i0.VerificationContext();
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
  Set<i0.GeneratedColumn> get $primaryKey => {id};
  @override
  i1.TransferRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.TransferRecord(
      id: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.int, data['${effectivePrefix}id'])!,
      uploadId: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}upload_id'])!,
      objectKey: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}object_key'])!,
      createdAt: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $TransferRecordsTable createAlias(String alias) {
    return $TransferRecordsTable(attachedDatabase, alias);
  }
}

class TransferRecord extends i0.DataClass
    implements i0.Insertable<i1.TransferRecord> {
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
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['id'] = i0.Variable<int>(id);
    map['upload_id'] = i0.Variable<String>(uploadId);
    map['object_key'] = i0.Variable<String>(objectKey);
    map['created_at'] = i0.Variable<String>(createdAt);
    return map;
  }

  i1.TransferRecordsCompanion toCompanion(bool nullToAbsent) {
    return i1.TransferRecordsCompanion(
      id: i0.Value(id),
      uploadId: i0.Value(uploadId),
      objectKey: i0.Value(objectKey),
      createdAt: i0.Value(createdAt),
    );
  }

  factory TransferRecord.fromJson(Map<String, dynamic> json,
      {i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return TransferRecord(
      id: serializer.fromJson<int>(json['id']),
      uploadId: serializer.fromJson<String>(json['uploadId']),
      objectKey: serializer.fromJson<String>(json['objectKey']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'uploadId': serializer.toJson<String>(uploadId),
      'objectKey': serializer.toJson<String>(objectKey),
      'createdAt': serializer.toJson<String>(createdAt),
    };
  }

  i1.TransferRecord copyWith(
          {int? id, String? uploadId, String? objectKey, String? createdAt}) =>
      i1.TransferRecord(
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
      (other is i1.TransferRecord &&
          other.id == this.id &&
          other.uploadId == this.uploadId &&
          other.objectKey == this.objectKey &&
          other.createdAt == this.createdAt);
}

class TransferRecordsCompanion extends i0.UpdateCompanion<i1.TransferRecord> {
  final i0.Value<int> id;
  final i0.Value<String> uploadId;
  final i0.Value<String> objectKey;
  final i0.Value<String> createdAt;
  const TransferRecordsCompanion({
    this.id = const i0.Value.absent(),
    this.uploadId = const i0.Value.absent(),
    this.objectKey = const i0.Value.absent(),
    this.createdAt = const i0.Value.absent(),
  });
  TransferRecordsCompanion.insert({
    this.id = const i0.Value.absent(),
    required String uploadId,
    required String objectKey,
    required String createdAt,
  })  : uploadId = i0.Value(uploadId),
        objectKey = i0.Value(objectKey),
        createdAt = i0.Value(createdAt);
  static i0.Insertable<i1.TransferRecord> custom({
    i0.Expression<int>? id,
    i0.Expression<String>? uploadId,
    i0.Expression<String>? objectKey,
    i0.Expression<String>? createdAt,
  }) {
    return i0.RawValuesInsertable({
      if (id != null) 'id': id,
      if (uploadId != null) 'upload_id': uploadId,
      if (objectKey != null) 'object_key': objectKey,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  i1.TransferRecordsCompanion copyWith(
      {i0.Value<int>? id,
      i0.Value<String>? uploadId,
      i0.Value<String>? objectKey,
      i0.Value<String>? createdAt}) {
    return i1.TransferRecordsCompanion(
      id: id ?? this.id,
      uploadId: uploadId ?? this.uploadId,
      objectKey: objectKey ?? this.objectKey,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (id.present) {
      map['id'] = i0.Variable<int>(id.value);
    }
    if (uploadId.present) {
      map['upload_id'] = i0.Variable<String>(uploadId.value);
    }
    if (objectKey.present) {
      map['object_key'] = i0.Variable<String>(objectKey.value);
    }
    if (createdAt.present) {
      map['created_at'] = i0.Variable<String>(createdAt.value);
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

typedef $$TransferRecordsTableInsertCompanionBuilder
    = i1.TransferRecordsCompanion Function({
  i0.Value<int> id,
  required String uploadId,
  required String objectKey,
  required String createdAt,
});
typedef $$TransferRecordsTableUpdateCompanionBuilder
    = i1.TransferRecordsCompanion Function({
  i0.Value<int> id,
  i0.Value<String> uploadId,
  i0.Value<String> objectKey,
  i0.Value<String> createdAt,
});

class $$TransferRecordsTableTableManager extends i0.RootTableManager<
    i0.GeneratedDatabase,
    i1.$TransferRecordsTable,
    i1.TransferRecord,
    i1.$$TransferRecordsTableFilterComposer,
    i1.$$TransferRecordsTableOrderingComposer,
    $$TransferRecordsTableProcessedTableManager,
    $$TransferRecordsTableInsertCompanionBuilder,
    $$TransferRecordsTableUpdateCompanionBuilder> {
  $$TransferRecordsTableTableManager(
      i0.GeneratedDatabase db, i1.$TransferRecordsTable table)
      : super(i0.TableManagerState(
          db: db,
          table: table,
          filteringComposer: i1.$$TransferRecordsTableFilterComposer(
              i0.ComposerState(db, table)),
          orderingComposer: i1.$$TransferRecordsTableOrderingComposer(
              i0.ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$TransferRecordsTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            i0.Value<int> id = const i0.Value.absent(),
            i0.Value<String> uploadId = const i0.Value.absent(),
            i0.Value<String> objectKey = const i0.Value.absent(),
            i0.Value<String> createdAt = const i0.Value.absent(),
          }) =>
              i1.TransferRecordsCompanion(
            id: id,
            uploadId: uploadId,
            objectKey: objectKey,
            createdAt: createdAt,
          ),
          getInsertCompanionBuilder: ({
            i0.Value<int> id = const i0.Value.absent(),
            required String uploadId,
            required String objectKey,
            required String createdAt,
          }) =>
              i1.TransferRecordsCompanion.insert(
            id: id,
            uploadId: uploadId,
            objectKey: objectKey,
            createdAt: createdAt,
          ),
        ));
}

class $$TransferRecordsTableProcessedTableManager
    extends i0.ProcessedTableManager<
        i0.GeneratedDatabase,
        i1.$TransferRecordsTable,
        i1.TransferRecord,
        i1.$$TransferRecordsTableFilterComposer,
        i1.$$TransferRecordsTableOrderingComposer,
        $$TransferRecordsTableProcessedTableManager,
        $$TransferRecordsTableInsertCompanionBuilder,
        $$TransferRecordsTableUpdateCompanionBuilder> {
  $$TransferRecordsTableProcessedTableManager(super.$state);
}

class $$TransferRecordsTableFilterComposer
    extends i0.FilterComposer<i0.GeneratedDatabase, i1.$TransferRecordsTable> {
  $$TransferRecordsTableFilterComposer(super.$state);
  i0.ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i0.ColumnFilters<String> get uploadId => $state.composableBuilder(
      column: $state.table.uploadId,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i0.ColumnFilters<String> get objectKey => $state.composableBuilder(
      column: $state.table.objectKey,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));

  i0.ColumnFilters<String> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          i0.ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$TransferRecordsTableOrderingComposer extends i0
    .OrderingComposer<i0.GeneratedDatabase, i1.$TransferRecordsTable> {
  $$TransferRecordsTableOrderingComposer(super.$state);
  i0.ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i0.ColumnOrderings<String> get uploadId => $state.composableBuilder(
      column: $state.table.uploadId,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i0.ColumnOrderings<String> get objectKey => $state.composableBuilder(
      column: $state.table.objectKey,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));

  i0.ColumnOrderings<String> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          i0.ColumnOrderings(column, joinBuilders: joinBuilders));
}
