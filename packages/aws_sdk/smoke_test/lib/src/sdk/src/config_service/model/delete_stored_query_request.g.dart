// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_stored_query_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteStoredQueryRequest extends DeleteStoredQueryRequest {
  @override
  final String queryName;

  factory _$DeleteStoredQueryRequest(
          [void Function(DeleteStoredQueryRequestBuilder)? updates]) =>
      (new DeleteStoredQueryRequestBuilder()..update(updates))._build();

  _$DeleteStoredQueryRequest._({required this.queryName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        queryName, r'DeleteStoredQueryRequest', 'queryName');
  }

  @override
  DeleteStoredQueryRequest rebuild(
          void Function(DeleteStoredQueryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteStoredQueryRequestBuilder toBuilder() =>
      new DeleteStoredQueryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteStoredQueryRequest && queryName == other.queryName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, queryName.hashCode));
  }
}

class DeleteStoredQueryRequestBuilder
    implements
        Builder<DeleteStoredQueryRequest, DeleteStoredQueryRequestBuilder> {
  _$DeleteStoredQueryRequest? _$v;

  String? _queryName;
  String? get queryName => _$this._queryName;
  set queryName(String? queryName) => _$this._queryName = queryName;

  DeleteStoredQueryRequestBuilder() {
    DeleteStoredQueryRequest._init(this);
  }

  DeleteStoredQueryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queryName = $v.queryName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteStoredQueryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteStoredQueryRequest;
  }

  @override
  void update(void Function(DeleteStoredQueryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteStoredQueryRequest build() => _build();

  _$DeleteStoredQueryRequest _build() {
    final _$result = _$v ??
        new _$DeleteStoredQueryRequest._(
            queryName: BuiltValueNullFieldError.checkNotNull(
                queryName, r'DeleteStoredQueryRequest', 'queryName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
