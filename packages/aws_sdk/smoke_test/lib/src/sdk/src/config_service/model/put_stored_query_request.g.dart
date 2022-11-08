// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_stored_query_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutStoredQueryRequest extends PutStoredQueryRequest {
  @override
  final _i3.StoredQuery storedQuery;
  @override
  final _i5.BuiltList<_i4.Tag>? tags;

  factory _$PutStoredQueryRequest(
          [void Function(PutStoredQueryRequestBuilder)? updates]) =>
      (new PutStoredQueryRequestBuilder()..update(updates))._build();

  _$PutStoredQueryRequest._({required this.storedQuery, this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        storedQuery, r'PutStoredQueryRequest', 'storedQuery');
  }

  @override
  PutStoredQueryRequest rebuild(
          void Function(PutStoredQueryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutStoredQueryRequestBuilder toBuilder() =>
      new PutStoredQueryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutStoredQueryRequest &&
        storedQuery == other.storedQuery &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, storedQuery.hashCode), tags.hashCode));
  }
}

class PutStoredQueryRequestBuilder
    implements Builder<PutStoredQueryRequest, PutStoredQueryRequestBuilder> {
  _$PutStoredQueryRequest? _$v;

  _i3.StoredQueryBuilder? _storedQuery;
  _i3.StoredQueryBuilder get storedQuery =>
      _$this._storedQuery ??= new _i3.StoredQueryBuilder();
  set storedQuery(_i3.StoredQueryBuilder? storedQuery) =>
      _$this._storedQuery = storedQuery;

  _i5.ListBuilder<_i4.Tag>? _tags;
  _i5.ListBuilder<_i4.Tag> get tags =>
      _$this._tags ??= new _i5.ListBuilder<_i4.Tag>();
  set tags(_i5.ListBuilder<_i4.Tag>? tags) => _$this._tags = tags;

  PutStoredQueryRequestBuilder() {
    PutStoredQueryRequest._init(this);
  }

  PutStoredQueryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _storedQuery = $v.storedQuery.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutStoredQueryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutStoredQueryRequest;
  }

  @override
  void update(void Function(PutStoredQueryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutStoredQueryRequest build() => _build();

  _$PutStoredQueryRequest _build() {
    _$PutStoredQueryRequest _$result;
    try {
      _$result = _$v ??
          new _$PutStoredQueryRequest._(
              storedQuery: storedQuery.build(), tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'storedQuery';
        storedQuery.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutStoredQueryRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
