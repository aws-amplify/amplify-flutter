// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_config_rule_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationConfigRuleStatus extends OrganizationConfigRuleStatus {
  @override
  final String organizationConfigRuleName;
  @override
  final OrganizationRuleStatus organizationRuleStatus;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;
  @override
  final DateTime? lastUpdateTime;

  factory _$OrganizationConfigRuleStatus(
          [void Function(OrganizationConfigRuleStatusBuilder)? updates]) =>
      (new OrganizationConfigRuleStatusBuilder()..update(updates))._build();

  _$OrganizationConfigRuleStatus._(
      {required this.organizationConfigRuleName,
      required this.organizationRuleStatus,
      this.errorCode,
      this.errorMessage,
      this.lastUpdateTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(organizationConfigRuleName,
        r'OrganizationConfigRuleStatus', 'organizationConfigRuleName');
    BuiltValueNullFieldError.checkNotNull(organizationRuleStatus,
        r'OrganizationConfigRuleStatus', 'organizationRuleStatus');
  }

  @override
  OrganizationConfigRuleStatus rebuild(
          void Function(OrganizationConfigRuleStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationConfigRuleStatusBuilder toBuilder() =>
      new OrganizationConfigRuleStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationConfigRuleStatus &&
        organizationConfigRuleName == other.organizationConfigRuleName &&
        organizationRuleStatus == other.organizationRuleStatus &&
        errorCode == other.errorCode &&
        errorMessage == other.errorMessage &&
        lastUpdateTime == other.lastUpdateTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, organizationConfigRuleName.hashCode);
    _$hash = $jc(_$hash, organizationRuleStatus.hashCode);
    _$hash = $jc(_$hash, errorCode.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, lastUpdateTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OrganizationConfigRuleStatusBuilder
    implements
        Builder<OrganizationConfigRuleStatus,
            OrganizationConfigRuleStatusBuilder> {
  _$OrganizationConfigRuleStatus? _$v;

  String? _organizationConfigRuleName;
  String? get organizationConfigRuleName => _$this._organizationConfigRuleName;
  set organizationConfigRuleName(String? organizationConfigRuleName) =>
      _$this._organizationConfigRuleName = organizationConfigRuleName;

  OrganizationRuleStatus? _organizationRuleStatus;
  OrganizationRuleStatus? get organizationRuleStatus =>
      _$this._organizationRuleStatus;
  set organizationRuleStatus(OrganizationRuleStatus? organizationRuleStatus) =>
      _$this._organizationRuleStatus = organizationRuleStatus;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  DateTime? _lastUpdateTime;
  DateTime? get lastUpdateTime => _$this._lastUpdateTime;
  set lastUpdateTime(DateTime? lastUpdateTime) =>
      _$this._lastUpdateTime = lastUpdateTime;

  OrganizationConfigRuleStatusBuilder();

  OrganizationConfigRuleStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organizationConfigRuleName = $v.organizationConfigRuleName;
      _organizationRuleStatus = $v.organizationRuleStatus;
      _errorCode = $v.errorCode;
      _errorMessage = $v.errorMessage;
      _lastUpdateTime = $v.lastUpdateTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationConfigRuleStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationConfigRuleStatus;
  }

  @override
  void update(void Function(OrganizationConfigRuleStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationConfigRuleStatus build() => _build();

  _$OrganizationConfigRuleStatus _build() {
    final _$result = _$v ??
        new _$OrganizationConfigRuleStatus._(
            organizationConfigRuleName: BuiltValueNullFieldError.checkNotNull(
                organizationConfigRuleName,
                r'OrganizationConfigRuleStatus',
                'organizationConfigRuleName'),
            organizationRuleStatus: BuiltValueNullFieldError.checkNotNull(
                organizationRuleStatus,
                r'OrganizationConfigRuleStatus',
                'organizationRuleStatus'),
            errorCode: errorCode,
            errorMessage: errorMessage,
            lastUpdateTime: lastUpdateTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint