// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.streaming_traits_with_media_type_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StreamingTraitsWithMediaTypeInputOutput
    extends StreamingTraitsWithMediaTypeInputOutput {
  @override
  final _i2.Stream<List<int>>? blob;
  @override
  final String? foo;

  factory _$StreamingTraitsWithMediaTypeInputOutput(
          [void Function(StreamingTraitsWithMediaTypeInputOutputBuilder)?
              updates]) =>
      (new StreamingTraitsWithMediaTypeInputOutputBuilder()..update(updates))
          ._build();

  _$StreamingTraitsWithMediaTypeInputOutput._({this.blob, this.foo})
      : super._();

  @override
  StreamingTraitsWithMediaTypeInputOutput rebuild(
          void Function(StreamingTraitsWithMediaTypeInputOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreamingTraitsWithMediaTypeInputOutputBuilder toBuilder() =>
      new StreamingTraitsWithMediaTypeInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreamingTraitsWithMediaTypeInputOutput &&
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

class StreamingTraitsWithMediaTypeInputOutputBuilder
    implements
        Builder<StreamingTraitsWithMediaTypeInputOutput,
            StreamingTraitsWithMediaTypeInputOutputBuilder> {
  _$StreamingTraitsWithMediaTypeInputOutput? _$v;

  _i2.Stream<List<int>>? _blob;
  _i2.Stream<List<int>>? get blob => _$this._blob;
  set blob(_i2.Stream<List<int>>? blob) => _$this._blob = blob;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  StreamingTraitsWithMediaTypeInputOutputBuilder() {
    StreamingTraitsWithMediaTypeInputOutput._init(this);
  }

  StreamingTraitsWithMediaTypeInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blob = $v.blob;
      _foo = $v.foo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreamingTraitsWithMediaTypeInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StreamingTraitsWithMediaTypeInputOutput;
  }

  @override
  void update(
      void Function(StreamingTraitsWithMediaTypeInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreamingTraitsWithMediaTypeInputOutput build() => _build();

  _$StreamingTraitsWithMediaTypeInputOutput _build() {
    final _$result = _$v ??
        new _$StreamingTraitsWithMediaTypeInputOutput._(blob: blob, foo: foo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
