// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.http_checksum_required_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpChecksumRequiredInputOutput
    extends HttpChecksumRequiredInputOutput {
  @override
  final String? foo;

  factory _$HttpChecksumRequiredInputOutput(
          [void Function(HttpChecksumRequiredInputOutputBuilder)? updates]) =>
      (new HttpChecksumRequiredInputOutputBuilder()..update(updates))._build();

  _$HttpChecksumRequiredInputOutput._({this.foo}) : super._();

  @override
  HttpChecksumRequiredInputOutput rebuild(
          void Function(HttpChecksumRequiredInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpChecksumRequiredInputOutputBuilder toBuilder() =>
      new HttpChecksumRequiredInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpChecksumRequiredInputOutput && foo == other.foo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HttpChecksumRequiredInputOutputBuilder
    implements
        Builder<HttpChecksumRequiredInputOutput,
            HttpChecksumRequiredInputOutputBuilder> {
  _$HttpChecksumRequiredInputOutput? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  HttpChecksumRequiredInputOutputBuilder() {
    HttpChecksumRequiredInputOutput._init(this);
  }

  HttpChecksumRequiredInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpChecksumRequiredInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpChecksumRequiredInputOutput;
  }

  @override
  void update(void Function(HttpChecksumRequiredInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpChecksumRequiredInputOutput build() => _build();

  _$HttpChecksumRequiredInputOutput _build() {
    final _$result = _$v ?? new _$HttpChecksumRequiredInputOutput._(foo: foo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
