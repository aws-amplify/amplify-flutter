// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_tables_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTablesInput extends ListTablesInput {
  @override
  final String? exclusiveStartTableName;
  @override
  final int? limit;

  factory _$ListTablesInput([void Function(ListTablesInputBuilder)? updates]) =>
      (new ListTablesInputBuilder()..update(updates))._build();

  _$ListTablesInput._({this.exclusiveStartTableName, this.limit}) : super._();

  @override
  ListTablesInput rebuild(void Function(ListTablesInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTablesInputBuilder toBuilder() =>
      new ListTablesInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTablesInput &&
        exclusiveStartTableName == other.exclusiveStartTableName &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exclusiveStartTableName.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListTablesInputBuilder
    implements Builder<ListTablesInput, ListTablesInputBuilder> {
  _$ListTablesInput? _$v;

  String? _exclusiveStartTableName;
  String? get exclusiveStartTableName => _$this._exclusiveStartTableName;
  set exclusiveStartTableName(String? exclusiveStartTableName) =>
      _$this._exclusiveStartTableName = exclusiveStartTableName;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  ListTablesInputBuilder() {
    ListTablesInput._init(this);
  }

  ListTablesInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exclusiveStartTableName = $v.exclusiveStartTableName;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTablesInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListTablesInput;
  }

  @override
  void update(void Function(ListTablesInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTablesInput build() => _build();

  _$ListTablesInput _build() {
    final _$result = _$v ??
        new _$ListTablesInput._(
            exclusiveStartTableName: exclusiveStartTableName, limit: limit);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
