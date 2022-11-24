// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.organization_config_rule_status;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationConfigRuleStatus extends OrganizationConfigRuleStatus {
  @override
  final String? errorCode;
  @override
  final String? errorMessage;
  @override
  final DateTime? lastUpdateTime;
  @override
  final String organizationConfigRuleName;
  @override
  final _i2.OrganizationRuleStatus organizationRuleStatus;

  factory _$OrganizationConfigRuleStatus(
          [void Function(OrganizationConfigRuleStatusBuilder)? updates]) =>
      (new OrganizationConfigRuleStatusBuilder()..update(updates))._build();

  _$OrganizationConfigRuleStatus._(
      {this.errorCode,
      this.errorMessage,
      this.lastUpdateTime,
      required this.organizationConfigRuleName,
      required this.organizationRuleStatus})
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
        errorCode == other.errorCode &&
        errorMessage == other.errorMessage &&
        lastUpdateTime == other.lastUpdateTime &&
        organizationConfigRuleName == other.organizationConfigRuleName &&
        organizationRuleStatus == other.organizationRuleStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, errorCode.hashCode), errorMessage.hashCode),
                lastUpdateTime.hashCode),
            organizationConfigRuleName.hashCode),
        organizationRuleStatus.hashCode));
  }
}

class OrganizationConfigRuleStatusBuilder
    implements
        Builder<OrganizationConfigRuleStatus,
            OrganizationConfigRuleStatusBuilder> {
  _$OrganizationConfigRuleStatus? _$v;

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

  String? _organizationConfigRuleName;
  String? get organizationConfigRuleName => _$this._organizationConfigRuleName;
  set organizationConfigRuleName(String? organizationConfigRuleName) =>
      _$this._organizationConfigRuleName = organizationConfigRuleName;

  _i2.OrganizationRuleStatus? _organizationRuleStatus;
  _i2.OrganizationRuleStatus? get organizationRuleStatus =>
      _$this._organizationRuleStatus;
  set organizationRuleStatus(
          _i2.OrganizationRuleStatus? organizationRuleStatus) =>
      _$this._organizationRuleStatus = organizationRuleStatus;

  OrganizationConfigRuleStatusBuilder() {
    OrganizationConfigRuleStatus._init(this);
  }

  OrganizationConfigRuleStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorCode = $v.errorCode;
      _errorMessage = $v.errorMessage;
      _lastUpdateTime = $v.lastUpdateTime;
      _organizationConfigRuleName = $v.organizationConfigRuleName;
      _organizationRuleStatus = $v.organizationRuleStatus;
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
            errorCode: errorCode,
            errorMessage: errorMessage,
            lastUpdateTime: lastUpdateTime,
            organizationConfigRuleName: BuiltValueNullFieldError.checkNotNull(
                organizationConfigRuleName,
                r'OrganizationConfigRuleStatus',
                'organizationConfigRuleName'),
            organizationRuleStatus: BuiltValueNullFieldError.checkNotNull(
                organizationRuleStatus,
                r'OrganizationConfigRuleStatus',
                'organizationRuleStatus'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
