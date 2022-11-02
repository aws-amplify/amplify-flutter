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
    return $jf($jc(
        $jc($jc($jc(0, expression.hashCode), expressionType.hashCode),
            inputSerialization.hashCode),
        outputSerialization.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
