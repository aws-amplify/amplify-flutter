// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_with_optional_input_output_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperationWithOptionalInputOutputInput
    extends OperationWithOptionalInputOutputInput {
  @override
  final String? value;

  factory _$OperationWithOptionalInputOutputInput([
    void Function(OperationWithOptionalInputOutputInputBuilder)? updates,
  ]) => (OperationWithOptionalInputOutputInputBuilder()..update(updates))
      ._build();

  _$OperationWithOptionalInputOutputInput._({this.value}) : super._();
  @override
  OperationWithOptionalInputOutputInput rebuild(
    void Function(OperationWithOptionalInputOutputInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OperationWithOptionalInputOutputInputBuilder toBuilder() =>
      OperationWithOptionalInputOutputInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationWithOptionalInputOutputInput &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OperationWithOptionalInputOutputInputBuilder
    implements
        Builder<
          OperationWithOptionalInputOutputInput,
          OperationWithOptionalInputOutputInputBuilder
        > {
  _$OperationWithOptionalInputOutputInput? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  OperationWithOptionalInputOutputInputBuilder();

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
    _$v = other as _$OperationWithOptionalInputOutputInput;
  }

  @override
  void update(
    void Function(OperationWithOptionalInputOutputInputBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  OperationWithOptionalInputOutputInput build() => _build();

  _$OperationWithOptionalInputOutputInput _build() {
    final _$result =
        _$v ?? _$OperationWithOptionalInputOutputInput._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
