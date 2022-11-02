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
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, description.hashCode), expression.hashCode),
                queryArn.hashCode),
            queryId.hashCode),
        queryName.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
