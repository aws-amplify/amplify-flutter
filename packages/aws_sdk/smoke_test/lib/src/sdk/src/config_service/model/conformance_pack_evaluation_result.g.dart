// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_evaluation_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackEvaluationResult
    extends ConformancePackEvaluationResult {
  @override
  final _i2.ConformancePackComplianceType complianceType;
  @override
  final _i3.EvaluationResultIdentifier evaluationResultIdentifier;
  @override
  final DateTime configRuleInvokedTime;
  @override
  final DateTime resultRecordedTime;
  @override
  final String? annotation;

  factory _$ConformancePackEvaluationResult(
          [void Function(ConformancePackEvaluationResultBuilder)? updates]) =>
      (new ConformancePackEvaluationResultBuilder()..update(updates))._build();

  _$ConformancePackEvaluationResult._(
      {required this.complianceType,
      required this.evaluationResultIdentifier,
      required this.configRuleInvokedTime,
      required this.resultRecordedTime,
      this.annotation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        complianceType, r'ConformancePackEvaluationResult', 'complianceType');
    BuiltValueNullFieldError.checkNotNull(evaluationResultIdentifier,
        r'ConformancePackEvaluationResult', 'evaluationResultIdentifier');
    BuiltValueNullFieldError.checkNotNull(configRuleInvokedTime,
        r'ConformancePackEvaluationResult', 'configRuleInvokedTime');
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
        complianceType == other.complianceType &&
        evaluationResultIdentifier == other.evaluationResultIdentifier &&
        configRuleInvokedTime == other.configRuleInvokedTime &&
        resultRecordedTime == other.resultRecordedTime &&
        annotation == other.annotation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceType.hashCode);
    _$hash = $jc(_$hash, evaluationResultIdentifier.hashCode);
    _$hash = $jc(_$hash, configRuleInvokedTime.hashCode);
    _$hash = $jc(_$hash, resultRecordedTime.hashCode);
    _$hash = $jc(_$hash, annotation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConformancePackEvaluationResultBuilder
    implements
        Builder<ConformancePackEvaluationResult,
            ConformancePackEvaluationResultBuilder> {
  _$ConformancePackEvaluationResult? _$v;

  _i2.ConformancePackComplianceType? _complianceType;
  _i2.ConformancePackComplianceType? get complianceType =>
      _$this._complianceType;
  set complianceType(_i2.ConformancePackComplianceType? complianceType) =>
      _$this._complianceType = complianceType;

  _i3.EvaluationResultIdentifierBuilder? _evaluationResultIdentifier;
  _i3.EvaluationResultIdentifierBuilder get evaluationResultIdentifier =>
      _$this._evaluationResultIdentifier ??=
          new _i3.EvaluationResultIdentifierBuilder();
  set evaluationResultIdentifier(
          _i3.EvaluationResultIdentifierBuilder? evaluationResultIdentifier) =>
      _$this._evaluationResultIdentifier = evaluationResultIdentifier;

  DateTime? _configRuleInvokedTime;
  DateTime? get configRuleInvokedTime => _$this._configRuleInvokedTime;
  set configRuleInvokedTime(DateTime? configRuleInvokedTime) =>
      _$this._configRuleInvokedTime = configRuleInvokedTime;

  DateTime? _resultRecordedTime;
  DateTime? get resultRecordedTime => _$this._resultRecordedTime;
  set resultRecordedTime(DateTime? resultRecordedTime) =>
      _$this._resultRecordedTime = resultRecordedTime;

  String? _annotation;
  String? get annotation => _$this._annotation;
  set annotation(String? annotation) => _$this._annotation = annotation;

  ConformancePackEvaluationResultBuilder() {
    ConformancePackEvaluationResult._init(this);
  }

  ConformancePackEvaluationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceType = $v.complianceType;
      _evaluationResultIdentifier = $v.evaluationResultIdentifier.toBuilder();
      _configRuleInvokedTime = $v.configRuleInvokedTime;
      _resultRecordedTime = $v.resultRecordedTime;
      _annotation = $v.annotation;
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
              complianceType: BuiltValueNullFieldError.checkNotNull(
                  complianceType,
                  r'ConformancePackEvaluationResult',
                  'complianceType'),
              evaluationResultIdentifier: evaluationResultIdentifier.build(),
              configRuleInvokedTime: BuiltValueNullFieldError.checkNotNull(
                  configRuleInvokedTime,
                  r'ConformancePackEvaluationResult',
                  'configRuleInvokedTime'),
              resultRecordedTime: BuiltValueNullFieldError.checkNotNull(
                  resultRecordedTime,
                  r'ConformancePackEvaluationResult',
                  'resultRecordedTime'),
              annotation: annotation);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
