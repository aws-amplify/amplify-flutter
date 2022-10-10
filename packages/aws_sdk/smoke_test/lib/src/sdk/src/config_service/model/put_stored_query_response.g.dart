// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_stored_query_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutStoredQueryResponse extends PutStoredQueryResponse {
  @override
  final String? queryArn;

  factory _$PutStoredQueryResponse(
          [void Function(PutStoredQueryResponseBuilder)? updates]) =>
      (new PutStoredQueryResponseBuilder()..update(updates))._build();

  _$PutStoredQueryResponse._({this.queryArn}) : super._();

  @override
  PutStoredQueryResponse rebuild(
          void Function(PutStoredQueryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutStoredQueryResponseBuilder toBuilder() =>
      new PutStoredQueryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutStoredQueryResponse && queryArn == other.queryArn;
  }

  @override
  int get hashCode {
    return $jf($jc(0, queryArn.hashCode));
  }
}

class PutStoredQueryResponseBuilder
    implements Builder<PutStoredQueryResponse, PutStoredQueryResponseBuilder> {
  _$PutStoredQueryResponse? _$v;

  String? _queryArn;
  String? get queryArn => _$this._queryArn;
  set queryArn(String? queryArn) => _$this._queryArn = queryArn;

  PutStoredQueryResponseBuilder() {
    PutStoredQueryResponse._init(this);
  }

  PutStoredQueryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queryArn = $v.queryArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutStoredQueryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutStoredQueryResponse;
  }

  @override
  void update(void Function(PutStoredQueryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutStoredQueryResponse build() => _build();

  _$PutStoredQueryResponse _build() {
    final _$result = _$v ?? new _$PutStoredQueryResponse._(queryArn: queryArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
