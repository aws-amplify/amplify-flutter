// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v1.json_protocol.model.operation_with_optional_input_output_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperationWithOptionalInputOutputInput
    extends OperationWithOptionalInputOutputInput {
  @override
  final String? value;

  factory _$OperationWithOptionalInputOutputInput(
          [void Function(OperationWithOptionalInputOutputInputBuilder)?
              updates]) =>
      (new OperationWithOptionalInputOutputInputBuilder()..update(updates))
          ._build();

  _$OperationWithOptionalInputOutputInput._({this.value}) : super._();

  @override
  OperationWithOptionalInputOutputInput rebuild(
          void Function(OperationWithOptionalInputOutputInputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperationWithOptionalInputOutputInputBuilder toBuilder() =>
      new OperationWithOptionalInputOutputInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationWithOptionalInputOutputInput &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }
}

class OperationWithOptionalInputOutputInputBuilder
    implements
        Builder<OperationWithOptionalInputOutputInput,
            OperationWithOptionalInputOutputInputBuilder> {
  _$OperationWithOptionalInputOutputInput? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  OperationWithOptionalInputOutputInputBuilder() {
    OperationWithOptionalInputOutputInput._init(this);
  }

  OperationWithOptionalInputOutputInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperationWithOptionalInputOutputInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OperationWithOptionalInputOutputInput;
  }

  @override
  void update(
      void Function(OperationWithOptionalInputOutputInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperationWithOptionalInputOutputInput build() => _build();

  _$OperationWithOptionalInputOutputInput _build() {
    final _$result =
        _$v ?? new _$OperationWithOptionalInputOutputInput._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
