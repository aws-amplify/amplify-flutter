// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.select_parameters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectParameters extends SelectParameters {
  @override
  final String expression;
  @override
  final _i2.ExpressionType expressionType;
  @override
  final _i3.InputSerialization inputSerialization;
  @override
  final _i4.OutputSerialization outputSerialization;

  factory _$SelectParameters(
          [void Function(SelectParametersBuilder)? updates]) =>
      (new SelectParametersBuilder()..update(updates))._build();

  _$SelectParameters._(
      {required this.expression,
      required this.expressionType,
      required this.inputSerialization,
      required this.outputSerialization})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        expression, r'SelectParameters', 'expression');
    BuiltValueNullFieldError.checkNotNull(
        expressionType, r'SelectParameters', 'expressionType');
    BuiltValueNullFieldError.checkNotNull(
        inputSerialization, r'SelectParameters', 'inputSerialization');
    BuiltValueNullFieldError.checkNotNull(
        outputSerialization, r'SelectParameters', 'outputSerialization');
  }

  @override
  SelectParameters rebuild(void Function(SelectParametersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectParametersBuilder toBuilder() =>
      new SelectParametersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectParameters &&
        expression == other.expression &&
        expressionType == other.expressionType &&
        inputSerialization == other.inputSerialization &&
        outputSerialization == other.outputSerialization;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, expressionType.hashCode);
    _$hash = $jc(_$hash, inputSerialization.hashCode);
    _$hash = $jc(_$hash, outputSerialization.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SelectParametersBuilder
    implements Builder<SelectParameters, SelectParametersBuilder> {
  _$SelectParameters? _$v;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(String? expression) => _$this._expression = expression;

  _i2.ExpressionType? _expressionType;
  _i2.ExpressionType? get expressionType => _$this._expressionType;
  set expressionType(_i2.ExpressionType? expressionType) =>
      _$this._expressionType = expressionType;

  _i3.InputSerializationBuilder? _inputSerialization;
  _i3.InputSerializationBuilder get inputSerialization =>
      _$this._inputSerialization ??= new _i3.InputSerializationBuilder();
  set inputSerialization(_i3.InputSerializationBuilder? inputSerialization) =>
      _$this._inputSerialization = inputSerialization;

  _i4.OutputSerializationBuilder? _outputSerialization;
  _i4.OutputSerializationBuilder get outputSerialization =>
      _$this._outputSerialization ??= new _i4.OutputSerializationBuilder();
  set outputSerialization(
          _i4.OutputSerializationBuilder? outputSerialization) =>
      _$this._outputSerialization = outputSerialization;

  SelectParametersBuilder() {
    SelectParameters._init(this);
  }

  SelectParametersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _expressionType = $v.expressionType;
      _inputSerialization = $v.inputSerialization.toBuilder();
      _outputSerialization = $v.outputSerialization.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectParameters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectParameters;
  }

  @override
  void update(void Function(SelectParametersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectParameters build() => _build();

  _$SelectParameters _build() {
    _$SelectParameters _$result;
    try {
      _$result = _$v ??
          new _$SelectParameters._(
              expression: BuiltValueNullFieldError.checkNotNull(
                  expression, r'SelectParameters', 'expression'),
              expressionType: BuiltValueNullFieldError.checkNotNull(
                  expressionType, r'SelectParameters', 'expressionType'),
              inputSerialization: inputSerialization.build(),
              outputSerialization: outputSerialization.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inputSerialization';
        inputSerialization.build();
        _$failedField = 'outputSerialization';
        outputSerialization.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SelectParameters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
