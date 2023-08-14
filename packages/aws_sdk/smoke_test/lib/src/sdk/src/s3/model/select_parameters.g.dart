// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_parameters.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectParameters extends SelectParameters {
  @override
  final InputSerialization inputSerialization;
  @override
  final ExpressionType expressionType;
  @override
  final String expression;
  @override
  final OutputSerialization outputSerialization;

  factory _$SelectParameters(
          [void Function(SelectParametersBuilder)? updates]) =>
      (new SelectParametersBuilder()..update(updates))._build();

  _$SelectParameters._(
      {required this.inputSerialization,
      required this.expressionType,
      required this.expression,
      required this.outputSerialization})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        inputSerialization, r'SelectParameters', 'inputSerialization');
    BuiltValueNullFieldError.checkNotNull(
        expressionType, r'SelectParameters', 'expressionType');
    BuiltValueNullFieldError.checkNotNull(
        expression, r'SelectParameters', 'expression');
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
        inputSerialization == other.inputSerialization &&
        expressionType == other.expressionType &&
        expression == other.expression &&
        outputSerialization == other.outputSerialization;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inputSerialization.hashCode);
    _$hash = $jc(_$hash, expressionType.hashCode);
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, outputSerialization.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SelectParametersBuilder
    implements Builder<SelectParameters, SelectParametersBuilder> {
  _$SelectParameters? _$v;

  InputSerializationBuilder? _inputSerialization;
  InputSerializationBuilder get inputSerialization =>
      _$this._inputSerialization ??= new InputSerializationBuilder();
  set inputSerialization(InputSerializationBuilder? inputSerialization) =>
      _$this._inputSerialization = inputSerialization;

  ExpressionType? _expressionType;
  ExpressionType? get expressionType => _$this._expressionType;
  set expressionType(ExpressionType? expressionType) =>
      _$this._expressionType = expressionType;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(String? expression) => _$this._expression = expression;

  OutputSerializationBuilder? _outputSerialization;
  OutputSerializationBuilder get outputSerialization =>
      _$this._outputSerialization ??= new OutputSerializationBuilder();
  set outputSerialization(OutputSerializationBuilder? outputSerialization) =>
      _$this._outputSerialization = outputSerialization;

  SelectParametersBuilder();

  SelectParametersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inputSerialization = $v.inputSerialization.toBuilder();
      _expressionType = $v.expressionType;
      _expression = $v.expression;
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
              inputSerialization: inputSerialization.build(),
              expressionType: BuiltValueNullFieldError.checkNotNull(
                  expressionType, r'SelectParameters', 'expressionType'),
              expression: BuiltValueNullFieldError.checkNotNull(
                  expression, r'SelectParameters', 'expression'),
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
