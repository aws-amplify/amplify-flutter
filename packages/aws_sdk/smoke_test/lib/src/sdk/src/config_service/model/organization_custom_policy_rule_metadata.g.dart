// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.organization_custom_policy_rule_metadata;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationCustomPolicyRuleMetadata
    extends OrganizationCustomPolicyRuleMetadata {
  @override
  final _i4.BuiltList<String>? debugLogDeliveryAccounts;
  @override
  final String? description;
  @override
  final String? inputParameters;
  @override
  final _i2.MaximumExecutionFrequency? maximumExecutionFrequency;
  @override
  final _i4.BuiltList<_i3.OrganizationConfigRuleTriggerTypeNoSn>?
      organizationConfigRuleTriggerTypes;
  @override
  final String policyRuntime;
  @override
  final String policyText;
  @override
  final String? resourceIdScope;
  @override
  final _i4.BuiltList<String>? resourceTypesScope;
  @override
  final String? tagKeyScope;
  @override
  final String? tagValueScope;

  factory _$OrganizationCustomPolicyRuleMetadata(
          [void Function(OrganizationCustomPolicyRuleMetadataBuilder)?
              updates]) =>
      (new OrganizationCustomPolicyRuleMetadataBuilder()..update(updates))
          ._build();

  _$OrganizationCustomPolicyRuleMetadata._(
      {this.debugLogDeliveryAccounts,
      this.description,
      this.inputParameters,
      this.maximumExecutionFrequency,
      this.organizationConfigRuleTriggerTypes,
      required this.policyRuntime,
      required this.policyText,
      this.resourceIdScope,
      this.resourceTypesScope,
      this.tagKeyScope,
      this.tagValueScope})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(policyRuntime,
        r'OrganizationCustomPolicyRuleMetadata', 'policyRuntime');
    BuiltValueNullFieldError.checkNotNull(
        policyText, r'OrganizationCustomPolicyRuleMetadata', 'policyText');
  }

  @override
  OrganizationCustomPolicyRuleMetadata rebuild(
          void Function(OrganizationCustomPolicyRuleMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationCustomPolicyRuleMetadataBuilder toBuilder() =>
      new OrganizationCustomPolicyRuleMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationCustomPolicyRuleMetadata &&
        debugLogDeliveryAccounts == other.debugLogDeliveryAccounts &&
        description == other.description &&
        inputParameters == other.inputParameters &&
        maximumExecutionFrequency == other.maximumExecutionFrequency &&
        organizationConfigRuleTriggerTypes ==
            other.organizationConfigRuleTriggerTypes &&
        policyRuntime == other.policyRuntime &&
        policyText == other.policyText &&
        resourceIdScope == other.resourceIdScope &&
        resourceTypesScope == other.resourceTypesScope &&
        tagKeyScope == other.tagKeyScope &&
        tagValueScope == other.tagValueScope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, debugLogDeliveryAccounts.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, inputParameters.hashCode);
    _$hash = $jc(_$hash, maximumExecutionFrequency.hashCode);
    _$hash = $jc(_$hash, organizationConfigRuleTriggerTypes.hashCode);
    _$hash = $jc(_$hash, policyRuntime.hashCode);
    _$hash = $jc(_$hash, policyText.hashCode);
    _$hash = $jc(_$hash, resourceIdScope.hashCode);
    _$hash = $jc(_$hash, resourceTypesScope.hashCode);
    _$hash = $jc(_$hash, tagKeyScope.hashCode);
    _$hash = $jc(_$hash, tagValueScope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OrganizationCustomPolicyRuleMetadataBuilder
    implements
        Builder<OrganizationCustomPolicyRuleMetadata,
            OrganizationCustomPolicyRuleMetadataBuilder> {
  _$OrganizationCustomPolicyRuleMetadata? _$v;

  _i4.ListBuilder<String>? _debugLogDeliveryAccounts;
  _i4.ListBuilder<String> get debugLogDeliveryAccounts =>
      _$this._debugLogDeliveryAccounts ??= new _i4.ListBuilder<String>();
  set debugLogDeliveryAccounts(
          _i4.ListBuilder<String>? debugLogDeliveryAccounts) =>
      _$this._debugLogDeliveryAccounts = debugLogDeliveryAccounts;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _inputParameters;
  String? get inputParameters => _$this._inputParameters;
  set inputParameters(String? inputParameters) =>
      _$this._inputParameters = inputParameters;

  _i2.MaximumExecutionFrequency? _maximumExecutionFrequency;
  _i2.MaximumExecutionFrequency? get maximumExecutionFrequency =>
      _$this._maximumExecutionFrequency;
  set maximumExecutionFrequency(
          _i2.MaximumExecutionFrequency? maximumExecutionFrequency) =>
      _$this._maximumExecutionFrequency = maximumExecutionFrequency;

  _i4.ListBuilder<_i3.OrganizationConfigRuleTriggerTypeNoSn>?
      _organizationConfigRuleTriggerTypes;
  _i4.ListBuilder<_i3.OrganizationConfigRuleTriggerTypeNoSn>
      get organizationConfigRuleTriggerTypes =>
          _$this._organizationConfigRuleTriggerTypes ??=
              new _i4.ListBuilder<_i3.OrganizationConfigRuleTriggerTypeNoSn>();
  set organizationConfigRuleTriggerTypes(
          _i4.ListBuilder<_i3.OrganizationConfigRuleTriggerTypeNoSn>?
              organizationConfigRuleTriggerTypes) =>
      _$this._organizationConfigRuleTriggerTypes =
          organizationConfigRuleTriggerTypes;

  String? _policyRuntime;
  String? get policyRuntime => _$this._policyRuntime;
  set policyRuntime(String? policyRuntime) =>
      _$this._policyRuntime = policyRuntime;

  String? _policyText;
  String? get policyText => _$this._policyText;
  set policyText(String? policyText) => _$this._policyText = policyText;

  String? _resourceIdScope;
  String? get resourceIdScope => _$this._resourceIdScope;
  set resourceIdScope(String? resourceIdScope) =>
      _$this._resourceIdScope = resourceIdScope;

  _i4.ListBuilder<String>? _resourceTypesScope;
  _i4.ListBuilder<String> get resourceTypesScope =>
      _$this._resourceTypesScope ??= new _i4.ListBuilder<String>();
  set resourceTypesScope(_i4.ListBuilder<String>? resourceTypesScope) =>
      _$this._resourceTypesScope = resourceTypesScope;

  String? _tagKeyScope;
  String? get tagKeyScope => _$this._tagKeyScope;
  set tagKeyScope(String? tagKeyScope) => _$this._tagKeyScope = tagKeyScope;

  String? _tagValueScope;
  String? get tagValueScope => _$this._tagValueScope;
  set tagValueScope(String? tagValueScope) =>
      _$this._tagValueScope = tagValueScope;

  OrganizationCustomPolicyRuleMetadataBuilder() {
    OrganizationCustomPolicyRuleMetadata._init(this);
  }

  OrganizationCustomPolicyRuleMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _debugLogDeliveryAccounts = $v.debugLogDeliveryAccounts?.toBuilder();
      _description = $v.description;
      _inputParameters = $v.inputParameters;
      _maximumExecutionFrequency = $v.maximumExecutionFrequency;
      _organizationConfigRuleTriggerTypes =
          $v.organizationConfigRuleTriggerTypes?.toBuilder();
      _policyRuntime = $v.policyRuntime;
      _policyText = $v.policyText;
      _resourceIdScope = $v.resourceIdScope;
      _resourceTypesScope = $v.resourceTypesScope?.toBuilder();
      _tagKeyScope = $v.tagKeyScope;
      _tagValueScope = $v.tagValueScope;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationCustomPolicyRuleMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationCustomPolicyRuleMetadata;
  }

  @override
  void update(
      void Function(OrganizationCustomPolicyRuleMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationCustomPolicyRuleMetadata build() => _build();

  _$OrganizationCustomPolicyRuleMetadata _build() {
    _$OrganizationCustomPolicyRuleMetadata _$result;
    try {
      _$result = _$v ??
          new _$OrganizationCustomPolicyRuleMetadata._(
              debugLogDeliveryAccounts: _debugLogDeliveryAccounts?.build(),
              description: description,
              inputParameters: inputParameters,
              maximumExecutionFrequency: maximumExecutionFrequency,
              organizationConfigRuleTriggerTypes:
                  _organizationConfigRuleTriggerTypes?.build(),
              policyRuntime: BuiltValueNullFieldError.checkNotNull(
                  policyRuntime,
                  r'OrganizationCustomPolicyRuleMetadata',
                  'policyRuntime'),
              policyText: BuiltValueNullFieldError.checkNotNull(policyText,
                  r'OrganizationCustomPolicyRuleMetadata', 'policyText'),
              resourceIdScope: resourceIdScope,
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
            r'OrganizationCustomPolicyRuleMetadata',
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
