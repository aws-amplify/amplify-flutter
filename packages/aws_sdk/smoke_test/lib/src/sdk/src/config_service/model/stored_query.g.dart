// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.stored_query;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StoredQuery extends StoredQuery {
  @override
  final String? description;
  @override
  final String? expression;
  @override
  final String? queryArn;
  @override
  final String? queryId;
  @override
  final String queryName;

  factory _$StoredQuery([void Function(StoredQueryBuilder)? updates]) =>
      (new StoredQueryBuilder()..update(updates))._build();

  _$StoredQuery._(
      {this.description,
      this.expression,
      this.queryArn,
      this.queryId,
      required this.queryName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        queryName, r'StoredQuery', 'queryName');
  }

  @override
  StoredQuery rebuild(void Function(StoredQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoredQueryBuilder toBuilder() => new StoredQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoredQuery &&
        description == other.description &&
        expression == other.expression &&
        queryArn == other.queryArn &&
        queryId == other.queryId &&
        queryName == other.queryName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, queryArn.hashCode);
    _$hash = $jc(_$hash, queryId.hashCode);
    _$hash = $jc(_$hash, queryName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StoredQueryBuilder implements Builder<StoredQuery, StoredQueryBuilder> {
  _$StoredQuery? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(String? expression) => _$this._expression = expression;

  String? _queryArn;
  String? get queryArn => _$this._queryArn;
  set queryArn(String? queryArn) => _$this._queryArn = queryArn;

  String? _queryId;
  String? get queryId => _$this._queryId;
  set queryId(String? queryId) => _$this._queryId = queryId;

  String? _queryName;
  String? get queryName => _$this._queryName;
  set queryName(String? queryName) => _$this._queryName = queryName;

  StoredQueryBuilder() {
    StoredQuery._init(this);
  }

  StoredQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _expression = $v.expression;
      _queryArn = $v.queryArn;
      _queryId = $v.queryId;
      _queryName = $v.queryName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoredQuery other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoredQuery;
  }

  @override
  void update(void Function(StoredQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StoredQuery build() => _build();

  _$StoredQuery _build() {
    final _$result = _$v ??
        new _$StoredQuery._(
            description: description,
            expression: expression,
            queryArn: queryArn,
            queryId: queryId,
            queryName: BuiltValueNullFieldError.checkNotNull(
                queryName, r'StoredQuery', 'queryName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
