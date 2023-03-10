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
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, annotation.hashCode);
    _$hash = $jc(_$hash, awsRegion.hashCode);
    _$hash = $jc(_$hash, complianceType.hashCode);
    _$hash = $jc(_$hash, configRuleInvokedTime.hashCode);
    _$hash = $jc(_$hash, evaluationResultIdentifier.hashCode);
    _$hash = $jc(_$hash, resultRecordedTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
