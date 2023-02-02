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
    var _$hash = 0;
    _$hash = $jc(_$hash, queryName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
