// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_global_tables_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListGlobalTablesInput extends ListGlobalTablesInput {
  @override
  final String? exclusiveStartGlobalTableName;
  @override
  final int? limit;
  @override
  final String? regionName;

  factory _$ListGlobalTablesInput(
          [void Function(ListGlobalTablesInputBuilder)? updates]) =>
      (new ListGlobalTablesInputBuilder()..update(updates))._build();

  _$ListGlobalTablesInput._(
      {this.exclusiveStartGlobalTableName, this.limit, this.regionName})
      : super._();

  @override
  ListGlobalTablesInput rebuild(
          void Function(ListGlobalTablesInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListGlobalTablesInputBuilder toBuilder() =>
      new ListGlobalTablesInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListGlobalTablesInput &&
        exclusiveStartGlobalTableName == other.exclusiveStartGlobalTableName &&
        limit == other.limit &&
        regionName == other.regionName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, exclusiveStartGlobalTableName.hashCode), limit.hashCode),
        regionName.hashCode));
  }
}

class ListGlobalTablesInputBuilder
    implements Builder<ListGlobalTablesInput, ListGlobalTablesInputBuilder> {
  _$ListGlobalTablesInput? _$v;

  String? _exclusiveStartGlobalTableName;
  String? get exclusiveStartGlobalTableName =>
      _$this._exclusiveStartGlobalTableName;
  set exclusiveStartGlobalTableName(String? exclusiveStartGlobalTableName) =>
      _$this._exclusiveStartGlobalTableName = exclusiveStartGlobalTableName;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  ListGlobalTablesInputBuilder() {
    ListGlobalTablesInput._init(this);
  }

  ListGlobalTablesInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exclusiveStartGlobalTableName = $v.exclusiveStartGlobalTableName;
      _limit = $v.limit;
      _regionName = $v.regionName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListGlobalTablesInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListGlobalTablesInput;
  }

  @override
  void update(void Function(ListGlobalTablesInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListGlobalTablesInput build() => _build();

  _$ListGlobalTablesInput _build() {
    final _$result = _$v ??
        new _$ListGlobalTablesInput._(
            exclusiveStartGlobalTableName: exclusiveStartGlobalTableName,
            limit: limit,
            regionName: regionName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
