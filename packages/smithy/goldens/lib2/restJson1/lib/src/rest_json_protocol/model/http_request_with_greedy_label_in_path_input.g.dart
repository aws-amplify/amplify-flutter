// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.http_request_with_greedy_label_in_path_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpRequestWithGreedyLabelInPathInput
    extends HttpRequestWithGreedyLabelInPathInput {
  @override
  final String baz;
  @override
  final String foo;

  factory _$HttpRequestWithGreedyLabelInPathInput(
          [void Function(HttpRequestWithGreedyLabelInPathInputBuilder)?
              updates]) =>
      (new HttpRequestWithGreedyLabelInPathInputBuilder()..update(updates))
          ._build();

  _$HttpRequestWithGreedyLabelInPathInput._(
      {required this.baz, required this.foo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        baz, r'HttpRequestWithGreedyLabelInPathInput', 'baz');
    BuiltValueNullFieldError.checkNotNull(
        foo, r'HttpRequestWithGreedyLabelInPathInput', 'foo');
  }

  @override
  HttpRequestWithGreedyLabelInPathInput rebuild(
          void Function(HttpRequestWithGreedyLabelInPathInputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestWithGreedyLabelInPathInputBuilder toBuilder() =>
      new HttpRequestWithGreedyLabelInPathInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequestWithGreedyLabelInPathInput &&
        baz == other.baz &&
        foo == other.foo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, baz.hashCode), foo.hashCode));
  }
}

class HttpRequestWithGreedyLabelInPathInputBuilder
    implements
        Builder<HttpRequestWithGreedyLabelInPathInput,
            HttpRequestWithGreedyLabelInPathInputBuilder> {
  _$HttpRequestWithGreedyLabelInPathInput? _$v;

  String? _baz;
  String? get baz => _$this._baz;
  set baz(String? baz) => _$this._baz = baz;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  HttpRequestWithGreedyLabelInPathInputBuilder() {
    HttpRequestWithGreedyLabelInPathInput._init(this);
  }

  HttpRequestWithGreedyLabelInPathInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baz = $v.baz;
      _foo = $v.foo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpRequestWithGreedyLabelInPathInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequestWithGreedyLabelInPathInput;
  }

  @override
  void update(
      void Function(HttpRequestWithGreedyLabelInPathInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpRequestWithGreedyLabelInPathInput build() => _build();

  _$HttpRequestWithGreedyLabelInPathInput _build() {
    final _$result = _$v ??
        new _$HttpRequestWithGreedyLabelInPathInput._(
            baz: BuiltValueNullFieldError.checkNotNull(
                baz, r'HttpRequestWithGreedyLabelInPathInput', 'baz'),
            foo: BuiltValueNullFieldError.checkNotNull(
                foo, r'HttpRequestWithGreedyLabelInPathInput', 'foo'));
    replace(_$result);
    return _$result;
  }
}

class _$HttpRequestWithGreedyLabelInPathInputPayload
    extends HttpRequestWithGreedyLabelInPathInputPayload {
  factory _$HttpRequestWithGreedyLabelInPathInputPayload(
          [void Function(HttpRequestWithGreedyLabelInPathInputPayloadBuilder)?
              updates]) =>
      (new HttpRequestWithGreedyLabelInPathInputPayloadBuilder()
            ..update(updates))
          ._build();

  _$HttpRequestWithGreedyLabelInPathInputPayload._() : super._();

  @override
  HttpRequestWithGreedyLabelInPathInputPayload rebuild(
          void Function(HttpRequestWithGreedyLabelInPathInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpRequestWithGreedyLabelInPathInputPayloadBuilder toBuilder() =>
      new HttpRequestWithGreedyLabelInPathInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpRequestWithGreedyLabelInPathInputPayload;
  }

  @override
  int get hashCode {
    return 447279967;
  }
}

class HttpRequestWithGreedyLabelInPathInputPayloadBuilder
    implements
        Builder<HttpRequestWithGreedyLabelInPathInputPayload,
            HttpRequestWithGreedyLabelInPathInputPayloadBuilder> {
  _$HttpRequestWithGreedyLabelInPathInputPayload? _$v;

  HttpRequestWithGreedyLabelInPathInputPayloadBuilder() {
    HttpRequestWithGreedyLabelInPathInputPayload._init(this);
  }

  @override
  void replace(HttpRequestWithGreedyLabelInPathInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpRequestWithGreedyLabelInPathInputPayload;
  }

  @override
  void update(
      void Function(HttpRequestWithGreedyLabelInPathInputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpRequestWithGreedyLabelInPathInputPayload build() => _build();

  _$HttpRequestWithGreedyLabelInPathInputPayload _build() {
    final _$result =
        _$v ?? new _$HttpRequestWithGreedyLabelInPathInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
