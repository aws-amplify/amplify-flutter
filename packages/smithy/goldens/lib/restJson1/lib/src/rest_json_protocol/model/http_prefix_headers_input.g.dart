// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.http_prefix_headers_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPrefixHeadersInput extends HttpPrefixHeadersInput {
  @override
  final String? foo;
  @override
  final _i3.BuiltMap<String, String>? fooMap;

  factory _$HttpPrefixHeadersInput(
          [void Function(HttpPrefixHeadersInputBuilder)? updates]) =>
      (new HttpPrefixHeadersInputBuilder()..update(updates))._build();

  _$HttpPrefixHeadersInput._({this.foo, this.fooMap}) : super._();

  @override
  HttpPrefixHeadersInput rebuild(
          void Function(HttpPrefixHeadersInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPrefixHeadersInputBuilder toBuilder() =>
      new HttpPrefixHeadersInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPrefixHeadersInput &&
        foo == other.foo &&
        fooMap == other.fooMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jc(_$hash, fooMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HttpPrefixHeadersInputBuilder
    implements Builder<HttpPrefixHeadersInput, HttpPrefixHeadersInputBuilder> {
  _$HttpPrefixHeadersInput? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  _i3.MapBuilder<String, String>? _fooMap;
  _i3.MapBuilder<String, String> get fooMap =>
      _$this._fooMap ??= new _i3.MapBuilder<String, String>();
  set fooMap(_i3.MapBuilder<String, String>? fooMap) => _$this._fooMap = fooMap;

  HttpPrefixHeadersInputBuilder() {
    HttpPrefixHeadersInput._init(this);
  }

  HttpPrefixHeadersInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _fooMap = $v.fooMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpPrefixHeadersInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPrefixHeadersInput;
  }

  @override
  void update(void Function(HttpPrefixHeadersInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPrefixHeadersInput build() => _build();

  _$HttpPrefixHeadersInput _build() {
    _$HttpPrefixHeadersInput _$result;
    try {
      _$result = _$v ??
          new _$HttpPrefixHeadersInput._(foo: foo, fooMap: _fooMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fooMap';
        _fooMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpPrefixHeadersInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HttpPrefixHeadersInputPayload extends HttpPrefixHeadersInputPayload {
  factory _$HttpPrefixHeadersInputPayload(
          [void Function(HttpPrefixHeadersInputPayloadBuilder)? updates]) =>
      (new HttpPrefixHeadersInputPayloadBuilder()..update(updates))._build();

  _$HttpPrefixHeadersInputPayload._() : super._();

  @override
  HttpPrefixHeadersInputPayload rebuild(
          void Function(HttpPrefixHeadersInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPrefixHeadersInputPayloadBuilder toBuilder() =>
      new HttpPrefixHeadersInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPrefixHeadersInputPayload;
  }

  @override
  int get hashCode {
    return 822369829;
  }
}

class HttpPrefixHeadersInputPayloadBuilder
    implements
        Builder<HttpPrefixHeadersInputPayload,
            HttpPrefixHeadersInputPayloadBuilder> {
  _$HttpPrefixHeadersInputPayload? _$v;

  HttpPrefixHeadersInputPayloadBuilder() {
    HttpPrefixHeadersInputPayload._init(this);
  }

  @override
  void replace(HttpPrefixHeadersInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPrefixHeadersInputPayload;
  }

  @override
  void update(void Function(HttpPrefixHeadersInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPrefixHeadersInputPayload build() => _build();

  _$HttpPrefixHeadersInputPayload _build() {
    final _$result = _$v ?? new _$HttpPrefixHeadersInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
