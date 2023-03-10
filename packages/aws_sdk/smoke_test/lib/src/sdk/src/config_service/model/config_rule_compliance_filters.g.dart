// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.config_rule_compliance_filters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigRuleComplianceFilters extends ConfigRuleComplianceFilters {
  @override
  final String? accountId;
  @override
  final String? awsRegion;
  @override
  final _i2.ComplianceType? complianceType;
  @override
  final String? configRuleName;

  factory _$ConfigRuleComplianceFilters(
          [void Function(ConfigRuleComplianceFiltersBuilder)? updates]) =>
      (new ConfigRuleComplianceFiltersBuilder()..update(updates))._build();

  _$ConfigRuleComplianceFilters._(
      {this.accountId,
      this.awsRegion,
      this.complianceType,
      this.configRuleName})
      : super._();

  @override
  ConfigRuleComplianceFilters rebuild(
          void Function(ConfigRuleComplianceFiltersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigRuleComplianceFiltersBuilder toBuilder() =>
      new ConfigRuleComplianceFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigRuleComplianceFilters &&
        accountId == other.accountId &&
        awsRegion == other.awsRegion &&
        complianceType == other.complianceType &&
        configRuleName == other.configRuleName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, awsRegion.hashCode);
    _$hash = $jc(_$hash, complianceType.hashCode);
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfigRuleComplianceFiltersBuilder
    implements
        Builder<ConfigRuleComplianceFilters,
            ConfigRuleComplianceFiltersBuilder> {
  _$ConfigRuleComplianceFilters? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

  _i2.ComplianceType? _complianceType;
  _i2.ComplianceType? get complianceType => _$this._complianceType;
  set complianceType(_i2.ComplianceType? complianceType) =>
      _$this._complianceType = complianceType;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  ConfigRuleComplianceFiltersBuilder() {
    ConfigRuleComplianceFilters._init(this);
  }

  ConfigRuleComplianceFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _awsRegion = $v.awsRegion;
      _complianceType = $v.complianceType;
      _configRuleName = $v.configRuleName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigRuleComplianceFilters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigRuleComplianceFilters;
  }

  @override
  void update(void Function(ConfigRuleComplianceFiltersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigRuleComplianceFilters build() => _build();

  _$ConfigRuleComplianceFilters _build() {
    final _$result = _$v ??
        new _$ConfigRuleComplianceFilters._(
            accountId: accountId,
            awsRegion: awsRegion,
            complianceType: complianceType,
            configRuleName: configRuleName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
