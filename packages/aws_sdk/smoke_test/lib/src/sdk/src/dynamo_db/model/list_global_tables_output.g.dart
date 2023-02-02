// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_global_tables_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListGlobalTablesOutput extends ListGlobalTablesOutput {
  @override
  final _i3.BuiltList<_i2.GlobalTable>? globalTables;
  @override
  final String? lastEvaluatedGlobalTableName;

  factory _$ListGlobalTablesOutput(
          [void Function(ListGlobalTablesOutputBuilder)? updates]) =>
      (new ListGlobalTablesOutputBuilder()..update(updates))._build();

  _$ListGlobalTablesOutput._(
      {this.globalTables, this.lastEvaluatedGlobalTableName})
      : super._();

  @override
  ListGlobalTablesOutput rebuild(
          void Function(ListGlobalTablesOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListGlobalTablesOutputBuilder toBuilder() =>
      new ListGlobalTablesOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListGlobalTablesOutput &&
        globalTables == other.globalTables &&
        lastEvaluatedGlobalTableName == other.lastEvaluatedGlobalTableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, globalTables.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedGlobalTableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListGlobalTablesOutputBuilder
    implements Builder<ListGlobalTablesOutput, ListGlobalTablesOutputBuilder> {
  _$ListGlobalTablesOutput? _$v;

  _i3.ListBuilder<_i2.GlobalTable>? _globalTables;
  _i3.ListBuilder<_i2.GlobalTable> get globalTables =>
      _$this._globalTables ??= new _i3.ListBuilder<_i2.GlobalTable>();
  set globalTables(_i3.ListBuilder<_i2.GlobalTable>? globalTables) =>
      _$this._globalTables = globalTables;

  String? _lastEvaluatedGlobalTableName;
  String? get lastEvaluatedGlobalTableName =>
      _$this._lastEvaluatedGlobalTableName;
  set lastEvaluatedGlobalTableName(String? lastEvaluatedGlobalTableName) =>
      _$this._lastEvaluatedGlobalTableName = lastEvaluatedGlobalTableName;

  ListGlobalTablesOutputBuilder() {
    ListGlobalTablesOutput._init(this);
  }

  ListGlobalTablesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalTables = $v.globalTables?.toBuilder();
      _lastEvaluatedGlobalTableName = $v.lastEvaluatedGlobalTableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListGlobalTablesOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListGlobalTablesOutput;
  }

  @override
  void update(void Function(ListGlobalTablesOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListGlobalTablesOutput build() => _build();

  _$ListGlobalTablesOutput _build() {
    _$ListGlobalTablesOutput _$result;
    try {
      _$result = _$v ??
          new _$ListGlobalTablesOutput._(
              globalTables: _globalTables?.build(),
              lastEvaluatedGlobalTableName: lastEvaluatedGlobalTableName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'globalTables';
        _globalTables?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListGlobalTablesOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
