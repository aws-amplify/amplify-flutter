// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.organization_custom_policy_rule_metadata_no_policy;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationCustomPolicyRuleMetadataNoPolicy
    extends OrganizationCustomPolicyRuleMetadataNoPolicy {
  @override
  final String? description;
  @override
  final _i4.BuiltList<_i2.OrganizationConfigRuleTriggerTypeNoSn>?
      organizationConfigRuleTriggerTypes;
  @override
  final String? inputParameters;
  @override
  final _i3.MaximumExecutionFrequency? maximumExecutionFrequency;
  @override
  final _i4.BuiltList<String>? resourceTypesScope;
  @override
  final String? resourceIdScope;
  @override
  final String? tagKeyScope;
  @override
  final String? tagValueScope;
  @override
  final String? policyRuntime;
  @override
  final _i4.BuiltList<String>? debugLogDeliveryAccounts;

  factory _$OrganizationCustomPolicyRuleMetadataNoPolicy(
          [void Function(OrganizationCustomPolicyRuleMetadataNoPolicyBuilder)?
              updates]) =>
      (new OrganizationCustomPolicyRuleMetadataNoPolicyBuilder()
            ..update(updates))
          ._build();

  _$OrganizationCustomPolicyRuleMetadataNoPolicy._(
      {this.description,
      this.organizationConfigRuleTriggerTypes,
      this.inputParameters,
      this.maximumExecutionFrequency,
      this.resourceTypesScope,
      this.resourceIdScope,
      this.tagKeyScope,
      this.tagValueScope,
      this.policyRuntime,
      this.debugLogDeliveryAccounts})
      : super._();

  @override
  OrganizationCustomPolicyRuleMetadataNoPolicy rebuild(
          void Function(OrganizationCustomPolicyRuleMetadataNoPolicyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationCustomPolicyRuleMetadataNoPolicyBuilder toBuilder() =>
      new OrganizationCustomPolicyRuleMetadataNoPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationCustomPolicyRuleMetadataNoPolicy &&
        description == other.description &&
        organizationConfigRuleTriggerTypes ==
            other.organizationConfigRuleTriggerTypes &&
        inputParameters == other.inputParameters &&
        maximumExecutionFrequency == other.maximumExecutionFrequency &&
        resourceTypesScope == other.resourceTypesScope &&
        resourceIdScope == other.resourceIdScope &&
        tagKeyScope == other.tagKeyScope &&
        tagValueScope == other.tagValueScope &&
        policyRuntime == other.policyRuntime &&
        debugLogDeliveryAccounts == other.debugLogDeliveryAccounts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, organizationConfigRuleTriggerTypes.hashCode);
    _$hash = $jc(_$hash, inputParameters.hashCode);
    _$hash = $jc(_$hash, maximumExecutionFrequency.hashCode);
    _$hash = $jc(_$hash, resourceTypesScope.hashCode);
    _$hash = $jc(_$hash, resourceIdScope.hashCode);
    _$hash = $jc(_$hash, tagKeyScope.hashCode);
    _$hash = $jc(_$hash, tagValueScope.hashCode);
    _$hash = $jc(_$hash, policyRuntime.hashCode);
    _$hash = $jc(_$hash, debugLogDeliveryAccounts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OrganizationCustomPolicyRuleMetadataNoPolicyBuilder
    implements
        Builder<OrganizationCustomPolicyRuleMetadataNoPolicy,
            OrganizationCustomPolicyRuleMetadataNoPolicyBuilder> {
  _$OrganizationCustomPolicyRuleMetadataNoPolicy? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i4.ListBuilder<_i2.OrganizationConfigRuleTriggerTypeNoSn>?
      _organizationConfigRuleTriggerTypes;
  _i4.ListBuilder<_i2.OrganizationConfigRuleTriggerTypeNoSn>
      get organizationConfigRuleTriggerTypes =>
          _$this._organizationConfigRuleTriggerTypes ??=
              new _i4.ListBuilder<_i2.OrganizationConfigRuleTriggerTypeNoSn>();
  set organizationConfigRuleTriggerTypes(
          _i4.ListBuilder<_i2.OrganizationConfigRuleTriggerTypeNoSn>?
              organizationConfigRuleTriggerTypes) =>
      _$this._organizationConfigRuleTriggerTypes =
          organizationConfigRuleTriggerTypes;

  String? _inputParameters;
  String? get inputParameters => _$this._inputParameters;
  set inputParameters(String? inputParameters) =>
      _$this._inputParameters = inputParameters;

  _i3.MaximumExecutionFrequency? _maximumExecutionFrequency;
  _i3.MaximumExecutionFrequency? get maximumExecutionFrequency =>
      _$this._maximumExecutionFrequency;
  set maximumExecutionFrequency(
          _i3.MaximumExecutionFrequency? maximumExecutionFrequency) =>
      _$this._maximumExecutionFrequency = maximumExecutionFrequency;

  _i4.ListBuilder<String>? _resourceTypesScope;
  _i4.ListBuilder<String> get resourceTypesScope =>
      _$this._resourceTypesScope ??= new _i4.ListBuilder<String>();
  set resourceTypesScope(_i4.ListBuilder<String>? resourceTypesScope) =>
      _$this._resourceTypesScope = resourceTypesScope;

  String? _resourceIdScope;
  String? get resourceIdScope => _$this._resourceIdScope;
  set resourceIdScope(String? resourceIdScope) =>
      _$this._resourceIdScope = resourceIdScope;

  String? _tagKeyScope;
  String? get tagKeyScope => _$this._tagKeyScope;
  set tagKeyScope(String? tagKeyScope) => _$this._tagKeyScope = tagKeyScope;

  String? _tagValueScope;
  String? get tagValueScope => _$this._tagValueScope;
  set tagValueScope(String? tagValueScope) =>
      _$this._tagValueScope = tagValueScope;

  String? _policyRuntime;
  String? get policyRuntime => _$this._policyRuntime;
  set policyRuntime(String? policyRuntime) =>
      _$this._policyRuntime = policyRuntime;

  _i4.ListBuilder<String>? _debugLogDeliveryAccounts;
  _i4.ListBuilder<String> get debugLogDeliveryAccounts =>
      _$this._debugLogDeliveryAccounts ??= new _i4.ListBuilder<String>();
  set debugLogDeliveryAccounts(
          _i4.ListBuilder<String>? debugLogDeliveryAccounts) =>
      _$this._debugLogDeliveryAccounts = debugLogDeliveryAccounts;

  OrganizationCustomPolicyRuleMetadataNoPolicyBuilder() {
    OrganizationCustomPolicyRuleMetadataNoPolicy._init(this);
  }

  OrganizationCustomPolicyRuleMetadataNoPolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _organizationConfigRuleTriggerTypes =
          $v.organizationConfigRuleTriggerTypes?.toBuilder();
      _inputParameters = $v.inputParameters;
      _maximumExecutionFrequency = $v.maximumExecutionFrequency;
      _resourceTypesScope = $v.resourceTypesScope?.toBuilder();
      _resourceIdScope = $v.resourceIdScope;
      _tagKeyScope = $v.tagKeyScope;
      _tagValueScope = $v.tagValueScope;
      _policyRuntime = $v.policyRuntime;
      _debugLogDeliveryAccounts = $v.debugLogDeliveryAccounts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationCustomPolicyRuleMetadataNoPolicy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationCustomPolicyRuleMetadataNoPolicy;
  }

  @override
  void update(
      void Function(OrganizationCustomPolicyRuleMetadataNoPolicyBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationCustomPolicyRuleMetadataNoPolicy build() => _build();

  _$OrganizationCustomPolicyRuleMetadataNoPolicy _build() {
    _$OrganizationCustomPolicyRuleMetadataNoPolicy _$result;
    try {
      _$result = _$v ??
          new _$OrganizationCustomPolicyRuleMetadataNoPolicy._(
              description: description,
              organizationConfigRuleTriggerTypes:
                  _organizationConfigRuleTriggerTypes?.build(),
              inputParameters: inputParameters,
              maximumExecutionFrequency: maximumExecutionFrequency,
              resourceTypesScope: _resourceTypesScope?.build(),
              resourceIdScope: resourceIdScope,
              tagKeyScope: tagKeyScope,
              tagValueScope: tagValueScope,
              policyRuntime: policyRuntime,
              debugLogDeliveryAccounts: _debugLogDeliveryAccounts?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizationConfigRuleTriggerTypes';
        _organizationConfigRuleTriggerTypes?.build();

        _$failedField = 'resourceTypesScope';
        _resourceTypesScope?.build();

        _$failedField = 'debugLogDeliveryAccounts';
        _debugLogDeliveryAccounts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrganizationCustomPolicyRuleMetadataNoPolicy',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
