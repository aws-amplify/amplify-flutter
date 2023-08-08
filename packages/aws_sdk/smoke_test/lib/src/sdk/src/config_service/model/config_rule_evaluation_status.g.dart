// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_rule_evaluation_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigRuleEvaluationStatus extends ConfigRuleEvaluationStatus {
  @override
  final String? configRuleName;
  @override
  final String? configRuleArn;
  @override
  final String? configRuleId;
  @override
  final DateTime? lastSuccessfulInvocationTime;
  @override
  final DateTime? lastFailedInvocationTime;
  @override
  final DateTime? lastSuccessfulEvaluationTime;
  @override
  final DateTime? lastFailedEvaluationTime;
  @override
  final DateTime? firstActivatedTime;
  @override
  final DateTime? lastDeactivatedTime;
  @override
  final String? lastErrorCode;
  @override
  final String? lastErrorMessage;
  @override
  final bool firstEvaluationStarted;
  @override
  final String? lastDebugLogDeliveryStatus;
  @override
  final String? lastDebugLogDeliveryStatusReason;
  @override
  final DateTime? lastDebugLogDeliveryTime;

  factory _$ConfigRuleEvaluationStatus(
          [void Function(ConfigRuleEvaluationStatusBuilder)? updates]) =>
      (new ConfigRuleEvaluationStatusBuilder()..update(updates))._build();

  _$ConfigRuleEvaluationStatus._(
      {this.configRuleName,
      this.configRuleArn,
      this.configRuleId,
      this.lastSuccessfulInvocationTime,
      this.lastFailedInvocationTime,
      this.lastSuccessfulEvaluationTime,
      this.lastFailedEvaluationTime,
      this.firstActivatedTime,
      this.lastDeactivatedTime,
      this.lastErrorCode,
      this.lastErrorMessage,
      required this.firstEvaluationStarted,
      this.lastDebugLogDeliveryStatus,
      this.lastDebugLogDeliveryStatusReason,
      this.lastDebugLogDeliveryTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(firstEvaluationStarted,
        r'ConfigRuleEvaluationStatus', 'firstEvaluationStarted');
  }

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
        configRuleName == other.configRuleName &&
        configRuleArn == other.configRuleArn &&
        configRuleId == other.configRuleId &&
        lastSuccessfulInvocationTime == other.lastSuccessfulInvocationTime &&
        lastFailedInvocationTime == other.lastFailedInvocationTime &&
        lastSuccessfulEvaluationTime == other.lastSuccessfulEvaluationTime &&
        lastFailedEvaluationTime == other.lastFailedEvaluationTime &&
        firstActivatedTime == other.firstActivatedTime &&
        lastDeactivatedTime == other.lastDeactivatedTime &&
        lastErrorCode == other.lastErrorCode &&
        lastErrorMessage == other.lastErrorMessage &&
        firstEvaluationStarted == other.firstEvaluationStarted &&
        lastDebugLogDeliveryStatus == other.lastDebugLogDeliveryStatus &&
        lastDebugLogDeliveryStatusReason ==
            other.lastDebugLogDeliveryStatusReason &&
        lastDebugLogDeliveryTime == other.lastDebugLogDeliveryTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, configRuleArn.hashCode);
    _$hash = $jc(_$hash, configRuleId.hashCode);
    _$hash = $jc(_$hash, lastSuccessfulInvocationTime.hashCode);
    _$hash = $jc(_$hash, lastFailedInvocationTime.hashCode);
    _$hash = $jc(_$hash, lastSuccessfulEvaluationTime.hashCode);
    _$hash = $jc(_$hash, lastFailedEvaluationTime.hashCode);
    _$hash = $jc(_$hash, firstActivatedTime.hashCode);
    _$hash = $jc(_$hash, lastDeactivatedTime.hashCode);
    _$hash = $jc(_$hash, lastErrorCode.hashCode);
    _$hash = $jc(_$hash, lastErrorMessage.hashCode);
    _$hash = $jc(_$hash, firstEvaluationStarted.hashCode);
    _$hash = $jc(_$hash, lastDebugLogDeliveryStatus.hashCode);
    _$hash = $jc(_$hash, lastDebugLogDeliveryStatusReason.hashCode);
    _$hash = $jc(_$hash, lastDebugLogDeliveryTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfigRuleEvaluationStatusBuilder
    implements
        Builder<ConfigRuleEvaluationStatus, ConfigRuleEvaluationStatusBuilder> {
  _$ConfigRuleEvaluationStatus? _$v;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  String? _configRuleArn;
  String? get configRuleArn => _$this._configRuleArn;
  set configRuleArn(String? configRuleArn) =>
      _$this._configRuleArn = configRuleArn;

  String? _configRuleId;
  String? get configRuleId => _$this._configRuleId;
  set configRuleId(String? configRuleId) => _$this._configRuleId = configRuleId;

  DateTime? _lastSuccessfulInvocationTime;
  DateTime? get lastSuccessfulInvocationTime =>
      _$this._lastSuccessfulInvocationTime;
  set lastSuccessfulInvocationTime(DateTime? lastSuccessfulInvocationTime) =>
      _$this._lastSuccessfulInvocationTime = lastSuccessfulInvocationTime;

  DateTime? _lastFailedInvocationTime;
  DateTime? get lastFailedInvocationTime => _$this._lastFailedInvocationTime;
  set lastFailedInvocationTime(DateTime? lastFailedInvocationTime) =>
      _$this._lastFailedInvocationTime = lastFailedInvocationTime;

  DateTime? _lastSuccessfulEvaluationTime;
  DateTime? get lastSuccessfulEvaluationTime =>
      _$this._lastSuccessfulEvaluationTime;
  set lastSuccessfulEvaluationTime(DateTime? lastSuccessfulEvaluationTime) =>
      _$this._lastSuccessfulEvaluationTime = lastSuccessfulEvaluationTime;

  DateTime? _lastFailedEvaluationTime;
  DateTime? get lastFailedEvaluationTime => _$this._lastFailedEvaluationTime;
  set lastFailedEvaluationTime(DateTime? lastFailedEvaluationTime) =>
      _$this._lastFailedEvaluationTime = lastFailedEvaluationTime;

  DateTime? _firstActivatedTime;
  DateTime? get firstActivatedTime => _$this._firstActivatedTime;
  set firstActivatedTime(DateTime? firstActivatedTime) =>
      _$this._firstActivatedTime = firstActivatedTime;

  DateTime? _lastDeactivatedTime;
  DateTime? get lastDeactivatedTime => _$this._lastDeactivatedTime;
  set lastDeactivatedTime(DateTime? lastDeactivatedTime) =>
      _$this._lastDeactivatedTime = lastDeactivatedTime;

  String? _lastErrorCode;
  String? get lastErrorCode => _$this._lastErrorCode;
  set lastErrorCode(String? lastErrorCode) =>
      _$this._lastErrorCode = lastErrorCode;

  String? _lastErrorMessage;
  String? get lastErrorMessage => _$this._lastErrorMessage;
  set lastErrorMessage(String? lastErrorMessage) =>
      _$this._lastErrorMessage = lastErrorMessage;

  bool? _firstEvaluationStarted;
  bool? get firstEvaluationStarted => _$this._firstEvaluationStarted;
  set firstEvaluationStarted(bool? firstEvaluationStarted) =>
      _$this._firstEvaluationStarted = firstEvaluationStarted;

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

  ConfigRuleEvaluationStatusBuilder() {
    ConfigRuleEvaluationStatus._init(this);
  }

  ConfigRuleEvaluationStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRuleName = $v.configRuleName;
      _configRuleArn = $v.configRuleArn;
      _configRuleId = $v.configRuleId;
      _lastSuccessfulInvocationTime = $v.lastSuccessfulInvocationTime;
      _lastFailedInvocationTime = $v.lastFailedInvocationTime;
      _lastSuccessfulEvaluationTime = $v.lastSuccessfulEvaluationTime;
      _lastFailedEvaluationTime = $v.lastFailedEvaluationTime;
      _firstActivatedTime = $v.firstActivatedTime;
      _lastDeactivatedTime = $v.lastDeactivatedTime;
      _lastErrorCode = $v.lastErrorCode;
      _lastErrorMessage = $v.lastErrorMessage;
      _firstEvaluationStarted = $v.firstEvaluationStarted;
      _lastDebugLogDeliveryStatus = $v.lastDebugLogDeliveryStatus;
      _lastDebugLogDeliveryStatusReason = $v.lastDebugLogDeliveryStatusReason;
      _lastDebugLogDeliveryTime = $v.lastDebugLogDeliveryTime;
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
            configRuleName: configRuleName,
            configRuleArn: configRuleArn,
            configRuleId: configRuleId,
            lastSuccessfulInvocationTime: lastSuccessfulInvocationTime,
            lastFailedInvocationTime: lastFailedInvocationTime,
            lastSuccessfulEvaluationTime: lastSuccessfulEvaluationTime,
            lastFailedEvaluationTime: lastFailedEvaluationTime,
            firstActivatedTime: firstActivatedTime,
            lastDeactivatedTime: lastDeactivatedTime,
            lastErrorCode: lastErrorCode,
            lastErrorMessage: lastErrorMessage,
            firstEvaluationStarted: BuiltValueNullFieldError.checkNotNull(
                firstEvaluationStarted,
                r'ConfigRuleEvaluationStatus',
                'firstEvaluationStarted'),
            lastDebugLogDeliveryStatus: lastDebugLogDeliveryStatus,
            lastDebugLogDeliveryStatusReason: lastDebugLogDeliveryStatusReason,
            lastDebugLogDeliveryTime: lastDebugLogDeliveryTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
