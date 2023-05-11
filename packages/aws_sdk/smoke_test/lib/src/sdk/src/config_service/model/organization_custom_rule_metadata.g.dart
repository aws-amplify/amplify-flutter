// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.organization_custom_rule_metadata;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationCustomRuleMetadata extends OrganizationCustomRuleMetadata {
  @override
  final String? description;
  @override
  final String lambdaFunctionArn;
  @override
  final _i4.BuiltList<_i2.OrganizationConfigRuleTriggerType>
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

  factory _$OrganizationCustomRuleMetadata(
          [void Function(OrganizationCustomRuleMetadataBuilder)? updates]) =>
      (new OrganizationCustomRuleMetadataBuilder()..update(updates))._build();

  _$OrganizationCustomRuleMetadata._(
      {this.description,
      required this.lambdaFunctionArn,
      required this.organizationConfigRuleTriggerTypes,
      this.inputParameters,
      this.maximumExecutionFrequency,
      this.resourceTypesScope,
      this.resourceIdScope,
      this.tagKeyScope,
      this.tagValueScope})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(lambdaFunctionArn,
        r'OrganizationCustomRuleMetadata', 'lambdaFunctionArn');
    BuiltValueNullFieldError.checkNotNull(
        organizationConfigRuleTriggerTypes,
        r'OrganizationCustomRuleMetadata',
        'organizationConfigRuleTriggerTypes');
  }

  @override
  OrganizationCustomRuleMetadata rebuild(
          void Function(OrganizationCustomRuleMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationCustomRuleMetadataBuilder toBuilder() =>
      new OrganizationCustomRuleMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationCustomRuleMetadata &&
        description == other.description &&
        lambdaFunctionArn == other.lambdaFunctionArn &&
        organizationConfigRuleTriggerTypes ==
            other.organizationConfigRuleTriggerTypes &&
        inputParameters == other.inputParameters &&
        maximumExecutionFrequency == other.maximumExecutionFrequency &&
        resourceTypesScope == other.resourceTypesScope &&
        resourceIdScope == other.resourceIdScope &&
        tagKeyScope == other.tagKeyScope &&
        tagValueScope == other.tagValueScope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, lambdaFunctionArn.hashCode);
    _$hash = $jc(_$hash, organizationConfigRuleTriggerTypes.hashCode);
    _$hash = $jc(_$hash, inputParameters.hashCode);
    _$hash = $jc(_$hash, maximumExecutionFrequency.hashCode);
    _$hash = $jc(_$hash, resourceTypesScope.hashCode);
    _$hash = $jc(_$hash, resourceIdScope.hashCode);
    _$hash = $jc(_$hash, tagKeyScope.hashCode);
    _$hash = $jc(_$hash, tagValueScope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OrganizationCustomRuleMetadataBuilder
    implements
        Builder<OrganizationCustomRuleMetadata,
            OrganizationCustomRuleMetadataBuilder> {
  _$OrganizationCustomRuleMetadata? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _lambdaFunctionArn;
  String? get lambdaFunctionArn => _$this._lambdaFunctionArn;
  set lambdaFunctionArn(String? lambdaFunctionArn) =>
      _$this._lambdaFunctionArn = lambdaFunctionArn;

  _i4.ListBuilder<_i2.OrganizationConfigRuleTriggerType>?
      _organizationConfigRuleTriggerTypes;
  _i4.ListBuilder<_i2.OrganizationConfigRuleTriggerType>
      get organizationConfigRuleTriggerTypes =>
          _$this._organizationConfigRuleTriggerTypes ??=
              new _i4.ListBuilder<_i2.OrganizationConfigRuleTriggerType>();
  set organizationConfigRuleTriggerTypes(
          _i4.ListBuilder<_i2.OrganizationConfigRuleTriggerType>?
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

  OrganizationCustomRuleMetadataBuilder() {
    OrganizationCustomRuleMetadata._init(this);
  }

  OrganizationCustomRuleMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _lambdaFunctionArn = $v.lambdaFunctionArn;
      _organizationConfigRuleTriggerTypes =
          $v.organizationConfigRuleTriggerTypes.toBuilder();
      _inputParameters = $v.inputParameters;
      _maximumExecutionFrequency = $v.maximumExecutionFrequency;
      _resourceTypesScope = $v.resourceTypesScope?.toBuilder();
      _resourceIdScope = $v.resourceIdScope;
      _tagKeyScope = $v.tagKeyScope;
      _tagValueScope = $v.tagValueScope;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationCustomRuleMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationCustomRuleMetadata;
  }

  @override
  void update(void Function(OrganizationCustomRuleMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationCustomRuleMetadata build() => _build();

  _$OrganizationCustomRuleMetadata _build() {
    _$OrganizationCustomRuleMetadata _$result;
    try {
      _$result = _$v ??
          new _$OrganizationCustomRuleMetadata._(
              description: description,
              lambdaFunctionArn: BuiltValueNullFieldError.checkNotNull(
                  lambdaFunctionArn,
                  r'OrganizationCustomRuleMetadata',
                  'lambdaFunctionArn'),
              organizationConfigRuleTriggerTypes:
                  organizationConfigRuleTriggerTypes.build(),
              inputParameters: inputParameters,
              maximumExecutionFrequency: maximumExecutionFrequency,
              resourceTypesScope: _resourceTypesScope?.build(),
              resourceIdScope: resourceIdScope,
              tagKeyScope: tagKeyScope,
              tagValueScope: tagValueScope);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizationConfigRuleTriggerTypes';
        organizationConfigRuleTriggerTypes.build();

        _$failedField = 'resourceTypesScope';
        _resourceTypesScope?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrganizationCustomRuleMetadata', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
