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
    var _$hash = 0;
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jc(_$hash, qux.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
