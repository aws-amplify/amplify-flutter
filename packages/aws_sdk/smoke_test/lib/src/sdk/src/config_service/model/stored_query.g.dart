// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stored_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StoredQuery extends StoredQuery {
  @override
  final String? queryId;
  @override
  final String? queryArn;
  @override
  final String queryName;
  @override
  final String? description;
  @override
  final String? expression;

  factory _$StoredQuery([void Function(StoredQueryBuilder)? updates]) =>
      (new StoredQueryBuilder()..update(updates))._build();

  _$StoredQuery._(
      {this.queryId,
      this.queryArn,
      required this.queryName,
      this.description,
      this.expression})
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
        queryId == other.queryId &&
        queryArn == other.queryArn &&
        queryName == other.queryName &&
        description == other.description &&
        expression == other.expression;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, queryId.hashCode);
    _$hash = $jc(_$hash, queryArn.hashCode);
    _$hash = $jc(_$hash, queryName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StoredQueryBuilder implements Builder<StoredQuery, StoredQueryBuilder> {
  _$StoredQuery? _$v;

  String? _queryId;
  String? get queryId => _$this._queryId;
  set queryId(String? queryId) => _$this._queryId = queryId;

  String? _queryArn;
  String? get queryArn => _$this._queryArn;
  set queryArn(String? queryArn) => _$this._queryArn = queryArn;

  String? _queryName;
  String? get queryName => _$this._queryName;
  set queryName(String? queryName) => _$this._queryName = queryName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(String? expression) => _$this._expression = expression;

  StoredQueryBuilder() {
    StoredQuery._init(this);
  }

  StoredQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queryId = $v.queryId;
      _queryArn = $v.queryArn;
      _queryName = $v.queryName;
      _description = $v.description;
      _expression = $v.expression;
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
            queryId: queryId,
            queryArn: queryArn,
            queryName: BuiltValueNullFieldError.checkNotNull(
                queryName, r'StoredQuery', 'queryName'),
            description: description,
            expression: expression);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
