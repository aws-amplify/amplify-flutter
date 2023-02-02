// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_tables_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTablesOutput extends ListTablesOutput {
  @override
  final String? lastEvaluatedTableName;
  @override
  final _i2.BuiltList<String>? tableNames;

  factory _$ListTablesOutput(
          [void Function(ListTablesOutputBuilder)? updates]) =>
      (new ListTablesOutputBuilder()..update(updates))._build();

  _$ListTablesOutput._({this.lastEvaluatedTableName, this.tableNames})
      : super._();

  @override
  ListTablesOutput rebuild(void Function(ListTablesOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTablesOutputBuilder toBuilder() =>
      new ListTablesOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTablesOutput &&
        lastEvaluatedTableName == other.lastEvaluatedTableName &&
        tableNames == other.tableNames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lastEvaluatedTableName.hashCode);
    _$hash = $jc(_$hash, tableNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListTablesOutputBuilder
    implements Builder<ListTablesOutput, ListTablesOutputBuilder> {
  _$ListTablesOutput? _$v;

  String? _lastEvaluatedTableName;
  String? get lastEvaluatedTableName => _$this._lastEvaluatedTableName;
  set lastEvaluatedTableName(String? lastEvaluatedTableName) =>
      _$this._lastEvaluatedTableName = lastEvaluatedTableName;

  _i2.ListBuilder<String>? _tableNames;
  _i2.ListBuilder<String> get tableNames =>
      _$this._tableNames ??= new _i2.ListBuilder<String>();
  set tableNames(_i2.ListBuilder<String>? tableNames) =>
      _$this._tableNames = tableNames;

  ListTablesOutputBuilder() {
    ListTablesOutput._init(this);
  }

  ListTablesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastEvaluatedTableName = $v.lastEvaluatedTableName;
      _tableNames = $v.tableNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTablesOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListTablesOutput;
  }

  @override
  void update(void Function(ListTablesOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTablesOutput build() => _build();

  _$ListTablesOutput _build() {
    _$ListTablesOutput _$result;
    try {
      _$result = _$v ??
          new _$ListTablesOutput._(
              lastEvaluatedTableName: lastEvaluatedTableName,
              tableNames: _tableNames?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tableNames';
        _tableNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListTablesOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
