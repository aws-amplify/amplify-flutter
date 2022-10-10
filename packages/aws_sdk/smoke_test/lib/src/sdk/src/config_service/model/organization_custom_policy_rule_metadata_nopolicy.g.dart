// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.organization_custom_policy_rule_metadata_nopolicy;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationCustomPolicyRuleMetadataNopolicy
    extends OrganizationCustomPolicyRuleMetadataNopolicy {
  @override
  final _i2.BuiltList<String>? debugLogDeliveryAccounts;
  @override
  final String? description;
  @override
  final String? inputParameters;
  @override
  final _i3.MaximumExecutionFrequency? maximumExecutionFrequency;
  @override
  final _i2.BuiltList<_i4.OrganizationConfigRuleTriggerTypeNosn>?
      organizationConfigRuleTriggerTypes;
  @override
  final String? policyRuntime;
  @override
  final String? resourceIdscope;
  @override
  final _i2.BuiltList<String>? resourceTypesScope;
  @override
  final String? tagKeyScope;
  @override
  final String? tagValueScope;

  factory _$OrganizationCustomPolicyRuleMetadataNopolicy(
          [void Function(OrganizationCustomPolicyRuleMetadataNopolicyBuilder)?
              updates]) =>
      (new OrganizationCustomPolicyRuleMetadataNopolicyBuilder()
            ..update(updates))
          ._build();

  _$OrganizationCustomPolicyRuleMetadataNopolicy._(
      {this.debugLogDeliveryAccounts,
      this.description,
      this.inputParameters,
      this.maximumExecutionFrequency,
      this.organizationConfigRuleTriggerTypes,
      this.policyRuntime,
      this.resourceIdscope,
      this.resourceTypesScope,
      this.tagKeyScope,
      this.tagValueScope})
      : super._();

  @override
  OrganizationCustomPolicyRuleMetadataNopolicy rebuild(
          void Function(OrganizationCustomPolicyRuleMetadataNopolicyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationCustomPolicyRuleMetadataNopolicyBuilder toBuilder() =>
      new OrganizationCustomPolicyRuleMetadataNopolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationCustomPolicyRuleMetadataNopolicy &&
        debugLogDeliveryAccounts == other.debugLogDeliveryAccounts &&
        description == other.description &&
        inputParameters == other.inputParameters &&
        maximumExecutionFrequency == other.maximumExecutionFrequency &&
        organizationConfigRuleTriggerTypes ==
            other.organizationConfigRuleTriggerTypes &&
        policyRuntime == other.policyRuntime &&
        resourceIdscope == other.resourceIdscope &&
        resourceTypesScope == other.resourceTypesScope &&
        tagKeyScope == other.tagKeyScope &&
        tagValueScope == other.tagValueScope;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(0,
                                            debugLogDeliveryAccounts.hashCode),
                                        description.hashCode),
                                    inputParameters.hashCode),
                                maximumExecutionFrequency.hashCode),
                            organizationConfigRuleTriggerTypes.hashCode),
                        policyRuntime.hashCode),
                    resourceIdscope.hashCode),
                resourceTypesScope.hashCode),
            tagKeyScope.hashCode),
        tagValueScope.hashCode));
  }
}

class OrganizationCustomPolicyRuleMetadataNopolicyBuilder
    implements
        Builder<OrganizationCustomPolicyRuleMetadataNopolicy,
            OrganizationCustomPolicyRuleMetadataNopolicyBuilder> {
  _$OrganizationCustomPolicyRuleMetadataNopolicy? _$v;

  _i2.ListBuilder<String>? _debugLogDeliveryAccounts;
  _i2.ListBuilder<String> get debugLogDeliveryAccounts =>
      _$this._debugLogDeliveryAccounts ??= new _i2.ListBuilder<String>();
  set debugLogDeliveryAccounts(
          _i2.ListBuilder<String>? debugLogDeliveryAccounts) =>
      _$this._debugLogDeliveryAccounts = debugLogDeliveryAccounts;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

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

  _i2.ListBuilder<_i4.OrganizationConfigRuleTriggerTypeNosn>?
      _organizationConfigRuleTriggerTypes;
  _i2.ListBuilder<_i4.OrganizationConfigRuleTriggerTypeNosn>
      get organizationConfigRuleTriggerTypes =>
          _$this._organizationConfigRuleTriggerTypes ??=
              new _i2.ListBuilder<_i4.OrganizationConfigRuleTriggerTypeNosn>();
  set organizationConfigRuleTriggerTypes(
          _i2.ListBuilder<_i4.OrganizationConfigRuleTriggerTypeNosn>?
              organizationConfigRuleTriggerTypes) =>
      _$this._organizationConfigRuleTriggerTypes =
          organizationConfigRuleTriggerTypes;

  String? _policyRuntime;
  String? get policyRuntime => _$this._policyRuntime;
  set policyRuntime(String? policyRuntime) =>
      _$this._policyRuntime = policyRuntime;

  String? _resourceIdscope;
  String? get resourceIdscope => _$this._resourceIdscope;
  set resourceIdscope(String? resourceIdscope) =>
      _$this._resourceIdscope = resourceIdscope;

  _i2.ListBuilder<String>? _resourceTypesScope;
  _i2.ListBuilder<String> get resourceTypesScope =>
      _$this._resourceTypesScope ??= new _i2.ListBuilder<String>();
  set resourceTypesScope(_i2.ListBuilder<String>? resourceTypesScope) =>
      _$this._resourceTypesScope = resourceTypesScope;

  String? _tagKeyScope;
  String? get tagKeyScope => _$this._tagKeyScope;
  set tagKeyScope(String? tagKeyScope) => _$this._tagKeyScope = tagKeyScope;

  String? _tagValueScope;
  String? get tagValueScope => _$this._tagValueScope;
  set tagValueScope(String? tagValueScope) =>
      _$this._tagValueScope = tagValueScope;

  OrganizationCustomPolicyRuleMetadataNopolicyBuilder() {
    OrganizationCustomPolicyRuleMetadataNopolicy._init(this);
  }

  OrganizationCustomPolicyRuleMetadataNopolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _debugLogDeliveryAccounts = $v.debugLogDeliveryAccounts?.toBuilder();
      _description = $v.description;
      _inputParameters = $v.inputParameters;
      _maximumExecutionFrequency = $v.maximumExecutionFrequency;
      _organizationConfigRuleTriggerTypes =
          $v.organizationConfigRuleTriggerTypes?.toBuilder();
      _policyRuntime = $v.policyRuntime;
      _resourceIdscope = $v.resourceIdscope;
      _resourceTypesScope = $v.resourceTypesScope?.toBuilder();
      _tagKeyScope = $v.tagKeyScope;
      _tagValueScope = $v.tagValueScope;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationCustomPolicyRuleMetadataNopolicy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationCustomPolicyRuleMetadataNopolicy;
  }

  @override
  void update(
      void Function(OrganizationCustomPolicyRuleMetadataNopolicyBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationCustomPolicyRuleMetadataNopolicy build() => _build();

  _$OrganizationCustomPolicyRuleMetadataNopolicy _build() {
    _$OrganizationCustomPolicyRuleMetadataNopolicy _$result;
    try {
      _$result = _$v ??
          new _$OrganizationCustomPolicyRuleMetadataNopolicy._(
              debugLogDeliveryAccounts: _debugLogDeliveryAccounts?.build(),
              description: description,
              inputParameters: inputParameters,
              maximumExecutionFrequency: maximumExecutionFrequency,
              organizationConfigRuleTriggerTypes:
                  _organizationConfigRuleTriggerTypes?.build(),
              policyRuntime: policyRuntime,
              resourceIdscope: resourceIdscope,
              resourceTypesScope: _resourceTypesScope?.build(),
              tagKeyScope: tagKeyScope,
              tagValueScope: tagValueScope);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'debugLogDeliveryAccounts';
        _debugLogDeliveryAccounts?.build();

        _$failedField = 'organizationConfigRuleTriggerTypes';
        _organizationConfigRuleTriggerTypes?.build();

        _$failedField = 'resourceTypesScope';
        _resourceTypesScope?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrganizationCustomPolicyRuleMetadataNopolicy',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
