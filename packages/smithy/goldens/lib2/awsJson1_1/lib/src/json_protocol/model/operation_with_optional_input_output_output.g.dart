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
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
