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
    var _$hash = 0;
    _$hash = $jc(_$hash, storedQuery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
