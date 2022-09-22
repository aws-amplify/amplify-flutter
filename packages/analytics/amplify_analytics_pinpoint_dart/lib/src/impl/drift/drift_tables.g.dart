// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_tables.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class DriftJsonString extends DataClass implements Insertable<DriftJsonString> {
  final int id;
  final String jsonString;
  const DriftJsonString({required this.id, required this.jsonString});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['json_string'] = Variable<String>(jsonString);
    return map;
  }

  DriftJsonStringsCompanion toCompanion(bool nullToAbsent) {
    return DriftJsonStringsCompanion(
      id: Value(id),
      jsonString: Value(jsonString),
    );
  }

  factory DriftJsonString.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftJsonString(
      id: serializer.fromJson<int>(json['id']),
      jsonString: serializer.fromJson<String>(json['jsonString']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'jsonString': serializer.toJson<String>(jsonString),
    };
  }

  DriftJsonString copyWith({int? id, String? jsonString}) => DriftJsonString(
        id: id ?? this.id,
        jsonString: jsonString ?? this.jsonString,
      );
  @override
  String toString() {
    return (StringBuffer('DriftJsonString(')
          ..write('id: $id, ')
          ..write('jsonString: $jsonString')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, jsonString);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftJsonString &&
          other.id == this.id &&
          other.jsonString == this.jsonString);
}

class DriftJsonStringsCompanion extends UpdateCompanion<DriftJsonString> {
  final Value<int> id;
  final Value<String> jsonString;
  const DriftJsonStringsCompanion({
    this.id = const Value.absent(),
    this.jsonString = const Value.absent(),
  });
  DriftJsonStringsCompanion.insert({
    this.id = const Value.absent(),
    required String jsonString,
  }) : jsonString = Value(jsonString);
  static Insertable<DriftJsonString> custom({
    Expression<int>? id,
    Expression<String>? jsonString,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (jsonString != null) 'json_string': jsonString,
    });
  }

  DriftJsonStringsCompanion copyWith(
      {Value<int>? id, Value<String>? jsonString}) {
    return DriftJsonStringsCompanion(
      id: id ?? this.id,
      jsonString: jsonString ?? this.jsonString,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (jsonString.present) {
      map['json_string'] = Variable<String>(jsonString.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftJsonStringsCompanion(')
          ..write('id: $id, ')
          ..write('jsonString: $jsonString')
          ..write(')'))
        .toString();
  }
}

class $DriftJsonStringsTable extends DriftJsonStrings
    with TableInfo<$DriftJsonStringsTable, DriftJsonString> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftJsonStringsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _jsonStringMeta = const VerificationMeta('jsonString');
  @override
  late final GeneratedColumn<String> jsonString = GeneratedColumn<String>(
      'json_string', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, jsonString];
  @override
  String get aliasedName => _alias ?? 'drift_json_strings';
  @override
  String get actualTableName => 'drift_json_strings';
  @override
  VerificationContext validateIntegrity(Insertable<DriftJsonString> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('json_string')) {
      context.handle(
          _jsonStringMeta,
          jsonString.isAcceptableOrUnknown(
              data['json_string']!, _jsonStringMeta));
    } else if (isInserting) {
      context.missing(_jsonStringMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftJsonString map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftJsonString(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      jsonString: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}json_string'])!,
    );
  }

  @override
  $DriftJsonStringsTable createAlias(String alias) {
    return $DriftJsonStringsTable(attachedDatabase, alias);
  }
}

abstract class _$DriftDatabaseJsonStrings extends GeneratedDatabase {
  _$DriftDatabaseJsonStrings(QueryExecutor e) : super(e);
  late final $DriftJsonStringsTable driftJsonStrings =
      $DriftJsonStringsTable(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [driftJsonStrings];
}
