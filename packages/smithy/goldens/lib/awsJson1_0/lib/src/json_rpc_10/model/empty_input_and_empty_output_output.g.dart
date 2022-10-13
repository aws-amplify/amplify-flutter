// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_0_v1.json_rpc_10.model.empty_input_and_empty_output_output;

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
