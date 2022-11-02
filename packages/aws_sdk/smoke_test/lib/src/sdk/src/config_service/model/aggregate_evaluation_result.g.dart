// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.aggregate_evaluation_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregateEvaluationResult extends AggregateEvaluationResult {
  @override
  final String? accountId;
  @override
  final String? annotation;
  @override
  final String? awsRegion;
  @override
  final _i2.ComplianceType? complianceType;
  @override
  final DateTime? configRuleInvokedTime;
  @override
  final _i3.EvaluationResultIdentifier? evaluationResultIdentifier;
  @override
  final DateTime? resultRecordedTime;

  factory _$AggregateEvaluationResult(
          [void Function(AggregateEvaluationResultBuilder)? updates]) =>
      (new AggregateEvaluationResultBuilder()..update(updates))._build();

  _$AggregateEvaluationResult._(
      {this.accountId,
      this.annotation,
      this.awsRegion,
      this.complianceType,
      this.configRuleInvokedTime,
      this.evaluationResultIdentifier,
      this.resultRecordedTime})
      : super._();

  @override
  AggregateEvaluationResult rebuild(
          void Function(AggregateEvaluationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregateEvaluationResultBuilder toBuilder() =>
      new AggregateEvaluationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregateEvaluationResult &&
        accountId == other.accountId &&
        annotation == other.annotation &&
        awsRegion == other.awsRegion &&
        complianceType == other.complianceType &&
        configRuleInvokedTime == other.configRuleInvokedTime &&
        evaluationResultIdentifier == other.evaluationResultIdentifier &&
        resultRecordedTime == other.resultRecordedTime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, accountId.hashCode), annotation.hashCode),
                        awsRegion.hashCode),
                    complianceType.hashCode),
                configRuleInvokedTime.hashCode),
            evaluationResultIdentifier.hashCode),
        resultRecordedTime.hashCode));
  }
}

class AggregateEvaluationResultBuilder
    implements
        Builder<AggregateEvaluationResult, AggregateEvaluationResultBuilder> {
  _$AggregateEvaluationResult? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _annotation;
  String? get annotation => _$this._annotation;
  set annotation(String? annotation) => _$this._annotation = annotation;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

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

  AggregateEvaluationResultBuilder() {
    AggregateEvaluationResult._init(this);
  }

  AggregateEvaluationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _annotation = $v.annotation;
      _awsRegion = $v.awsRegion;
      _complianceType = $v.complianceType;
      _configRuleInvokedTime = $v.configRuleInvokedTime;
      _evaluationResultIdentifier = $v.evaluationResultIdentifier?.toBuilder();
      _resultRecordedTime = $v.resultRecordedTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregateEvaluationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AggregateEvaluationResult;
  }

  @override
  void update(void Function(AggregateEvaluationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregateEvaluationResult build() => _build();

  _$AggregateEvaluationResult _build() {
    _$AggregateEvaluationResult _$result;
    try {
      _$result = _$v ??
          new _$AggregateEvaluationResult._(
              accountId: accountId,
              annotation: annotation,
              awsRegion: awsRegion,
              complianceType: complianceType,
              configRuleInvokedTime: configRuleInvokedTime,
              evaluationResultIdentifier: _evaluationResultIdentifier?.build(),
              resultRecordedTime: resultRecordedTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'evaluationResultIdentifier';
        _evaluationResultIdentifier?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AggregateEvaluationResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
