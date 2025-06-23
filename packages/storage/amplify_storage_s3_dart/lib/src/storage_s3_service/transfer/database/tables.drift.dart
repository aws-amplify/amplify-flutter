// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/tables.drift.dart'
    as i1;
import 'package:amplify_storage_s3_dart/src/storage_s3_service/transfer/database/tables.dart'
    as i2;

typedef $$TransferRecordsTableCreateCompanionBuilder =
    i1.TransferRecordsCompanion Function({
      i0.Value<int> id,
      required String uploadId,
      required String objectKey,
      required String createdAt,
      i0.Value<String?> bucketName,
      i0.Value<String?> awsRegion,
    });
typedef $$TransferRecordsTableUpdateCompanionBuilder =
    i1.TransferRecordsCompanion Function({
      i0.Value<int> id,
      i0.Value<String> uploadId,
      i0.Value<String> objectKey,
      i0.Value<String> createdAt,
      i0.Value<String?> bucketName,
      i0.Value<String?> awsRegion,
    });

class $$TransferRecordsTableFilterComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$TransferRecordsTable> {
  $$TransferRecordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<String> get uploadId => $composableBuilder(
    column: $table.uploadId,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<String> get objectKey => $composableBuilder(
    column: $table.objectKey,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<String> get bucketName => $composableBuilder(
    column: $table.bucketName,
    builder: (column) => i0.ColumnFilters(column),
  );

  i0.ColumnFilters<String> get awsRegion => $composableBuilder(
    column: $table.awsRegion,
    builder: (column) => i0.ColumnFilters(column),
  );
}

class $$TransferRecordsTableOrderingComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$TransferRecordsTable> {
  $$TransferRecordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<String> get uploadId => $composableBuilder(
    column: $table.uploadId,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<String> get objectKey => $composableBuilder(
    column: $table.objectKey,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<String> get bucketName => $composableBuilder(
    column: $table.bucketName,
    builder: (column) => i0.ColumnOrderings(column),
  );

  i0.ColumnOrderings<String> get awsRegion => $composableBuilder(
    column: $table.awsRegion,
    builder: (column) => i0.ColumnOrderings(column),
  );
}

class $$TransferRecordsTableAnnotationComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.$TransferRecordsTable> {
  $$TransferRecordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  i0.GeneratedColumn<String> get uploadId =>
      $composableBuilder(column: $table.uploadId, builder: (column) => column);

  i0.GeneratedColumn<String> get objectKey =>
      $composableBuilder(column: $table.objectKey, builder: (column) => column);

  i0.GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  i0.GeneratedColumn<String> get bucketName => $composableBuilder(
    column: $table.bucketName,
    builder: (column) => column,
  );

  i0.GeneratedColumn<String> get awsRegion =>
      $composableBuilder(column: $table.awsRegion, builder: (column) => column);
}

class $$TransferRecordsTableTableManager
    extends
        i0.RootTableManager<
          i0.GeneratedDatabase,
          i1.$TransferRecordsTable,
          i1.TransferRecord,
          i1.$$TransferRecordsTableFilterComposer,
          i1.$$TransferRecordsTableOrderingComposer,
          i1.$$TransferRecordsTableAnnotationComposer,
          $$TransferRecordsTableCreateCompanionBuilder,
          $$TransferRecordsTableUpdateCompanionBuilder,
          (
            i1.TransferRecord,
            i0.BaseReferences<
              i0.GeneratedDatabase,
              i1.$TransferRecordsTable,
              i1.TransferRecord
            >,
          ),
          i1.TransferRecord,
          i0.PrefetchHooks Function()
        > {
  $$TransferRecordsTableTableManager(
    i0.GeneratedDatabase db,
    i1.$TransferRecordsTable table,
  ) : super(
        i0.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              i1.$$TransferRecordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              i1.$$TransferRecordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () => i1
              .$$TransferRecordsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                i0.Value<int> id = const i0.Value.absent(),
                i0.Value<String> uploadId = const i0.Value.absent(),
                i0.Value<String> objectKey = const i0.Value.absent(),
                i0.Value<String> createdAt = const i0.Value.absent(),
                i0.Value<String?> bucketName = const i0.Value.absent(),
                i0.Value<String?> awsRegion = const i0.Value.absent(),
              }) => i1.TransferRecordsCompanion(
                id: id,
                uploadId: uploadId,
                objectKey: objectKey,
                createdAt: createdAt,
                bucketName: bucketName,
                awsRegion: awsRegion,
              ),
          createCompanionCallback:
              ({
                i0.Value<int> id = const i0.Value.absent(),
                required String uploadId,
                required String objectKey,
                required String createdAt,
                i0.Value<String?> bucketName = const i0.Value.absent(),
                i0.Value<String?> awsRegion = const i0.Value.absent(),
              }) => i1.TransferRecordsCompanion.insert(
                id: id,
                uploadId: uploadId,
                objectKey: objectKey,
                createdAt: createdAt,
                bucketName: bucketName,
                awsRegion: awsRegion,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), i0.BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TransferRecordsTableProcessedTableManager =
    i0.ProcessedTableManager<
      i0.GeneratedDatabase,
      i1.$TransferRecordsTable,
      i1.TransferRecord,
      i1.$$TransferRecordsTableFilterComposer,
      i1.$$TransferRecordsTableOrderingComposer,
      i1.$$TransferRecordsTableAnnotationComposer,
      $$TransferRecordsTableCreateCompanionBuilder,
      $$TransferRecordsTableUpdateCompanionBuilder,
      (
        i1.TransferRecord,
        i0.BaseReferences<
          i0.GeneratedDatabase,
          i1.$TransferRecordsTable,
          i1.TransferRecord
        >,
      ),
      i1.TransferRecord,
      i0.PrefetchHooks Function()
    >;

class $TransferRecordsTable extends i2.TransferRecords
    with i0.TableInfo<$TransferRecordsTable, i1.TransferRecord> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransferRecordsTable(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _idMeta = const i0.VerificationMeta('id');
  @override
  late final i0.GeneratedColumn<int> id = i0.GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: i0.DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: i0.GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const i0.VerificationMeta _uploadIdMeta = const i0.VerificationMeta(
    'uploadId',
  );
  @override
  late final i0.GeneratedColumn<String> uploadId = i0.GeneratedColumn<String>(
    'upload_id',
    aliasedName,
    false,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const i0.VerificationMeta _objectKeyMeta = const i0.VerificationMeta(
    'objectKey',
  );
  @override
  late final i0.GeneratedColumn<String> objectKey = i0.GeneratedColumn<String>(
    'object_key',
    aliasedName,
    false,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const i0.VerificationMeta _createdAtMeta = const i0.VerificationMeta(
    'createdAt',
  );
  @override
  late final i0.GeneratedColumn<String> createdAt = i0.GeneratedColumn<String>(
    'created_at',
    aliasedName,
    false,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const i0.VerificationMeta _bucketNameMeta = const i0.VerificationMeta(
    'bucketName',
  );
  @override
  late final i0.GeneratedColumn<String> bucketName = i0.GeneratedColumn<String>(
    'bucket_name',
    aliasedName,
    true,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const i0.VerificationMeta _awsRegionMeta = const i0.VerificationMeta(
    'awsRegion',
  );
  @override
  late final i0.GeneratedColumn<String> awsRegion = i0.GeneratedColumn<String>(
    'aws_region',
    aliasedName,
    true,
    type: i0.DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<i0.GeneratedColumn> get $columns => [
    id,
    uploadId,
    objectKey,
    createdAt,
    bucketName,
    awsRegion,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transfer_records';
  @override
  i0.VerificationContext validateIntegrity(
    i0.Insertable<i1.TransferRecord> instance, {
    bool isInserting = false,
  }) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('upload_id')) {
      context.handle(
        _uploadIdMeta,
        uploadId.isAcceptableOrUnknown(data['upload_id']!, _uploadIdMeta),
      );
    } else if (isInserting) {
      context.missing(_uploadIdMeta);
    }
    if (data.containsKey('object_key')) {
      context.handle(
        _objectKeyMeta,
        objectKey.isAcceptableOrUnknown(data['object_key']!, _objectKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_objectKeyMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('bucket_name')) {
      context.handle(
        _bucketNameMeta,
        bucketName.isAcceptableOrUnknown(data['bucket_name']!, _bucketNameMeta),
      );
    }
    if (data.containsKey('aws_region')) {
      context.handle(
        _awsRegionMeta,
        awsRegion.isAcceptableOrUnknown(data['aws_region']!, _awsRegionMeta),
      );
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {id};
  @override
  i1.TransferRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.TransferRecord(
      id: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      uploadId: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}upload_id'],
      )!,
      objectKey: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}object_key'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}created_at'],
      )!,
      bucketName: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}bucket_name'],
      ),
      awsRegion: attachedDatabase.typeMapping.read(
        i0.DriftSqlType.string,
        data['${effectivePrefix}aws_region'],
      ),
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

  /// Amazon S3 bucket name.
  final String? bucketName;

  /// AWS region of Amazon S3 bucket.
  final String? awsRegion;
  const TransferRecord({
    required this.id,
    required this.uploadId,
    required this.objectKey,
    required this.createdAt,
    this.bucketName,
    this.awsRegion,
  });
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['id'] = i0.Variable<int>(id);
    map['upload_id'] = i0.Variable<String>(uploadId);
    map['object_key'] = i0.Variable<String>(objectKey);
    map['created_at'] = i0.Variable<String>(createdAt);
    if (!nullToAbsent || bucketName != null) {
      map['bucket_name'] = i0.Variable<String>(bucketName);
    }
    if (!nullToAbsent || awsRegion != null) {
      map['aws_region'] = i0.Variable<String>(awsRegion);
    }
    return map;
  }

  i1.TransferRecordsCompanion toCompanion(bool nullToAbsent) {
    return i1.TransferRecordsCompanion(
      id: i0.Value(id),
      uploadId: i0.Value(uploadId),
      objectKey: i0.Value(objectKey),
      createdAt: i0.Value(createdAt),
      bucketName: bucketName == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(bucketName),
      awsRegion: awsRegion == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(awsRegion),
    );
  }

  factory TransferRecord.fromJson(
    Map<String, dynamic> json, {
    i0.ValueSerializer? serializer,
  }) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return TransferRecord(
      id: serializer.fromJson<int>(json['id']),
      uploadId: serializer.fromJson<String>(json['uploadId']),
      objectKey: serializer.fromJson<String>(json['objectKey']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
      bucketName: serializer.fromJson<String?>(json['bucketName']),
      awsRegion: serializer.fromJson<String?>(json['awsRegion']),
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
      'bucketName': serializer.toJson<String?>(bucketName),
      'awsRegion': serializer.toJson<String?>(awsRegion),
    };
  }

  i1.TransferRecord copyWith({
    int? id,
    String? uploadId,
    String? objectKey,
    String? createdAt,
    i0.Value<String?> bucketName = const i0.Value.absent(),
    i0.Value<String?> awsRegion = const i0.Value.absent(),
  }) => i1.TransferRecord(
    id: id ?? this.id,
    uploadId: uploadId ?? this.uploadId,
    objectKey: objectKey ?? this.objectKey,
    createdAt: createdAt ?? this.createdAt,
    bucketName: bucketName.present ? bucketName.value : this.bucketName,
    awsRegion: awsRegion.present ? awsRegion.value : this.awsRegion,
  );
  TransferRecord copyWithCompanion(i1.TransferRecordsCompanion data) {
    return TransferRecord(
      id: data.id.present ? data.id.value : this.id,
      uploadId: data.uploadId.present ? data.uploadId.value : this.uploadId,
      objectKey: data.objectKey.present ? data.objectKey.value : this.objectKey,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      bucketName: data.bucketName.present
          ? data.bucketName.value
          : this.bucketName,
      awsRegion: data.awsRegion.present ? data.awsRegion.value : this.awsRegion,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TransferRecord(')
          ..write('id: $id, ')
          ..write('uploadId: $uploadId, ')
          ..write('objectKey: $objectKey, ')
          ..write('createdAt: $createdAt, ')
          ..write('bucketName: $bucketName, ')
          ..write('awsRegion: $awsRegion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, uploadId, objectKey, createdAt, bucketName, awsRegion);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.TransferRecord &&
          other.id == this.id &&
          other.uploadId == this.uploadId &&
          other.objectKey == this.objectKey &&
          other.createdAt == this.createdAt &&
          other.bucketName == this.bucketName &&
          other.awsRegion == this.awsRegion);
}

class TransferRecordsCompanion extends i0.UpdateCompanion<i1.TransferRecord> {
  final i0.Value<int> id;
  final i0.Value<String> uploadId;
  final i0.Value<String> objectKey;
  final i0.Value<String> createdAt;
  final i0.Value<String?> bucketName;
  final i0.Value<String?> awsRegion;
  const TransferRecordsCompanion({
    this.id = const i0.Value.absent(),
    this.uploadId = const i0.Value.absent(),
    this.objectKey = const i0.Value.absent(),
    this.createdAt = const i0.Value.absent(),
    this.bucketName = const i0.Value.absent(),
    this.awsRegion = const i0.Value.absent(),
  });
  TransferRecordsCompanion.insert({
    this.id = const i0.Value.absent(),
    required String uploadId,
    required String objectKey,
    required String createdAt,
    this.bucketName = const i0.Value.absent(),
    this.awsRegion = const i0.Value.absent(),
  }) : uploadId = i0.Value(uploadId),
       objectKey = i0.Value(objectKey),
       createdAt = i0.Value(createdAt);
  static i0.Insertable<i1.TransferRecord> custom({
    i0.Expression<int>? id,
    i0.Expression<String>? uploadId,
    i0.Expression<String>? objectKey,
    i0.Expression<String>? createdAt,
    i0.Expression<String>? bucketName,
    i0.Expression<String>? awsRegion,
  }) {
    return i0.RawValuesInsertable({
      if (id != null) 'id': id,
      if (uploadId != null) 'upload_id': uploadId,
      if (objectKey != null) 'object_key': objectKey,
      if (createdAt != null) 'created_at': createdAt,
      if (bucketName != null) 'bucket_name': bucketName,
      if (awsRegion != null) 'aws_region': awsRegion,
    });
  }

  i1.TransferRecordsCompanion copyWith({
    i0.Value<int>? id,
    i0.Value<String>? uploadId,
    i0.Value<String>? objectKey,
    i0.Value<String>? createdAt,
    i0.Value<String?>? bucketName,
    i0.Value<String?>? awsRegion,
  }) {
    return i1.TransferRecordsCompanion(
      id: id ?? this.id,
      uploadId: uploadId ?? this.uploadId,
      objectKey: objectKey ?? this.objectKey,
      createdAt: createdAt ?? this.createdAt,
      bucketName: bucketName ?? this.bucketName,
      awsRegion: awsRegion ?? this.awsRegion,
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
    if (bucketName.present) {
      map['bucket_name'] = i0.Variable<String>(bucketName.value);
    }
    if (awsRegion.present) {
      map['aws_region'] = i0.Variable<String>(awsRegion.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransferRecordsCompanion(')
          ..write('id: $id, ')
          ..write('uploadId: $uploadId, ')
          ..write('objectKey: $objectKey, ')
          ..write('createdAt: $createdAt, ')
          ..write('bucketName: $bucketName, ')
          ..write('awsRegion: $awsRegion')
          ..write(')'))
        .toString();
  }
}
