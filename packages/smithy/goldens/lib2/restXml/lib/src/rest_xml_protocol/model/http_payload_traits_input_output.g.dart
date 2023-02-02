// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.http_payload_traits_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPayloadTraitsInputOutput extends HttpPayloadTraitsInputOutput {
  @override
  final _i2.Uint8List? blob;
  @override
  final String? foo;

  factory _$HttpPayloadTraitsInputOutput(
          [void Function(HttpPayloadTraitsInputOutputBuilder)? updates]) =>
      (new HttpPayloadTraitsInputOutputBuilder()..update(updates))._build();

  _$HttpPayloadTraitsInputOutput._({this.blob, this.foo}) : super._();

  @override
  HttpPayloadTraitsInputOutput rebuild(
          void Function(HttpPayloadTraitsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPayloadTraitsInputOutputBuilder toBuilder() =>
      new HttpPayloadTraitsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPayloadTraitsInputOutput &&
        blob == other.blob &&
        foo == other.foo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blob.hashCode);
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HttpPayloadTraitsInputOutputBuilder
    implements
        Builder<HttpPayloadTraitsInputOutput,
            HttpPayloadTraitsInputOutputBuilder> {
  _$HttpPayloadTraitsInputOutput? _$v;

  _i2.Uint8List? _blob;
  _i2.Uint8List? get blob => _$this._blob;
  set blob(_i2.Uint8List? blob) => _$this._blob = blob;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  HttpPayloadTraitsInputOutputBuilder() {
    HttpPayloadTraitsInputOutput._init(this);
  }

  HttpPayloadTraitsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blob = $v.blob;
      _foo = $v.foo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpPayloadTraitsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPayloadTraitsInputOutput;
  }

  @override
  void update(void Function(HttpPayloadTraitsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPayloadTraitsInputOutput build() => _build();

  _$HttpPayloadTraitsInputOutput _build() {
    final _$result =
        _$v ?? new _$HttpPayloadTraitsInputOutput._(blob: blob, foo: foo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
