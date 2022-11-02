// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_stored_query_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetStoredQueryResponse extends GetStoredQueryResponse {
  @override
  final _i2.StoredQuery? storedQuery;

  factory _$GetStoredQueryResponse(
          [void Function(GetStoredQueryResponseBuilder)? updates]) =>
      (new GetStoredQueryResponseBuilder()..update(updates))._build();

  _$GetStoredQueryResponse._({this.storedQuery}) : super._();

  @override
  GetStoredQueryResponse rebuild(
          void Function(GetStoredQueryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetStoredQueryResponseBuilder toBuilder() =>
      new GetStoredQueryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetStoredQueryResponse && storedQuery == other.storedQuery;
  }

  @override
  int get hashCode {
    return $jf($jc(0, storedQuery.hashCode));
  }
}

class GetStoredQueryResponseBuilder
    implements Builder<GetStoredQueryResponse, GetStoredQueryResponseBuilder> {
  _$GetStoredQueryResponse? _$v;

  _i2.StoredQueryBuilder? _storedQuery;
  _i2.StoredQueryBuilder get storedQuery =>
      _$this._storedQuery ??= new _i2.StoredQueryBuilder();
  set storedQuery(_i2.StoredQueryBuilder? storedQuery) =>
      _$this._storedQuery = storedQuery;

  GetStoredQueryResponseBuilder() {
    GetStoredQueryResponse._init(this);
  }

  GetStoredQueryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _storedQuery = $v.storedQuery?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetStoredQueryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetStoredQueryResponse;
  }

  @override
  void update(void Function(GetStoredQueryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetStoredQueryResponse build() => _build();

  _$GetStoredQueryResponse _build() {
    _$GetStoredQueryResponse _$result;
    try {
      _$result = _$v ??
          new _$GetStoredQueryResponse._(storedQuery: _storedQuery?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'storedQuery';
        _storedQuery?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetStoredQueryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
