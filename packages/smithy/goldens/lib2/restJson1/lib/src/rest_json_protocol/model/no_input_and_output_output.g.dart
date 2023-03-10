// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.no_input_and_output_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoInputAndOutputOutput extends NoInputAndOutputOutput {
  factory _$NoInputAndOutputOutput(
          [void Function(NoInputAndOutputOutputBuilder)? updates]) =>
      (new NoInputAndOutputOutputBuilder()..update(updates))._build();

  _$NoInputAndOutputOutput._() : super._();

  @override
  NoInputAndOutputOutput rebuild(
          void Function(NoInputAndOutputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoInputAndOutputOutputBuilder toBuilder() =>
      new NoInputAndOutputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoInputAndOutputOutput;
  }

  @override
  int get hashCode {
    return 29623751;
  }
}

class NoInputAndOutputOutputBuilder
    implements Builder<NoInputAndOutputOutput, NoInputAndOutputOutputBuilder> {
  _$NoInputAndOutputOutput? _$v;

  NoInputAndOutputOutputBuilder() {
    NoInputAndOutputOutput._init(this);
  }

  @override
  void replace(NoInputAndOutputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoInputAndOutputOutput;
  }

  @override
  void update(void Function(NoInputAndOutputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoInputAndOutputOutput build() => _build();

  _$NoInputAndOutputOutput _build() {
    final _$result = _$v ?? new _$NoInputAndOutputOutput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
