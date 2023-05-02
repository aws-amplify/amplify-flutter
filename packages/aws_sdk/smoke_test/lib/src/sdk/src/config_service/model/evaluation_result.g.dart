// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.evaluation_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EvaluationResult extends EvaluationResult {
  @override
  final _i2.EvaluationResultIdentifier? evaluationResultIdentifier;
  @override
  final _i3.ComplianceType? complianceType;
  @override
  final DateTime? resultRecordedTime;
  @override
  final DateTime? configRuleInvokedTime;
  @override
  final String? annotation;
  @override
  final String? resultToken;

  factory _$EvaluationResult(
          [void Function(EvaluationResultBuilder)? updates]) =>
      (new EvaluationResultBuilder()..update(updates))._build();

  _$EvaluationResult._(
      {this.evaluationResultIdentifier,
      this.complianceType,
      this.resultRecordedTime,
      this.configRuleInvokedTime,
      this.annotation,
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
        evaluationResultIdentifier == other.evaluationResultIdentifier &&
        complianceType == other.complianceType &&
        resultRecordedTime == other.resultRecordedTime &&
        configRuleInvokedTime == other.configRuleInvokedTime &&
        annotation == other.annotation &&
        resultToken == other.resultToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, evaluationResultIdentifier.hashCode);
    _$hash = $jc(_$hash, complianceType.hashCode);
    _$hash = $jc(_$hash, resultRecordedTime.hashCode);
    _$hash = $jc(_$hash, configRuleInvokedTime.hashCode);
    _$hash = $jc(_$hash, annotation.hashCode);
    _$hash = $jc(_$hash, resultToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EvaluationResultBuilder
    implements Builder<EvaluationResult, EvaluationResultBuilder> {
  _$EvaluationResult? _$v;

  _i2.EvaluationResultIdentifierBuilder? _evaluationResultIdentifier;
  _i2.EvaluationResultIdentifierBuilder get evaluationResultIdentifier =>
      _$this._evaluationResultIdentifier ??=
          new _i2.EvaluationResultIdentifierBuilder();
  set evaluationResultIdentifier(
          _i2.EvaluationResultIdentifierBuilder? evaluationResultIdentifier) =>
      _$this._evaluationResultIdentifier = evaluationResultIdentifier;

  _i3.ComplianceType? _complianceType;
  _i3.ComplianceType? get complianceType => _$this._complianceType;
  set complianceType(_i3.ComplianceType? complianceType) =>
      _$this._complianceType = complianceType;

  DateTime? _resultRecordedTime;
  DateTime? get resultRecordedTime => _$this._resultRecordedTime;
  set resultRecordedTime(DateTime? resultRecordedTime) =>
      _$this._resultRecordedTime = resultRecordedTime;

  DateTime? _configRuleInvokedTime;
  DateTime? get configRuleInvokedTime => _$this._configRuleInvokedTime;
  set configRuleInvokedTime(DateTime? configRuleInvokedTime) =>
      _$this._configRuleInvokedTime = configRuleInvokedTime;

  String? _annotation;
  String? get annotation => _$this._annotation;
  set annotation(String? annotation) => _$this._annotation = annotation;

  String? _resultToken;
  String? get resultToken => _$this._resultToken;
  set resultToken(String? resultToken) => _$this._resultToken = resultToken;

  EvaluationResultBuilder() {
    EvaluationResult._init(this);
  }

  EvaluationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evaluationResultIdentifier = $v.evaluationResultIdentifier?.toBuilder();
      _complianceType = $v.complianceType;
      _resultRecordedTime = $v.resultRecordedTime;
      _configRuleInvokedTime = $v.configRuleInvokedTime;
      _annotation = $v.annotation;
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
              evaluationResultIdentifier: _evaluationResultIdentifier?.build(),
              complianceType: complianceType,
              resultRecordedTime: resultRecordedTime,
              configRuleInvokedTime: configRuleInvokedTime,
              annotation: annotation,
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
