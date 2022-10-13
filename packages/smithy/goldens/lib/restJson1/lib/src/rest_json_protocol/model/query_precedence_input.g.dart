// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.query_precedence_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryPrecedenceInput extends QueryPrecedenceInput {
  @override
  final _i3.BuiltMap<String, String>? baz;
  @override
  final String? foo;

  factory _$QueryPrecedenceInput(
          [void Function(QueryPrecedenceInputBuilder)? updates]) =>
      (new QueryPrecedenceInputBuilder()..update(updates))._build();

  _$QueryPrecedenceInput._({this.baz, this.foo}) : super._();

  @override
  QueryPrecedenceInput rebuild(
          void Function(QueryPrecedenceInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryPrecedenceInputBuilder toBuilder() =>
      new QueryPrecedenceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryPrecedenceInput &&
        baz == other.baz &&
        foo == other.foo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, baz.hashCode), foo.hashCode));
  }
}

class QueryPrecedenceInputBuilder
    implements Builder<QueryPrecedenceInput, QueryPrecedenceInputBuilder> {
  _$QueryPrecedenceInput? _$v;

  _i3.MapBuilder<String, String>? _baz;
  _i3.MapBuilder<String, String> get baz =>
      _$this._baz ??= new _i3.MapBuilder<String, String>();
  set baz(_i3.MapBuilder<String, String>? baz) => _$this._baz = baz;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  QueryPrecedenceInputBuilder() {
    QueryPrecedenceInput._init(this);
  }

  QueryPrecedenceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baz = $v.baz?.toBuilder();
      _foo = $v.foo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryPrecedenceInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryPrecedenceInput;
  }

  @override
  void update(void Function(QueryPrecedenceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryPrecedenceInput build() => _build();

  _$QueryPrecedenceInput _build() {
    _$QueryPrecedenceInput _$result;
    try {
      _$result =
          _$v ?? new _$QueryPrecedenceInput._(baz: _baz?.build(), foo: foo);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'baz';
        _baz?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QueryPrecedenceInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$QueryPrecedenceInputPayload extends QueryPrecedenceInputPayload {
  factory _$QueryPrecedenceInputPayload(
          [void Function(QueryPrecedenceInputPayloadBuilder)? updates]) =>
      (new QueryPrecedenceInputPayloadBuilder()..update(updates))._build();

  _$QueryPrecedenceInputPayload._() : super._();

  @override
  QueryPrecedenceInputPayload rebuild(
          void Function(QueryPrecedenceInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryPrecedenceInputPayloadBuilder toBuilder() =>
      new QueryPrecedenceInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryPrecedenceInputPayload;
  }

  @override
  int get hashCode {
    return 332690933;
  }
}

class QueryPrecedenceInputPayloadBuilder
    implements
        Builder<QueryPrecedenceInputPayload,
            QueryPrecedenceInputPayloadBuilder> {
  _$QueryPrecedenceInputPayload? _$v;

  QueryPrecedenceInputPayloadBuilder() {
    QueryPrecedenceInputPayload._init(this);
  }

  @override
  void replace(QueryPrecedenceInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryPrecedenceInputPayload;
  }

  @override
  void update(void Function(QueryPrecedenceInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryPrecedenceInputPayload build() => _build();

  _$QueryPrecedenceInputPayload _build() {
    final _$result = _$v ?? new _$QueryPrecedenceInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
