// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.streaming_traits_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StreamingTraitsInputOutput extends StreamingTraitsInputOutput {
  @override
  final _i2.Stream<List<int>>? blob;
  @override
  final String? foo;

  factory _$StreamingTraitsInputOutput(
          [void Function(StreamingTraitsInputOutputBuilder)? updates]) =>
      (new StreamingTraitsInputOutputBuilder()..update(updates))._build();

  _$StreamingTraitsInputOutput._({this.blob, this.foo}) : super._();

  @override
  StreamingTraitsInputOutput rebuild(
          void Function(StreamingTraitsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreamingTraitsInputOutputBuilder toBuilder() =>
      new StreamingTraitsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreamingTraitsInputOutput &&
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

class StreamingTraitsInputOutputBuilder
    implements
        Builder<StreamingTraitsInputOutput, StreamingTraitsInputOutputBuilder> {
  _$StreamingTraitsInputOutput? _$v;

  _i2.Stream<List<int>>? _blob;
  _i2.Stream<List<int>>? get blob => _$this._blob;
  set blob(_i2.Stream<List<int>>? blob) => _$this._blob = blob;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  StreamingTraitsInputOutputBuilder() {
    StreamingTraitsInputOutput._init(this);
  }

  StreamingTraitsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blob = $v.blob;
      _foo = $v.foo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreamingTraitsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StreamingTraitsInputOutput;
  }

  @override
  void update(void Function(StreamingTraitsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreamingTraitsInputOutput build() => _build();

  _$StreamingTraitsInputOutput _build() {
    final _$result =
        _$v ?? new _$StreamingTraitsInputOutput._(blob: blob, foo: foo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
