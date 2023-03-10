// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.empty_input_and_empty_output_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmptyInputAndEmptyOutputOutput extends EmptyInputAndEmptyOutputOutput {
  factory _$EmptyInputAndEmptyOutputOutput(
          [void Function(EmptyInputAndEmptyOutputOutputBuilder)? updates]) =>
      (new EmptyInputAndEmptyOutputOutputBuilder()..update(updates))._build();

  _$EmptyInputAndEmptyOutputOutput._() : super._();

  @override
  EmptyInputAndEmptyOutputOutput rebuild(
          void Function(EmptyInputAndEmptyOutputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmptyInputAndEmptyOutputOutputBuilder toBuilder() =>
      new EmptyInputAndEmptyOutputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmptyInputAndEmptyOutputOutput;
  }

  @override
  int get hashCode {
    return 114033299;
  }
}

class EmptyInputAndEmptyOutputOutputBuilder
    implements
        Builder<EmptyInputAndEmptyOutputOutput,
            EmptyInputAndEmptyOutputOutputBuilder> {
  _$EmptyInputAndEmptyOutputOutput? _$v;

  EmptyInputAndEmptyOutputOutputBuilder() {
    EmptyInputAndEmptyOutputOutput._init(this);
  }

  @override
  void replace(EmptyInputAndEmptyOutputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmptyInputAndEmptyOutputOutput;
  }

  @override
  void update(void Function(EmptyInputAndEmptyOutputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmptyInputAndEmptyOutputOutput build() => _build();

  _$EmptyInputAndEmptyOutputOutput _build() {
    final _$result = _$v ?? new _$EmptyInputAndEmptyOutputOutput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
