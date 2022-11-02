// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v2.json_protocol.model.operation_with_optional_input_output_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperationWithOptionalInputOutputOutput
    extends OperationWithOptionalInputOutputOutput {
  @override
  final String? value;

  factory _$OperationWithOptionalInputOutputOutput(
          [void Function(OperationWithOptionalInputOutputOutputBuilder)?
              updates]) =>
      (new OperationWithOptionalInputOutputOutputBuilder()..update(updates))
          ._build();

  _$OperationWithOptionalInputOutputOutput._({this.value}) : super._();

  @override
  OperationWithOptionalInputOutputOutput rebuild(
          void Function(OperationWithOptionalInputOutputOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperationWithOptionalInputOutputOutputBuilder toBuilder() =>
      new OperationWithOptionalInputOutputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationWithOptionalInputOutputOutput &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }
}

class OperationWithOptionalInputOutputOutputBuilder
    implements
        Builder<OperationWithOptionalInputOutputOutput,
            OperationWithOptionalInputOutputOutputBuilder> {
  _$OperationWithOptionalInputOutputOutput? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  OperationWithOptionalInputOutputOutputBuilder() {
    OperationWithOptionalInputOutputOutput._init(this);
  }

  OperationWithOptionalInputOutputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperationWithOptionalInputOutputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OperationWithOptionalInputOutputOutput;
  }

  @override
  void update(
      void Function(OperationWithOptionalInputOutputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperationWithOptionalInputOutputOutput build() => _build();

  _$OperationWithOptionalInputOutputOutput _build() {
    final _$result =
        _$v ?? new _$OperationWithOptionalInputOutputOutput._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
