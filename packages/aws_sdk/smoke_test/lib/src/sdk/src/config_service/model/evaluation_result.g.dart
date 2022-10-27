// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.evaluation_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EvaluationResult extends EvaluationResult {
  @override
  final String? annotation;
  @override
  final _i2.ComplianceType? complianceType;
  @override
  final DateTime? configRuleInvokedTime;
  @override
  final _i3.EvaluationResultIdentifier? evaluationResultIdentifier;
  @override
  final DateTime? resultRecordedTime;
  @override
  final String? resultToken;

  factory _$EvaluationResult(
          [void Function(EvaluationResultBuilder)? updates]) =>
      (new EvaluationResultBuilder()..update(updates))._build();

  _$EvaluationResult._(
      {this.annotation,
      this.complianceType,
      this.configRuleInvokedTime,
      this.evaluationResultIdentifier,
      this.resultRecordedTime,
      this.resultToken})
      : super._();

  @override
  EvaluationResult rebuild(void Function(EvaluationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvaluationResultBuilder toBuilder() =>
      new EvaluationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EvaluationResult &&
        annotation == other.annotation &&
        complianceType == other.complianceType &&
        configRuleInvokedTime == other.configRuleInvokedTime &&
        evaluationResultIdentifier == other.evaluationResultIdentifier &&
        resultRecordedTime == other.resultRecordedTime &&
        resultToken == other.resultToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, annotation.hashCode), complianceType.hashCode),
                    configRuleInvokedTime.hashCode),
                evaluationResultIdentifier.hashCode),
            resultRecordedTime.hashCode),
        resultToken.hashCode));
  }
}

class EvaluationResultBuilder
    implements Builder<EvaluationResult, EvaluationResultBuilder> {
  _$EvaluationResult? _$v;

  String? _annotation;
  String? get annotation => _$this._annotation;
  set annotation(String? annotation) => _$this._annotation = annotation;

  _i2.ComplianceType? _complianceType;
  _i2.ComplianceType? get complianceType => _$this._complianceType;
  set complianceType(_i2.ComplianceType? complianceType) =>
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

  String? _resultToken;
  String? get resultToken => _$this._resultToken;
  set resultToken(String? resultToken) => _$this._resultToken = resultToken;

  EvaluationResultBuilder() {
    EvaluationResult._init(this);
  }

  EvaluationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _annotation = $v.annotation;
      _complianceType = $v.complianceType;
      _configRuleInvokedTime = $v.configRuleInvokedTime;
      _evaluationResultIdentifier = $v.evaluationResultIdentifier?.toBuilder();
      _resultRecordedTime = $v.resultRecordedTime;
      _resultToken = $v.resultToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EvaluationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EvaluationResult;
  }

  @override
  void update(void Function(EvaluationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EvaluationResult build() => _build();

  _$EvaluationResult _build() {
    _$EvaluationResult _$result;
    try {
      _$result = _$v ??
          new _$EvaluationResult._(
              annotation: annotation,
              complianceType: complianceType,
              configRuleInvokedTime: configRuleInvokedTime,
              evaluationResultIdentifier: _evaluationResultIdentifier?.build(),
              resultRecordedTime: resultRecordedTime,
              resultToken: resultToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'evaluationResultIdentifier';
        _evaluationResultIdentifier?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EvaluationResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
