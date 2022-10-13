// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.query_idempotency_token_auto_fill_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryIdempotencyTokenAutoFillInput
    extends QueryIdempotencyTokenAutoFillInput {
  @override
  final String? token;

  factory _$QueryIdempotencyTokenAutoFillInput(
          [void Function(QueryIdempotencyTokenAutoFillInputBuilder)?
              updates]) =>
      (new QueryIdempotencyTokenAutoFillInputBuilder()..update(updates))
          ._build();

  _$QueryIdempotencyTokenAutoFillInput._({this.token}) : super._();

  @override
  QueryIdempotencyTokenAutoFillInput rebuild(
          void Function(QueryIdempotencyTokenAutoFillInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryIdempotencyTokenAutoFillInputBuilder toBuilder() =>
      new QueryIdempotencyTokenAutoFillInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryIdempotencyTokenAutoFillInput && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }
}

class QueryIdempotencyTokenAutoFillInputBuilder
    implements
        Builder<QueryIdempotencyTokenAutoFillInput,
            QueryIdempotencyTokenAutoFillInputBuilder> {
  _$QueryIdempotencyTokenAutoFillInput? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  QueryIdempotencyTokenAutoFillInputBuilder() {
    QueryIdempotencyTokenAutoFillInput._init(this);
  }

  QueryIdempotencyTokenAutoFillInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryIdempotencyTokenAutoFillInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryIdempotencyTokenAutoFillInput;
  }

  @override
  void update(
      void Function(QueryIdempotencyTokenAutoFillInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryIdempotencyTokenAutoFillInput build() => _build();

  _$QueryIdempotencyTokenAutoFillInput _build() {
    final _$result =
        _$v ?? new _$QueryIdempotencyTokenAutoFillInput._(token: token);
    replace(_$result);
    return _$result;
  }
}

class _$QueryIdempotencyTokenAutoFillInputPayload
    extends QueryIdempotencyTokenAutoFillInputPayload {
  factory _$QueryIdempotencyTokenAutoFillInputPayload(
          [void Function(QueryIdempotencyTokenAutoFillInputPayloadBuilder)?
              updates]) =>
      (new QueryIdempotencyTokenAutoFillInputPayloadBuilder()..update(updates))
          ._build();

  _$QueryIdempotencyTokenAutoFillInputPayload._() : super._();

  @override
  QueryIdempotencyTokenAutoFillInputPayload rebuild(
          void Function(QueryIdempotencyTokenAutoFillInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryIdempotencyTokenAutoFillInputPayloadBuilder toBuilder() =>
      new QueryIdempotencyTokenAutoFillInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryIdempotencyTokenAutoFillInputPayload;
  }

  @override
  int get hashCode {
    return 658734140;
  }
}

class QueryIdempotencyTokenAutoFillInputPayloadBuilder
    implements
        Builder<QueryIdempotencyTokenAutoFillInputPayload,
            QueryIdempotencyTokenAutoFillInputPayloadBuilder> {
  _$QueryIdempotencyTokenAutoFillInputPayload? _$v;

  QueryIdempotencyTokenAutoFillInputPayloadBuilder() {
    QueryIdempotencyTokenAutoFillInputPayload._init(this);
  }

  @override
  void replace(QueryIdempotencyTokenAutoFillInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryIdempotencyTokenAutoFillInputPayload;
  }

  @override
  void update(
      void Function(QueryIdempotencyTokenAutoFillInputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryIdempotencyTokenAutoFillInputPayload build() => _build();

  _$QueryIdempotencyTokenAutoFillInputPayload _build() {
    final _$result = _$v ?? new _$QueryIdempotencyTokenAutoFillInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
