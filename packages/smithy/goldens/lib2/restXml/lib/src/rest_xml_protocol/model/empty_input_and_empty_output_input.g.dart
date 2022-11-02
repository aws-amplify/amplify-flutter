// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.empty_input_and_empty_output_input;

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
