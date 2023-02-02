// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.list_stored_queries_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStoredQueriesResponse extends ListStoredQueriesResponse {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<_i2.StoredQueryMetadata>? storedQueryMetadata;

  factory _$ListStoredQueriesResponse(
          [void Function(ListStoredQueriesResponseBuilder)? updates]) =>
      (new ListStoredQueriesResponseBuilder()..update(updates))._build();

  _$ListStoredQueriesResponse._({this.nextToken, this.storedQueryMetadata})
      : super._();

  @override
  ListStoredQueriesResponse rebuild(
          void Function(ListStoredQueriesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStoredQueriesResponseBuilder toBuilder() =>
      new ListStoredQueriesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStoredQueriesResponse &&
        nextToken == other.nextToken &&
        storedQueryMetadata == other.storedQueryMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, storedQueryMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListStoredQueriesResponseBuilder
    implements
        Builder<ListStoredQueriesResponse, ListStoredQueriesResponseBuilder> {
  _$ListStoredQueriesResponse? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<_i2.StoredQueryMetadata>? _storedQueryMetadata;
  _i3.ListBuilder<_i2.StoredQueryMetadata> get storedQueryMetadata =>
      _$this._storedQueryMetadata ??=
          new _i3.ListBuilder<_i2.StoredQueryMetadata>();
  set storedQueryMetadata(
          _i3.ListBuilder<_i2.StoredQueryMetadata>? storedQueryMetadata) =>
      _$this._storedQueryMetadata = storedQueryMetadata;

  ListStoredQueriesResponseBuilder() {
    ListStoredQueriesResponse._init(this);
  }

  ListStoredQueriesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _storedQueryMetadata = $v.storedQueryMetadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStoredQueriesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStoredQueriesResponse;
  }

  @override
  void update(void Function(ListStoredQueriesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStoredQueriesResponse build() => _build();

  _$ListStoredQueriesResponse _build() {
    _$ListStoredQueriesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListStoredQueriesResponse._(
              nextToken: nextToken,
              storedQueryMetadata: _storedQueryMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'storedQueryMetadata';
        _storedQueryMetadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListStoredQueriesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
