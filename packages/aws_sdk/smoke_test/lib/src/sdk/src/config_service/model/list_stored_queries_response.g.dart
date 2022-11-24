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
    return $jf($jc($jc(0, nextToken.hashCode), storedQueryMetadata.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
