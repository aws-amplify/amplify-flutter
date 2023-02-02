// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.config_rule_compliance_summary_filters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigRuleComplianceSummaryFilters
    extends ConfigRuleComplianceSummaryFilters {
  @override
  final String? accountId;
  @override
  final String? awsRegion;

  factory _$ConfigRuleComplianceSummaryFilters(
          [void Function(ConfigRuleComplianceSummaryFiltersBuilder)?
              updates]) =>
      (new ConfigRuleComplianceSummaryFiltersBuilder()..update(updates))
          ._build();

  _$ConfigRuleComplianceSummaryFilters._({this.accountId, this.awsRegion})
      : super._();

  @override
  ConfigRuleComplianceSummaryFilters rebuild(
          void Function(ConfigRuleComplianceSummaryFiltersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigRuleComplianceSummaryFiltersBuilder toBuilder() =>
      new ConfigRuleComplianceSummaryFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigRuleComplianceSummaryFilters &&
        accountId == other.accountId &&
        awsRegion == other.awsRegion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, awsRegion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfigRuleComplianceSummaryFiltersBuilder
    implements
        Builder<ConfigRuleComplianceSummaryFilters,
            ConfigRuleComplianceSummaryFiltersBuilder> {
  _$ConfigRuleComplianceSummaryFilters? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

  ConfigRuleComplianceSummaryFiltersBuilder() {
    ConfigRuleComplianceSummaryFilters._init(this);
  }

  ConfigRuleComplianceSummaryFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _awsRegion = $v.awsRegion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigRuleComplianceSummaryFilters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigRuleComplianceSummaryFilters;
  }

  @override
  void update(
      void Function(ConfigRuleComplianceSummaryFiltersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigRuleComplianceSummaryFilters build() => _build();

  _$ConfigRuleComplianceSummaryFilters _build() {
    final _$result = _$v ??
        new _$ConfigRuleComplianceSummaryFilters._(
            accountId: accountId, awsRegion: awsRegion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
