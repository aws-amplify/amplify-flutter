// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_payload_traits_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPayloadTraitsInputOutput extends HttpPayloadTraitsInputOutput {
  @override
  final String? foo;
  @override
  final _i2.Uint8List? blob;

  factory _$HttpPayloadTraitsInputOutput(
          [void Function(HttpPayloadTraitsInputOutputBuilder)? updates]) =>
      (new HttpPayloadTraitsInputOutputBuilder()..update(updates))._build();

  _$HttpPayloadTraitsInputOutput._({this.foo, this.blob}) : super._();

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
        foo == other.foo &&
        blob == other.blob;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jc(_$hash, blob.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HttpPayloadTraitsInputOutputBuilder
    implements
        Builder<HttpPayloadTraitsInputOutput,
            HttpPayloadTraitsInputOutputBuilder> {
  _$HttpPayloadTraitsInputOutput? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  _i2.Uint8List? _blob;
  _i2.Uint8List? get blob => _$this._blob;
  set blob(_i2.Uint8List? blob) => _$this._blob = blob;

  HttpPayloadTraitsInputOutputBuilder();

  HttpPayloadTraitsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _blob = $v.blob;
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
        _$v ?? new _$HttpPayloadTraitsInputOutput._(foo: foo, blob: blob);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
