// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.http_payload_traits_with_media_type_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPayloadTraitsWithMediaTypeInputOutput
    extends HttpPayloadTraitsWithMediaTypeInputOutput {
  @override
  final _i2.Uint8List? blob;
  @override
  final String? foo;

  factory _$HttpPayloadTraitsWithMediaTypeInputOutput(
          [void Function(HttpPayloadTraitsWithMediaTypeInputOutputBuilder)?
              updates]) =>
      (new HttpPayloadTraitsWithMediaTypeInputOutputBuilder()..update(updates))
          ._build();

  _$HttpPayloadTraitsWithMediaTypeInputOutput._({this.blob, this.foo})
      : super._();

  @override
  HttpPayloadTraitsWithMediaTypeInputOutput rebuild(
          void Function(HttpPayloadTraitsWithMediaTypeInputOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPayloadTraitsWithMediaTypeInputOutputBuilder toBuilder() =>
      new HttpPayloadTraitsWithMediaTypeInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPayloadTraitsWithMediaTypeInputOutput &&
        blob == other.blob &&
        foo == other.foo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, blob.hashCode), foo.hashCode));
  }
}

class HttpPayloadTraitsWithMediaTypeInputOutputBuilder
    implements
        Builder<HttpPayloadTraitsWithMediaTypeInputOutput,
            HttpPayloadTraitsWithMediaTypeInputOutputBuilder> {
  _$HttpPayloadTraitsWithMediaTypeInputOutput? _$v;

  _i2.Uint8List? _blob;
  _i2.Uint8List? get blob => _$this._blob;
  set blob(_i2.Uint8List? blob) => _$this._blob = blob;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  HttpPayloadTraitsWithMediaTypeInputOutputBuilder() {
    HttpPayloadTraitsWithMediaTypeInputOutput._init(this);
  }

  HttpPayloadTraitsWithMediaTypeInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blob = $v.blob;
      _foo = $v.foo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpPayloadTraitsWithMediaTypeInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPayloadTraitsWithMediaTypeInputOutput;
  }

  @override
  void update(
      void Function(HttpPayloadTraitsWithMediaTypeInputOutputBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPayloadTraitsWithMediaTypeInputOutput build() => _build();

  _$HttpPayloadTraitsWithMediaTypeInputOutput _build() {
    final _$result = _$v ??
        new _$HttpPayloadTraitsWithMediaTypeInputOutput._(blob: blob, foo: foo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
