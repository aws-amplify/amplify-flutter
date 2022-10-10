// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_evaluation_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackEvaluationResult
    extends ConformancePackEvaluationResult {
  @override
  final String? annotation;
  @override
  final _i2.ConformancePackComplianceType complianceType;
  @override
  final DateTime configRuleInvokedTime;
  @override
  final _i3.EvaluationResultIdentifier evaluationResultIdentifier;
  @override
  final DateTime resultRecordedTime;

  factory _$ConformancePackEvaluationResult(
          [void Function(ConformancePackEvaluationResultBuilder)? updates]) =>
      (new ConformancePackEvaluationResultBuilder()..update(updates))._build();

  _$ConformancePackEvaluationResult._(
      {this.annotation,
      required this.complianceType,
      required this.configRuleInvokedTime,
      required this.evaluationResultIdentifier,
      required this.resultRecordedTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        complianceType, r'ConformancePackEvaluationResult', 'complianceType');
    BuiltValueNullFieldError.checkNotNull(configRuleInvokedTime,
        r'ConformancePackEvaluationResult', 'configRuleInvokedTime');
    BuiltValueNullFieldError.checkNotNull(evaluationResultIdentifier,
        r'ConformancePackEvaluationResult', 'evaluationResultIdentifier');
    BuiltValueNullFieldError.checkNotNull(resultRecordedTime,
        r'ConformancePackEvaluationResult', 'resultRecordedTime');
  }

  @override
  ConformancePackEvaluationResult rebuild(
          void Function(ConformancePackEvaluationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConformancePackEvaluationResultBuilder toBuilder() =>
      new ConformancePackEvaluationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConformancePackEvaluationResult &&
        annotation == other.annotation &&
        complianceType == other.complianceType &&
        configRuleInvokedTime == other.configRuleInvokedTime &&
        evaluationResultIdentifier == other.evaluationResultIdentifier &&
        resultRecordedTime == other.resultRecordedTime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, annotation.hashCode), complianceType.hashCode),
                configRuleInvokedTime.hashCode),
            evaluationResultIdentifier.hashCode),
        resultRecordedTime.hashCode));
  }
}

class ConformancePackEvaluationResultBuilder
    implements
        Builder<ConformancePackEvaluationResult,
            ConformancePackEvaluationResultBuilder> {
  _$ConformancePackEvaluationResult? _$v;

  String? _annotation;
  String? get annotation => _$this._annotation;
  set annotation(String? annotation) => _$this._annotation = annotation;

  _i2.ConformancePackComplianceType? _complianceType;
  _i2.ConformancePackComplianceType? get complianceType =>
      _$this._complianceType;
  set complianceType(_i2.ConformancePackComplianceType? complianceType) =>
      _$this._complianceType = complianceType;

  DateTime? _configRuleInvokedTime;
  DateTime? get configRuleInvokedTime => _$this._configRuleInvokedTime;
  set configRuleInvokedTime(DateTime? configRuleInvokedTime) =>
      _$this._configRuleInvokedTime = configRuleInvokedTime;

  _i3.EvaluationResultIdentifierBuilder? _evaluationResultIdentifier;
  _i3.EvaluationResultIdentifierBuilder get evaluationResultIdentifier =>
      _$this._evaluationResultIdentifier ??=
          new _i3.EvaluationResultIdentifierBuilder();
  set evaluationResultIdentifier(
          _i3.EvaluationResultIdentifierBuilder? evaluationResultIdentifier) =>
      _$this._evaluationResultIdentifier = evaluationResultIdentifier;

  DateTime? _resultRecordedTime;
  DateTime? get resultRecordedTime => _$this._resultRecordedTime;
  set resultRecordedTime(DateTime? resultRecordedTime) =>
      _$this._resultRecordedTime = resultRecordedTime;

  ConformancePackEvaluationResultBuilder() {
    ConformancePackEvaluationResult._init(this);
  }

  ConformancePackEvaluationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _annotation = $v.annotation;
      _complianceType = $v.complianceType;
      _configRuleInvokedTime = $v.configRuleInvokedTime;
      _evaluationResultIdentifier = $v.evaluationResultIdentifier.toBuilder();
      _resultRecordedTime = $v.resultRecordedTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConformancePackEvaluationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConformancePackEvaluationResult;
  }

  @override
  void update(void Function(ConformancePackEvaluationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConformancePackEvaluationResult build() => _build();

  _$ConformancePackEvaluationResult _build() {
    _$ConformancePackEvaluationResult _$result;
    try {
      _$result = _$v ??
          new _$ConformancePackEvaluationResult._(
              annotation: annotation,
              complianceType: BuiltValueNullFieldError.checkNotNull(
                  complianceType,
                  r'ConformancePackEvaluationResult',
                  'complianceType'),
              configRuleInvokedTime: BuiltValueNullFieldError.checkNotNull(
                  configRuleInvokedTime,
                  r'ConformancePackEvaluationResult',
                  'configRuleInvokedTime'),
              evaluationResultIdentifier: evaluationResultIdentifier.build(),
              resultRecordedTime: BuiltValueNullFieldError.checkNotNull(
                  resultRecordedTime,
                  r'ConformancePackEvaluationResult',
                  'resultRecordedTime'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'evaluationResultIdentifier';
        evaluationResultIdentifier.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConformancePackEvaluationResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
