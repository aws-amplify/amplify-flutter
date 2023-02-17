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
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, value];
  @override
  String get aliasedName => _alias ?? 'drift_queued_items';
  @override
  String get actualTableName => 'drift_queued_items';
  @override
  VerificationContext validateIntegrity(Insertable<DriftQueuedItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
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
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
    );
  }

  @override
  $DriftQueuedItemsTable createAlias(String alias) {
    return $DriftQueuedItemsTable(attachedDatabase, alias);
  }
}

class DriftQueuedItem extends DataClass implements Insertable<DriftQueuedItem> {
  /// Identifies object in the SQL database
  final int id;

  /// The string value stored for this object
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
    return DriftQueuedItemsCompanion(
      id: Value(id),
      value: Value(value),
    );
  }

  factory DriftQueuedItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
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

  DriftQueuedItem copyWith({int? id, String? value}) => DriftQueuedItem(
        id: id ?? this.id,
        value: value ?? this.value,
      );
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
  late final $DriftQueuedItemsTable driftQueuedItems =
      $DriftQueuedItemsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [driftQueuedItems];
}
