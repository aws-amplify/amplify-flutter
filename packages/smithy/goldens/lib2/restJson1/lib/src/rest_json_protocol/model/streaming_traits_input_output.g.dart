// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streaming_traits_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StreamingTraitsInputOutput extends StreamingTraitsInputOutput {
  @override
  final String? foo;
  @override
  final _i2.Stream<List<int>> blob;

  factory _$StreamingTraitsInputOutput(
          [void Function(StreamingTraitsInputOutputBuilder)? updates]) =>
      (new StreamingTraitsInputOutputBuilder()..update(updates))._build();

  _$StreamingTraitsInputOutput._({this.foo, required this.blob}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        blob, r'StreamingTraitsInputOutput', 'blob');
  }

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

class StreamingTraitsInputOutputBuilder
    implements
        Builder<StreamingTraitsInputOutput, StreamingTraitsInputOutputBuilder> {
  _$StreamingTraitsInputOutput? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  _i2.Stream<List<int>>? _blob;
  _i2.Stream<List<int>>? get blob => _$this._blob;
  set blob(_i2.Stream<List<int>>? blob) => _$this._blob = blob;

  StreamingTraitsInputOutputBuilder() {
    StreamingTraitsInputOutput._init(this);
  }

  StreamingTraitsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _blob = $v.blob;
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
    final _$result = _$v ??
        new _$StreamingTraitsInputOutput._(
            foo: foo,
            blob: BuiltValueNullFieldError.checkNotNull(
                blob, r'StreamingTraitsInputOutput', 'blob'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
