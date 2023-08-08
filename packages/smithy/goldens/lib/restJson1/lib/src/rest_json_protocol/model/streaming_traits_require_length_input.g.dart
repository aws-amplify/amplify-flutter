// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streaming_traits_require_length_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StreamingTraitsRequireLengthInput
    extends StreamingTraitsRequireLengthInput {
  @override
  final String? foo;
  @override
  final _i2.Stream<List<int>>? blob;

  factory _$StreamingTraitsRequireLengthInput(
          [void Function(StreamingTraitsRequireLengthInputBuilder)? updates]) =>
      (new StreamingTraitsRequireLengthInputBuilder()..update(updates))
          ._build();

  _$StreamingTraitsRequireLengthInput._({this.foo, this.blob}) : super._();

  @override
  StreamingTraitsRequireLengthInput rebuild(
          void Function(StreamingTraitsRequireLengthInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreamingTraitsRequireLengthInputBuilder toBuilder() =>
      new StreamingTraitsRequireLengthInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreamingTraitsRequireLengthInput &&
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

class StreamingTraitsRequireLengthInputBuilder
    implements
        Builder<StreamingTraitsRequireLengthInput,
            StreamingTraitsRequireLengthInputBuilder> {
  _$StreamingTraitsRequireLengthInput? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  _i2.Stream<List<int>>? _blob;
  _i2.Stream<List<int>>? get blob => _$this._blob;
  set blob(_i2.Stream<List<int>>? blob) => _$this._blob = blob;

  StreamingTraitsRequireLengthInputBuilder();

  StreamingTraitsRequireLengthInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _blob = $v.blob;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreamingTraitsRequireLengthInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StreamingTraitsRequireLengthInput;
  }

  @override
  void update(
      void Function(StreamingTraitsRequireLengthInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreamingTraitsRequireLengthInput build() => _build();

  _$StreamingTraitsRequireLengthInput _build() {
    final _$result =
        _$v ?? new _$StreamingTraitsRequireLengthInput._(foo: foo, blob: blob);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
