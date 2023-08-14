// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_config_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationConfigRule extends OrganizationConfigRule {
  @override
  final String organizationConfigRuleName;
  @override
  final String organizationConfigRuleArn;
  @override
  final OrganizationManagedRuleMetadata? organizationManagedRuleMetadata;
  @override
  final OrganizationCustomRuleMetadata? organizationCustomRuleMetadata;
  @override
  final _i2.BuiltList<String>? excludedAccounts;
  @override
  final DateTime? lastUpdateTime;
  @override
  final OrganizationCustomPolicyRuleMetadataNoPolicy?
      organizationCustomPolicyRuleMetadata;

  factory _$OrganizationConfigRule(
          [void Function(OrganizationConfigRuleBuilder)? updates]) =>
      (new OrganizationConfigRuleBuilder()..update(updates))._build();

  _$OrganizationConfigRule._(
      {required this.organizationConfigRuleName,
      required this.organizationConfigRuleArn,
      this.organizationManagedRuleMetadata,
      this.organizationCustomRuleMetadata,
      this.excludedAccounts,
      this.lastUpdateTime,
      this.organizationCustomPolicyRuleMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(organizationConfigRuleName,
        r'OrganizationConfigRule', 'organizationConfigRuleName');
    BuiltValueNullFieldError.checkNotNull(organizationConfigRuleArn,
        r'OrganizationConfigRule', 'organizationConfigRuleArn');
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
        organizationConfigRuleName == other.organizationConfigRuleName &&
        organizationConfigRuleArn == other.organizationConfigRuleArn &&
        organizationManagedRuleMetadata ==
            other.organizationManagedRuleMetadata &&
        organizationCustomRuleMetadata ==
            other.organizationCustomRuleMetadata &&
        excludedAccounts == other.excludedAccounts &&
        lastUpdateTime == other.lastUpdateTime &&
        organizationCustomPolicyRuleMetadata ==
            other.organizationCustomPolicyRuleMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, organizationConfigRuleName.hashCode);
    _$hash = $jc(_$hash, organizationConfigRuleArn.hashCode);
    _$hash = $jc(_$hash, organizationManagedRuleMetadata.hashCode);
    _$hash = $jc(_$hash, organizationCustomRuleMetadata.hashCode);
    _$hash = $jc(_$hash, excludedAccounts.hashCode);
    _$hash = $jc(_$hash, lastUpdateTime.hashCode);
    _$hash = $jc(_$hash, organizationCustomPolicyRuleMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OrganizationConfigRuleBuilder
    implements Builder<OrganizationConfigRule, OrganizationConfigRuleBuilder> {
  _$OrganizationConfigRule? _$v;

  String? _organizationConfigRuleName;
  String? get organizationConfigRuleName => _$this._organizationConfigRuleName;
  set organizationConfigRuleName(String? organizationConfigRuleName) =>
      _$this._organizationConfigRuleName = organizationConfigRuleName;

  String? _organizationConfigRuleArn;
  String? get organizationConfigRuleArn => _$this._organizationConfigRuleArn;
  set organizationConfigRuleArn(String? organizationConfigRuleArn) =>
      _$this._organizationConfigRuleArn = organizationConfigRuleArn;

  OrganizationManagedRuleMetadataBuilder? _organizationManagedRuleMetadata;
  OrganizationManagedRuleMetadataBuilder get organizationManagedRuleMetadata =>
      _$this._organizationManagedRuleMetadata ??=
          new OrganizationManagedRuleMetadataBuilder();
  set organizationManagedRuleMetadata(
          OrganizationManagedRuleMetadataBuilder?
              organizationManagedRuleMetadata) =>
      _$this._organizationManagedRuleMetadata = organizationManagedRuleMetadata;

  OrganizationCustomRuleMetadataBuilder? _organizationCustomRuleMetadata;
  OrganizationCustomRuleMetadataBuilder get organizationCustomRuleMetadata =>
      _$this._organizationCustomRuleMetadata ??=
          new OrganizationCustomRuleMetadataBuilder();
  set organizationCustomRuleMetadata(
          OrganizationCustomRuleMetadataBuilder?
              organizationCustomRuleMetadata) =>
      _$this._organizationCustomRuleMetadata = organizationCustomRuleMetadata;

  _i2.ListBuilder<String>? _excludedAccounts;
  _i2.ListBuilder<String> get excludedAccounts =>
      _$this._excludedAccounts ??= new _i2.ListBuilder<String>();
  set excludedAccounts(_i2.ListBuilder<String>? excludedAccounts) =>
      _$this._excludedAccounts = excludedAccounts;

  DateTime? _lastUpdateTime;
  DateTime? get lastUpdateTime => _$this._lastUpdateTime;
  set lastUpdateTime(DateTime? lastUpdateTime) =>
      _$this._lastUpdateTime = lastUpdateTime;

  OrganizationCustomPolicyRuleMetadataNoPolicyBuilder?
      _organizationCustomPolicyRuleMetadata;
  OrganizationCustomPolicyRuleMetadataNoPolicyBuilder
      get organizationCustomPolicyRuleMetadata =>
          _$this._organizationCustomPolicyRuleMetadata ??=
              new OrganizationCustomPolicyRuleMetadataNoPolicyBuilder();
  set organizationCustomPolicyRuleMetadata(
          OrganizationCustomPolicyRuleMetadataNoPolicyBuilder?
              organizationCustomPolicyRuleMetadata) =>
      _$this._organizationCustomPolicyRuleMetadata =
          organizationCustomPolicyRuleMetadata;

  OrganizationConfigRuleBuilder();

  OrganizationConfigRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organizationConfigRuleName = $v.organizationConfigRuleName;
      _organizationConfigRuleArn = $v.organizationConfigRuleArn;
      _organizationManagedRuleMetadata =
          $v.organizationManagedRuleMetadata?.toBuilder();
      _organizationCustomRuleMetadata =
          $v.organizationCustomRuleMetadata?.toBuilder();
      _excludedAccounts = $v.excludedAccounts?.toBuilder();
      _lastUpdateTime = $v.lastUpdateTime;
      _organizationCustomPolicyRuleMetadata =
          $v.organizationCustomPolicyRuleMetadata?.toBuilder();
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
              organizationConfigRuleName: BuiltValueNullFieldError.checkNotNull(
                  organizationConfigRuleName,
                  r'OrganizationConfigRule',
                  'organizationConfigRuleName'),
              organizationConfigRuleArn: BuiltValueNullFieldError.checkNotNull(
                  organizationConfigRuleArn,
                  r'OrganizationConfigRule',
                  'organizationConfigRuleArn'),
              organizationManagedRuleMetadata:
                  _organizationManagedRuleMetadata?.build(),
              organizationCustomRuleMetadata:
                  _organizationCustomRuleMetadata?.build(),
              excludedAccounts: _excludedAccounts?.build(),
              lastUpdateTime: lastUpdateTime,
              organizationCustomPolicyRuleMetadata:
                  _organizationCustomPolicyRuleMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizationManagedRuleMetadata';
        _organizationManagedRuleMetadata?.build();
        _$failedField = 'organizationCustomRuleMetadata';
        _organizationCustomRuleMetadata?.build();
        _$failedField = 'excludedAccounts';
        _excludedAccounts?.build();

        _$failedField = 'organizationCustomPolicyRuleMetadata';
        _organizationCustomPolicyRuleMetadata?.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
