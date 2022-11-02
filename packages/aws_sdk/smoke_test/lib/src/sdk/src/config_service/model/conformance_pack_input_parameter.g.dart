// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_input_parameter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackInputParameter extends ConformancePackInputParameter {
  @override
  final String parameterName;
  @override
  final String parameterValue;

  factory _$ConformancePackInputParameter(
          [void Function(ConformancePackInputParameterBuilder)? updates]) =>
      (new ConformancePackInputParameterBuilder()..update(updates))._build();

  _$ConformancePackInputParameter._(
      {required this.parameterName, required this.parameterValue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        parameterName, r'ConformancePackInputParameter', 'parameterName');
    BuiltValueNullFieldError.checkNotNull(
        parameterValue, r'ConformancePackInputParameter', 'parameterValue');
  }

  @override
  ConformancePackInputParameter rebuild(
          void Function(ConformancePackInputParameterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConformancePackInputParameterBuilder toBuilder() =>
      new ConformancePackInputParameterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConformancePackInputParameter &&
        parameterName == other.parameterName &&
        parameterValue == other.parameterValue;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, parameterName.hashCode), parameterValue.hashCode));
  }
}

class ConformancePackInputParameterBuilder
    implements
        Builder<ConformancePackInputParameter,
            ConformancePackInputParameterBuilder> {
  _$ConformancePackInputParameter? _$v;

  String? _parameterName;
  String? get parameterName => _$this._parameterName;
  set parameterName(String? parameterName) =>
      _$this._parameterName = parameterName;

  String? _parameterValue;
  String? get parameterValue => _$this._parameterValue;
  set parameterValue(String? parameterValue) =>
      _$this._parameterValue = parameterValue;

  ConformancePackInputParameterBuilder() {
    ConformancePackInputParameter._init(this);
  }

  ConformancePackInputParameterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parameterName = $v.parameterName;
      _parameterValue = $v.parameterValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConformancePackInputParameter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConformancePackInputParameter;
  }

  @override
  void update(void Function(ConformancePackInputParameterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConformancePackInputParameter build() => _build();

  _$ConformancePackInputParameter _build() {
    final _$result = _$v ??
        new _$ConformancePackInputParameter._(
            parameterName: BuiltValueNullFieldError.checkNotNull(parameterName,
                r'ConformancePackInputParameter', 'parameterName'),
            parameterValue: BuiltValueNullFieldError.checkNotNull(
                parameterValue,
                r'ConformancePackInputParameter',
                'parameterValue'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
