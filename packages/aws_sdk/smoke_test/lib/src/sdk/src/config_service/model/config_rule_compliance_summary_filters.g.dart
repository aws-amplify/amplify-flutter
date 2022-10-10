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
    return $jf($jc($jc(0, accountId.hashCode), awsRegion.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
