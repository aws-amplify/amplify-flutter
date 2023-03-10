// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.http_prefix_headers_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPrefixHeadersInputOutput extends HttpPrefixHeadersInputOutput {
  @override
  final String? foo;
  @override
  final _i3.BuiltMap<String, String>? fooMap;

  factory _$HttpPrefixHeadersInputOutput(
          [void Function(HttpPrefixHeadersInputOutputBuilder)? updates]) =>
      (new HttpPrefixHeadersInputOutputBuilder()..update(updates))._build();

  _$HttpPrefixHeadersInputOutput._({this.foo, this.fooMap}) : super._();

  @override
  HttpPrefixHeadersInputOutput rebuild(
          void Function(HttpPrefixHeadersInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPrefixHeadersInputOutputBuilder toBuilder() =>
      new HttpPrefixHeadersInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPrefixHeadersInputOutput &&
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

class HttpPrefixHeadersInputOutputBuilder
    implements
        Builder<HttpPrefixHeadersInputOutput,
            HttpPrefixHeadersInputOutputBuilder> {
  _$HttpPrefixHeadersInputOutput? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  _i3.MapBuilder<String, String>? _fooMap;
  _i3.MapBuilder<String, String> get fooMap =>
      _$this._fooMap ??= new _i3.MapBuilder<String, String>();
  set fooMap(_i3.MapBuilder<String, String>? fooMap) => _$this._fooMap = fooMap;

  HttpPrefixHeadersInputOutputBuilder() {
    HttpPrefixHeadersInputOutput._init(this);
  }

  HttpPrefixHeadersInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _fooMap = $v.fooMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpPrefixHeadersInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPrefixHeadersInputOutput;
  }

  @override
  void update(void Function(HttpPrefixHeadersInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPrefixHeadersInputOutput build() => _build();

  _$HttpPrefixHeadersInputOutput _build() {
    _$HttpPrefixHeadersInputOutput _$result;
    try {
      _$result = _$v ??
          new _$HttpPrefixHeadersInputOutput._(
              foo: foo, fooMap: _fooMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fooMap';
        _fooMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpPrefixHeadersInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HttpPrefixHeadersInputOutputPayload
    extends HttpPrefixHeadersInputOutputPayload {
  factory _$HttpPrefixHeadersInputOutputPayload(
          [void Function(HttpPrefixHeadersInputOutputPayloadBuilder)?
              updates]) =>
      (new HttpPrefixHeadersInputOutputPayloadBuilder()..update(updates))
          ._build();

  _$HttpPrefixHeadersInputOutputPayload._() : super._();

  @override
  HttpPrefixHeadersInputOutputPayload rebuild(
          void Function(HttpPrefixHeadersInputOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPrefixHeadersInputOutputPayloadBuilder toBuilder() =>
      new HttpPrefixHeadersInputOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPrefixHeadersInputOutputPayload;
  }

  @override
  int get hashCode {
    return 364400537;
  }
}

class HttpPrefixHeadersInputOutputPayloadBuilder
    implements
        Builder<HttpPrefixHeadersInputOutputPayload,
            HttpPrefixHeadersInputOutputPayloadBuilder> {
  _$HttpPrefixHeadersInputOutputPayload? _$v;

  HttpPrefixHeadersInputOutputPayloadBuilder() {
    HttpPrefixHeadersInputOutputPayload._init(this);
  }

  @override
  void replace(HttpPrefixHeadersInputOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPrefixHeadersInputOutputPayload;
  }

  @override
  void update(
      void Function(HttpPrefixHeadersInputOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPrefixHeadersInputOutputPayload build() => _build();

  _$HttpPrefixHeadersInputOutputPayload _build() {
    final _$result = _$v ?? new _$HttpPrefixHeadersInputOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
