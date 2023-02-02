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
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleArn.hashCode);
    _$hash = $jc(_$hash, configRuleId.hashCode);
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, firstActivatedTime.hashCode);
    _$hash = $jc(_$hash, firstEvaluationStarted.hashCode);
    _$hash = $jc(_$hash, lastDeactivatedTime.hashCode);
    _$hash = $jc(_$hash, lastDebugLogDeliveryStatus.hashCode);
    _$hash = $jc(_$hash, lastDebugLogDeliveryStatusReason.hashCode);
    _$hash = $jc(_$hash, lastDebugLogDeliveryTime.hashCode);
    _$hash = $jc(_$hash, lastErrorCode.hashCode);
    _$hash = $jc(_$hash, lastErrorMessage.hashCode);
    _$hash = $jc(_$hash, lastFailedEvaluationTime.hashCode);
    _$hash = $jc(_$hash, lastFailedInvocationTime.hashCode);
    _$hash = $jc(_$hash, lastSuccessfulEvaluationTime.hashCode);
    _$hash = $jc(_$hash, lastSuccessfulInvocationTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
