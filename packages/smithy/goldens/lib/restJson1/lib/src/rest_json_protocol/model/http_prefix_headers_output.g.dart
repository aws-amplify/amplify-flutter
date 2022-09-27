// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.http_prefix_headers_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPrefixHeadersOutput extends HttpPrefixHeadersOutput {
  @override
  final String? foo;
  @override
  final _i3.BuiltMap<String, String>? fooMap;

  factory _$HttpPrefixHeadersOutput(
          [void Function(HttpPrefixHeadersOutputBuilder)? updates]) =>
      (new HttpPrefixHeadersOutputBuilder()..update(updates))._build();

  _$HttpPrefixHeadersOutput._({this.foo, this.fooMap}) : super._();

  @override
  HttpPrefixHeadersOutput rebuild(
          void Function(HttpPrefixHeadersOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPrefixHeadersOutputBuilder toBuilder() =>
      new HttpPrefixHeadersOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPrefixHeadersOutput &&
        foo == other.foo &&
        fooMap == other.fooMap;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, foo.hashCode), fooMap.hashCode));
  }
}

class HttpPrefixHeadersOutputBuilder
    implements
        Builder<HttpPrefixHeadersOutput, HttpPrefixHeadersOutputBuilder> {
  _$HttpPrefixHeadersOutput? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  _i3.MapBuilder<String, String>? _fooMap;
  _i3.MapBuilder<String, String> get fooMap =>
      _$this._fooMap ??= new _i3.MapBuilder<String, String>();
  set fooMap(_i3.MapBuilder<String, String>? fooMap) => _$this._fooMap = fooMap;

  HttpPrefixHeadersOutputBuilder() {
    HttpPrefixHeadersOutput._init(this);
  }

  HttpPrefixHeadersOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _fooMap = $v.fooMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpPrefixHeadersOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPrefixHeadersOutput;
  }

  @override
  void update(void Function(HttpPrefixHeadersOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPrefixHeadersOutput build() => _build();

  _$HttpPrefixHeadersOutput _build() {
    _$HttpPrefixHeadersOutput _$result;
    try {
      _$result = _$v ??
          new _$HttpPrefixHeadersOutput._(foo: foo, fooMap: _fooMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fooMap';
        _fooMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpPrefixHeadersOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HttpPrefixHeadersOutputPayload extends HttpPrefixHeadersOutputPayload {
  factory _$HttpPrefixHeadersOutputPayload(
          [void Function(HttpPrefixHeadersOutputPayloadBuilder)? updates]) =>
      (new HttpPrefixHeadersOutputPayloadBuilder()..update(updates))._build();

  _$HttpPrefixHeadersOutputPayload._() : super._();

  @override
  HttpPrefixHeadersOutputPayload rebuild(
          void Function(HttpPrefixHeadersOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPrefixHeadersOutputPayloadBuilder toBuilder() =>
      new HttpPrefixHeadersOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPrefixHeadersOutputPayload;
  }

  @override
  int get hashCode {
    return 58070888;
  }
}

class HttpPrefixHeadersOutputPayloadBuilder
    implements
        Builder<HttpPrefixHeadersOutputPayload,
            HttpPrefixHeadersOutputPayloadBuilder> {
  _$HttpPrefixHeadersOutputPayload? _$v;

  HttpPrefixHeadersOutputPayloadBuilder() {
    HttpPrefixHeadersOutputPayload._init(this);
  }

  @override
  void replace(HttpPrefixHeadersOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPrefixHeadersOutputPayload;
  }

  @override
  void update(void Function(HttpPrefixHeadersOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPrefixHeadersOutputPayload build() => _build();

  _$HttpPrefixHeadersOutputPayload _build() {
    final _$result = _$v ?? new _$HttpPrefixHeadersOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
