// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.empty_input_and_empty_output_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmptyInputAndEmptyOutputInput extends EmptyInputAndEmptyOutputInput {
  factory _$EmptyInputAndEmptyOutputInput(
          [void Function(EmptyInputAndEmptyOutputInputBuilder)? updates]) =>
      (new EmptyInputAndEmptyOutputInputBuilder()..update(updates))._build();

  _$EmptyInputAndEmptyOutputInput._() : super._();

  @override
  EmptyInputAndEmptyOutputInput rebuild(
          void Function(EmptyInputAndEmptyOutputInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmptyInputAndEmptyOutputInputBuilder toBuilder() =>
      new EmptyInputAndEmptyOutputInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmptyInputAndEmptyOutputInput;
  }

  @override
  int get hashCode {
    return 306362152;
  }
}

class EmptyInputAndEmptyOutputInputBuilder
    implements
        Builder<EmptyInputAndEmptyOutputInput,
            EmptyInputAndEmptyOutputInputBuilder> {
  _$EmptyInputAndEmptyOutputInput? _$v;

  EmptyInputAndEmptyOutputInputBuilder() {
    EmptyInputAndEmptyOutputInput._init(this);
  }

  @override
  void replace(EmptyInputAndEmptyOutputInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmptyInputAndEmptyOutputInput;
  }

  @override
  void update(void Function(EmptyInputAndEmptyOutputInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmptyInputAndEmptyOutputInput build() => _build();

  _$EmptyInputAndEmptyOutputInput _build() {
    final _$result = _$v ?? new _$EmptyInputAndEmptyOutputInput._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
