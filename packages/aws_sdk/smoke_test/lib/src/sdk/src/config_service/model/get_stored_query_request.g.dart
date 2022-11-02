// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_stored_query_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetStoredQueryRequest extends GetStoredQueryRequest {
  @override
  final String queryName;

  factory _$GetStoredQueryRequest(
          [void Function(GetStoredQueryRequestBuilder)? updates]) =>
      (new GetStoredQueryRequestBuilder()..update(updates))._build();

  _$GetStoredQueryRequest._({required this.queryName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        queryName, r'GetStoredQueryRequest', 'queryName');
  }

  @override
  GetStoredQueryRequest rebuild(
          void Function(GetStoredQueryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetStoredQueryRequestBuilder toBuilder() =>
      new GetStoredQueryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetStoredQueryRequest && queryName == other.queryName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, queryName.hashCode));
  }
}

class GetStoredQueryRequestBuilder
    implements Builder<GetStoredQueryRequest, GetStoredQueryRequestBuilder> {
  _$GetStoredQueryRequest? _$v;

  String? _queryName;
  String? get queryName => _$this._queryName;
  set queryName(String? queryName) => _$this._queryName = queryName;

  GetStoredQueryRequestBuilder() {
    GetStoredQueryRequest._init(this);
  }

  GetStoredQueryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queryName = $v.queryName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetStoredQueryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetStoredQueryRequest;
  }

  @override
  void update(void Function(GetStoredQueryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetStoredQueryRequest build() => _build();

  _$GetStoredQueryRequest _build() {
    final _$result = _$v ??
        new _$GetStoredQueryRequest._(
            queryName: BuiltValueNullFieldError.checkNotNull(
                queryName, r'GetStoredQueryRequest', 'queryName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
