// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.query_params_as_string_list_map_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryParamsAsStringListMapInput
    extends QueryParamsAsStringListMapInput {
  @override
  final _i3.BuiltListMultimap<String, String>? foo;
  @override
  final String? qux;

  factory _$QueryParamsAsStringListMapInput(
          [void Function(QueryParamsAsStringListMapInputBuilder)? updates]) =>
      (new QueryParamsAsStringListMapInputBuilder()..update(updates))._build();

  _$QueryParamsAsStringListMapInput._({this.foo, this.qux}) : super._();

  @override
  QueryParamsAsStringListMapInput rebuild(
          void Function(QueryParamsAsStringListMapInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryParamsAsStringListMapInputBuilder toBuilder() =>
      new QueryParamsAsStringListMapInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryParamsAsStringListMapInput &&
        foo == other.foo &&
        qux == other.qux;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, foo.hashCode), qux.hashCode));
  }
}

class QueryParamsAsStringListMapInputBuilder
    implements
        Builder<QueryParamsAsStringListMapInput,
            QueryParamsAsStringListMapInputBuilder> {
  _$QueryParamsAsStringListMapInput? _$v;

  _i3.ListMultimapBuilder<String, String>? _foo;
  _i3.ListMultimapBuilder<String, String> get foo =>
      _$this._foo ??= new _i3.ListMultimapBuilder<String, String>();
  set foo(_i3.ListMultimapBuilder<String, String>? foo) => _$this._foo = foo;

  String? _qux;
  String? get qux => _$this._qux;
  set qux(String? qux) => _$this._qux = qux;

  QueryParamsAsStringListMapInputBuilder() {
    QueryParamsAsStringListMapInput._init(this);
  }

  QueryParamsAsStringListMapInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo?.toBuilder();
      _qux = $v.qux;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryParamsAsStringListMapInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryParamsAsStringListMapInput;
  }

  @override
  void update(void Function(QueryParamsAsStringListMapInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryParamsAsStringListMapInput build() => _build();

  _$QueryParamsAsStringListMapInput _build() {
    _$QueryParamsAsStringListMapInput _$result;
    try {
      _$result = _$v ??
          new _$QueryParamsAsStringListMapInput._(foo: _foo?.build(), qux: qux);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'foo';
        _foo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QueryParamsAsStringListMapInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$QueryParamsAsStringListMapInputPayload
    extends QueryParamsAsStringListMapInputPayload {
  factory _$QueryParamsAsStringListMapInputPayload(
          [void Function(QueryParamsAsStringListMapInputPayloadBuilder)?
              updates]) =>
      (new QueryParamsAsStringListMapInputPayloadBuilder()..update(updates))
          ._build();

  _$QueryParamsAsStringListMapInputPayload._() : super._();

  @override
  QueryParamsAsStringListMapInputPayload rebuild(
          void Function(QueryParamsAsStringListMapInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryParamsAsStringListMapInputPayloadBuilder toBuilder() =>
      new QueryParamsAsStringListMapInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryParamsAsStringListMapInputPayload;
  }

  @override
  int get hashCode {
    return 723798479;
  }
}

class QueryParamsAsStringListMapInputPayloadBuilder
    implements
        Builder<QueryParamsAsStringListMapInputPayload,
            QueryParamsAsStringListMapInputPayloadBuilder> {
  _$QueryParamsAsStringListMapInputPayload? _$v;

  QueryParamsAsStringListMapInputPayloadBuilder() {
    QueryParamsAsStringListMapInputPayload._init(this);
  }

  @override
  void replace(QueryParamsAsStringListMapInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryParamsAsStringListMapInputPayload;
  }

  @override
  void update(
      void Function(QueryParamsAsStringListMapInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryParamsAsStringListMapInputPayload build() => _build();

  _$QueryParamsAsStringListMapInputPayload _build() {
    final _$result = _$v ?? new _$QueryParamsAsStringListMapInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
