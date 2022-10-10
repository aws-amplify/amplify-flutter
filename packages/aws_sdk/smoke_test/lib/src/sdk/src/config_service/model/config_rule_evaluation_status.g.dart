// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.config_rule_evaluation_status;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigRuleEvaluationStatus extends ConfigRuleEvaluationStatus {
  @override
  final String? configRuleArn;
  @override
  final String? configRuleId;
  @override
  final String? configRuleName;
  @override
  final DateTime? firstActivatedTime;
  @override
  final bool? firstEvaluationStarted;
  @override
  final DateTime? lastDeactivatedTime;
  @override
  final String? lastDebugLogDeliveryStatus;
  @override
  final String? lastDebugLogDeliveryStatusReason;
  @override
  final DateTime? lastDebugLogDeliveryTime;
  @override
  final String? lastErrorCode;
  @override
  final String? lastErrorMessage;
  @override
  final DateTime? lastFailedEvaluationTime;
  @override
  final DateTime? lastFailedInvocationTime;
  @override
  final DateTime? lastSuccessfulEvaluationTime;
  @override
  final DateTime? lastSuccessfulInvocationTime;

  factory _$ConfigRuleEvaluationStatus(
          [void Function(ConfigRuleEvaluationStatusBuilder)? updates]) =>
      (new ConfigRuleEvaluationStatusBuilder()..update(updates))._build();

  _$ConfigRuleEvaluationStatus._(
      {this.configRuleArn,
      this.configRuleId,
      this.configRuleName,
      this.firstActivatedTime,
      this.firstEvaluationStarted,
      this.lastDeactivatedTime,
      this.lastDebugLogDeliveryStatus,
      this.lastDebugLogDeliveryStatusReason,
      this.lastDebugLogDeliveryTime,
      this.lastErrorCode,
      this.lastErrorMessage,
      this.lastFailedEvaluationTime,
      this.lastFailedInvocationTime,
      this.lastSuccessfulEvaluationTime,
      this.lastSuccessfulInvocationTime})
      : super._();

  @override
  ConfigRuleEvaluationStatus rebuild(
          void Function(ConfigRuleEvaluationStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigRuleEvaluationStatusBuilder toBuilder() =>
      new ConfigRuleEvaluationStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigRuleEvaluationStatus &&
        configRuleArn == other.configRuleArn &&
        configRuleId == other.configRuleId &&
        configRuleName == other.configRuleName &&
        firstActivatedTime == other.firstActivatedTime &&
        firstEvaluationStarted == other.firstEvaluationStarted &&
        lastDeactivatedTime == other.lastDeactivatedTime &&
        lastDebugLogDeliveryStatus == other.lastDebugLogDeliveryStatus &&
        lastDebugLogDeliveryStatusReason ==
            other.lastDebugLogDeliveryStatusReason &&
        lastDebugLogDeliveryTime == other.lastDebugLogDeliveryTime &&
        lastErrorCode == other.lastErrorCode &&
        lastErrorMessage == other.lastErrorMessage &&
        lastFailedEvaluationTime == other.lastFailedEvaluationTime &&
        lastFailedInvocationTime == other.lastFailedInvocationTime &&
        lastSuccessfulEvaluationTime == other.lastSuccessfulEvaluationTime &&
        lastSuccessfulInvocationTime == other.lastSuccessfulInvocationTime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                configRuleArn
                                                                    .hashCode),
                                                            configRuleId
                                                                .hashCode),
                                                        configRuleName
                                                            .hashCode),
                                                    firstActivatedTime
                                                        .hashCode),
                                                firstEvaluationStarted
                                                    .hashCode),
                                            lastDeactivatedTime.hashCode),
                                        lastDebugLogDeliveryStatus.hashCode),
                                    lastDebugLogDeliveryStatusReason.hashCode),
                                lastDebugLogDeliveryTime.hashCode),
                            lastErrorCode.hashCode),
                        lastErrorMessage.hashCode),
                    lastFailedEvaluationTime.hashCode),
                lastFailedInvocationTime.hashCode),
            lastSuccessfulEvaluationTime.hashCode),
        lastSuccessfulInvocationTime.hashCode));
  }
}

class ConfigRuleEvaluationStatusBuilder
    implements
        Builder<ConfigRuleEvaluationStatus, ConfigRuleEvaluationStatusBuilder> {
  _$ConfigRuleEvaluationStatus? _$v;

  String? _configRuleArn;
  String? get configRuleArn => _$this._configRuleArn;
  set configRuleArn(String? configRuleArn) =>
      _$this._configRuleArn = configRuleArn;

  String? _configRuleId;
  String? get configRuleId => _$this._configRuleId;
  set configRuleId(String? configRuleId) => _$this._configRuleId = configRuleId;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  DateTime? _firstActivatedTime;
  DateTime? get firstActivatedTime => _$this._firstActivatedTime;
  set firstActivatedTime(DateTime? firstActivatedTime) =>
      _$this._firstActivatedTime = firstActivatedTime;

  bool? _firstEvaluationStarted;
  bool? get firstEvaluationStarted => _$this._firstEvaluationStarted;
  set firstEvaluationStarted(bool? firstEvaluationStarted) =>
      _$this._firstEvaluationStarted = firstEvaluationStarted;

  DateTime? _lastDeactivatedTime;
  DateTime? get lastDeactivatedTime => _$this._lastDeactivatedTime;
  set lastDeactivatedTime(DateTime? lastDeactivatedTime) =>
      _$this._lastDeactivatedTime = lastDeactivatedTime;

  String? _lastDebugLogDeliveryStatus;
  String? get lastDebugLogDeliveryStatus => _$this._lastDebugLogDeliveryStatus;
  set lastDebugLogDeliveryStatus(String? lastDebugLogDeliveryStatus) =>
      _$this._lastDebugLogDeliveryStatus = lastDebugLogDeliveryStatus;

  String? _lastDebugLogDeliveryStatusReason;
  String? get lastDebugLogDeliveryStatusReason =>
      _$this._lastDebugLogDeliveryStatusReason;
  set lastDebugLogDeliveryStatusReason(
          String? lastDebugLogDeliveryStatusReason) =>
      _$this._lastDebugLogDeliveryStatusReason =
          lastDebugLogDeliveryStatusReason;

  DateTime? _lastDebugLogDeliveryTime;
  DateTime? get lastDebugLogDeliveryTime => _$this._lastDebugLogDeliveryTime;
  set lastDebugLogDeliveryTime(DateTime? lastDebugLogDeliveryTime) =>
      _$this._lastDebugLogDeliveryTime = lastDebugLogDeliveryTime;

  String? _lastErrorCode;
  String? get lastErrorCode => _$this._lastErrorCode;
  set lastErrorCode(String? lastErrorCode) =>
      _$this._lastErrorCode = lastErrorCode;

  String? _lastErrorMessage;
  String? get lastErrorMessage => _$this._lastErrorMessage;
  set lastErrorMessage(String? lastErrorMessage) =>
      _$this._lastErrorMessage = lastErrorMessage;

  DateTime? _lastFailedEvaluationTime;
  DateTime? get lastFailedEvaluationTime => _$this._lastFailedEvaluationTime;
  set lastFailedEvaluationTime(DateTime? lastFailedEvaluationTime) =>
      _$this._lastFailedEvaluationTime = lastFailedEvaluationTime;

  DateTime? _lastFailedInvocationTime;
  DateTime? get lastFailedInvocationTime => _$this._lastFailedInvocationTime;
  set lastFailedInvocationTime(DateTime? lastFailedInvocationTime) =>
      _$this._lastFailedInvocationTime = lastFailedInvocationTime;

  DateTime? _lastSuccessfulEvaluationTime;
  DateTime? get lastSuccessfulEvaluationTime =>
      _$this._lastSuccessfulEvaluationTime;
  set lastSuccessfulEvaluationTime(DateTime? lastSuccessfulEvaluationTime) =>
      _$this._lastSuccessfulEvaluationTime = lastSuccessfulEvaluationTime;

  DateTime? _lastSuccessfulInvocationTime;
  DateTime? get lastSuccessfulInvocationTime =>
      _$this._lastSuccessfulInvocationTime;
  set lastSuccessfulInvocationTime(DateTime? lastSuccessfulInvocationTime) =>
      _$this._lastSuccessfulInvocationTime = lastSuccessfulInvocationTime;

  ConfigRuleEvaluationStatusBuilder() {
    ConfigRuleEvaluationStatus._init(this);
  }

  ConfigRuleEvaluationStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleArn = $v.configRuleArn;
      _configRuleId = $v.configRuleId;
      _configRuleName = $v.configRuleName;
      _firstActivatedTime = $v.firstActivatedTime;
      _firstEvaluationStarted = $v.firstEvaluationStarted;
      _lastDeactivatedTime = $v.lastDeactivatedTime;
      _lastDebugLogDeliveryStatus = $v.lastDebugLogDeliveryStatus;
      _lastDebugLogDeliveryStatusReason = $v.lastDebugLogDeliveryStatusReason;
      _lastDebugLogDeliveryTime = $v.lastDebugLogDeliveryTime;
      _lastErrorCode = $v.lastErrorCode;
      _lastErrorMessage = $v.lastErrorMessage;
      _lastFailedEvaluationTime = $v.lastFailedEvaluationTime;
      _lastFailedInvocationTime = $v.lastFailedInvocationTime;
      _lastSuccessfulEvaluationTime = $v.lastSuccessfulEvaluationTime;
      _lastSuccessfulInvocationTime = $v.lastSuccessfulInvocationTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigRuleEvaluationStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigRuleEvaluationStatus;
  }

  @override
  void update(void Function(ConfigRuleEvaluationStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigRuleEvaluationStatus build() => _build();

  _$ConfigRuleEvaluationStatus _build() {
    final _$result = _$v ??
        new _$ConfigRuleEvaluationStatus._(
            configRuleArn: configRuleArn,
            configRuleId: configRuleId,
            configRuleName: configRuleName,
            firstActivatedTime: firstActivatedTime,
            firstEvaluationStarted: firstEvaluationStarted,
            lastDeactivatedTime: lastDeactivatedTime,
            lastDebugLogDeliveryStatus: lastDebugLogDeliveryStatus,
            lastDebugLogDeliveryStatusReason: lastDebugLogDeliveryStatusReason,
            lastDebugLogDeliveryTime: lastDebugLogDeliveryTime,
            lastErrorCode: lastErrorCode,
            lastErrorMessage: lastErrorMessage,
            lastFailedEvaluationTime: lastFailedEvaluationTime,
            lastFailedInvocationTime: lastFailedInvocationTime,
            lastSuccessfulEvaluationTime: lastSuccessfulEvaluationTime,
            lastSuccessfulInvocationTime: lastSuccessfulInvocationTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
