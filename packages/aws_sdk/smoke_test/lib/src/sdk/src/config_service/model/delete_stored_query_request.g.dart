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
    var _$hash = 0;
    _$hash = $jc(_$hash, queryName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
