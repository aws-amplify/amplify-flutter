// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.organization_config_rule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationConfigRule extends OrganizationConfigRule {
  @override
  final _i5.BuiltList<String>? excludedAccounts;
  @override
  final DateTime? lastUpdateTime;
  @override
  final String organizationConfigRuleArn;
  @override
  final String organizationConfigRuleName;
  @override
  final _i2.OrganizationCustomPolicyRuleMetadataNoPolicy?
      organizationCustomPolicyRuleMetadata;
  @override
  final _i3.OrganizationCustomRuleMetadata? organizationCustomRuleMetadata;
  @override
  final _i4.OrganizationManagedRuleMetadata? organizationManagedRuleMetadata;

  factory _$OrganizationConfigRule(
          [void Function(OrganizationConfigRuleBuilder)? updates]) =>
      (new OrganizationConfigRuleBuilder()..update(updates))._build();

  _$OrganizationConfigRule._(
      {this.excludedAccounts,
      this.lastUpdateTime,
      required this.organizationConfigRuleArn,
      required this.organizationConfigRuleName,
      this.organizationCustomPolicyRuleMetadata,
      this.organizationCustomRuleMetadata,
      this.organizationManagedRuleMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(organizationConfigRuleArn,
        r'OrganizationConfigRule', 'organizationConfigRuleArn');
    BuiltValueNullFieldError.checkNotNull(organizationConfigRuleName,
        r'OrganizationConfigRule', 'organizationConfigRuleName');
  }

  @override
  OrganizationConfigRule rebuild(
          void Function(OrganizationConfigRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationConfigRuleBuilder toBuilder() =>
      new OrganizationConfigRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationConfigRule &&
        excludedAccounts == other.excludedAccounts &&
        lastUpdateTime == other.lastUpdateTime &&
        organizationConfigRuleArn == other.organizationConfigRuleArn &&
        organizationConfigRuleName == other.organizationConfigRuleName &&
        organizationCustomPolicyRuleMetadata ==
            other.organizationCustomPolicyRuleMetadata &&
        organizationCustomRuleMetadata ==
            other.organizationCustomRuleMetadata &&
        organizationManagedRuleMetadata ==
            other.organizationManagedRuleMetadata;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, excludedAccounts.hashCode),
                            lastUpdateTime.hashCode),
                        organizationConfigRuleArn.hashCode),
                    organizationConfigRuleName.hashCode),
                organizationCustomPolicyRuleMetadata.hashCode),
            organizationCustomRuleMetadata.hashCode),
        organizationManagedRuleMetadata.hashCode));
  }
}

class OrganizationConfigRuleBuilder
    implements Builder<OrganizationConfigRule, OrganizationConfigRuleBuilder> {
  _$OrganizationConfigRule? _$v;

  _i5.ListBuilder<String>? _excludedAccounts;
  _i5.ListBuilder<String> get excludedAccounts =>
      _$this._excludedAccounts ??= new _i5.ListBuilder<String>();
  set excludedAccounts(_i5.ListBuilder<String>? excludedAccounts) =>
      _$this._excludedAccounts = excludedAccounts;

  DateTime? _lastUpdateTime;
  DateTime? get lastUpdateTime => _$this._lastUpdateTime;
  set lastUpdateTime(DateTime? lastUpdateTime) =>
      _$this._lastUpdateTime = lastUpdateTime;

  String? _organizationConfigRuleArn;
  String? get organizationConfigRuleArn => _$this._organizationConfigRuleArn;
  set organizationConfigRuleArn(String? organizationConfigRuleArn) =>
      _$this._organizationConfigRuleArn = organizationConfigRuleArn;

  String? _organizationConfigRuleName;
  String? get organizationConfigRuleName => _$this._organizationConfigRuleName;
  set organizationConfigRuleName(String? organizationConfigRuleName) =>
      _$this._organizationConfigRuleName = organizationConfigRuleName;

  _i2.OrganizationCustomPolicyRuleMetadataNoPolicyBuilder?
      _organizationCustomPolicyRuleMetadata;
  _i2.OrganizationCustomPolicyRuleMetadataNoPolicyBuilder
      get organizationCustomPolicyRuleMetadata =>
          _$this._organizationCustomPolicyRuleMetadata ??=
              new _i2.OrganizationCustomPolicyRuleMetadataNoPolicyBuilder();
  set organizationCustomPolicyRuleMetadata(
          _i2.OrganizationCustomPolicyRuleMetadataNoPolicyBuilder?
              organizationCustomPolicyRuleMetadata) =>
      _$this._organizationCustomPolicyRuleMetadata =
          organizationCustomPolicyRuleMetadata;

  _i3.OrganizationCustomRuleMetadataBuilder? _organizationCustomRuleMetadata;
  _i3.OrganizationCustomRuleMetadataBuilder
      get organizationCustomRuleMetadata =>
          _$this._organizationCustomRuleMetadata ??=
              new _i3.OrganizationCustomRuleMetadataBuilder();
  set organizationCustomRuleMetadata(
          _i3.OrganizationCustomRuleMetadataBuilder?
              organizationCustomRuleMetadata) =>
      _$this._organizationCustomRuleMetadata = organizationCustomRuleMetadata;

  _i4.OrganizationManagedRuleMetadataBuilder? _organizationManagedRuleMetadata;
  _i4.OrganizationManagedRuleMetadataBuilder
      get organizationManagedRuleMetadata =>
          _$this._organizationManagedRuleMetadata ??=
              new _i4.OrganizationManagedRuleMetadataBuilder();
  set organizationManagedRuleMetadata(
          _i4.OrganizationManagedRuleMetadataBuilder?
              organizationManagedRuleMetadata) =>
      _$this._organizationManagedRuleMetadata = organizationManagedRuleMetadata;

  OrganizationConfigRuleBuilder() {
    OrganizationConfigRule._init(this);
  }

  OrganizationConfigRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _excludedAccounts = $v.excludedAccounts?.toBuilder();
      _lastUpdateTime = $v.lastUpdateTime;
      _organizationConfigRuleArn = $v.organizationConfigRuleArn;
      _organizationConfigRuleName = $v.organizationConfigRuleName;
      _organizationCustomPolicyRuleMetadata =
          $v.organizationCustomPolicyRuleMetadata?.toBuilder();
      _organizationCustomRuleMetadata =
          $v.organizationCustomRuleMetadata?.toBuilder();
      _organizationManagedRuleMetadata =
          $v.organizationManagedRuleMetadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationConfigRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationConfigRule;
  }

  @override
  void update(void Function(OrganizationConfigRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationConfigRule build() => _build();

  _$OrganizationConfigRule _build() {
    _$OrganizationConfigRule _$result;
    try {
      _$result = _$v ??
          new _$OrganizationConfigRule._(
              excludedAccounts: _excludedAccounts?.build(),
              lastUpdateTime: lastUpdateTime,
              organizationConfigRuleArn: BuiltValueNullFieldError.checkNotNull(
                  organizationConfigRuleArn,
                  r'OrganizationConfigRule',
                  'organizationConfigRuleArn'),
              organizationConfigRuleName: BuiltValueNullFieldError.checkNotNull(
                  organizationConfigRuleName,
                  r'OrganizationConfigRule',
                  'organizationConfigRuleName'),
              organizationCustomPolicyRuleMetadata:
                  _organizationCustomPolicyRuleMetadata?.build(),
              organizationCustomRuleMetadata:
                  _organizationCustomRuleMetadata?.build(),
              organizationManagedRuleMetadata:
                  _organizationManagedRuleMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'excludedAccounts';
        _excludedAccounts?.build();

        _$failedField = 'organizationCustomPolicyRuleMetadata';
        _organizationCustomPolicyRuleMetadata?.build();
        _$failedField = 'organizationCustomRuleMetadata';
        _organizationCustomRuleMetadata?.build();
        _$failedField = 'organizationManagedRuleMetadata';
        _organizationManagedRuleMetadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrganizationConfigRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
