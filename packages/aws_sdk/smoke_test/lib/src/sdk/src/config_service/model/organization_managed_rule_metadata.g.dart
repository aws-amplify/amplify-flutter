// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.organization_managed_rule_metadata;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationManagedRuleMetadata
    extends OrganizationManagedRuleMetadata {
  @override
  final String? description;
  @override
  final String? inputParameters;
  @override
  final _i2.MaximumExecutionFrequency? maximumExecutionFrequency;
  @override
  final String? resourceIdScope;
  @override
  final _i3.BuiltList<String>? resourceTypesScope;
  @override
  final String ruleIdentifier;
  @override
  final String? tagKeyScope;
  @override
  final String? tagValueScope;

  factory _$OrganizationManagedRuleMetadata(
          [void Function(OrganizationManagedRuleMetadataBuilder)? updates]) =>
      (new OrganizationManagedRuleMetadataBuilder()..update(updates))._build();

  _$OrganizationManagedRuleMetadata._(
      {this.description,
      this.inputParameters,
      this.maximumExecutionFrequency,
      this.resourceIdScope,
      this.resourceTypesScope,
      required this.ruleIdentifier,
      this.tagKeyScope,
      this.tagValueScope})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ruleIdentifier, r'OrganizationManagedRuleMetadata', 'ruleIdentifier');
  }

  @override
  OrganizationManagedRuleMetadata rebuild(
          void Function(OrganizationManagedRuleMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationManagedRuleMetadataBuilder toBuilder() =>
      new OrganizationManagedRuleMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationManagedRuleMetadata &&
        description == other.description &&
        inputParameters == other.inputParameters &&
        maximumExecutionFrequency == other.maximumExecutionFrequency &&
        resourceIdScope == other.resourceIdScope &&
        resourceTypesScope == other.resourceTypesScope &&
        ruleIdentifier == other.ruleIdentifier &&
        tagKeyScope == other.tagKeyScope &&
        tagValueScope == other.tagValueScope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, inputParameters.hashCode);
    _$hash = $jc(_$hash, maximumExecutionFrequency.hashCode);
    _$hash = $jc(_$hash, resourceIdScope.hashCode);
    _$hash = $jc(_$hash, resourceTypesScope.hashCode);
    _$hash = $jc(_$hash, ruleIdentifier.hashCode);
    _$hash = $jc(_$hash, tagKeyScope.hashCode);
    _$hash = $jc(_$hash, tagValueScope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OrganizationManagedRuleMetadataBuilder
    implements
        Builder<OrganizationManagedRuleMetadata,
            OrganizationManagedRuleMetadataBuilder> {
  _$OrganizationManagedRuleMetadata? _$v;

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

  String? _resourceIdScope;
  String? get resourceIdScope => _$this._resourceIdScope;
  set resourceIdScope(String? resourceIdScope) =>
      _$this._resourceIdScope = resourceIdScope;

  _i3.ListBuilder<String>? _resourceTypesScope;
  _i3.ListBuilder<String> get resourceTypesScope =>
      _$this._resourceTypesScope ??= new _i3.ListBuilder<String>();
  set resourceTypesScope(_i3.ListBuilder<String>? resourceTypesScope) =>
      _$this._resourceTypesScope = resourceTypesScope;

  String? _ruleIdentifier;
  String? get ruleIdentifier => _$this._ruleIdentifier;
  set ruleIdentifier(String? ruleIdentifier) =>
      _$this._ruleIdentifier = ruleIdentifier;

  String? _tagKeyScope;
  String? get tagKeyScope => _$this._tagKeyScope;
  set tagKeyScope(String? tagKeyScope) => _$this._tagKeyScope = tagKeyScope;

  String? _tagValueScope;
  String? get tagValueScope => _$this._tagValueScope;
  set tagValueScope(String? tagValueScope) =>
      _$this._tagValueScope = tagValueScope;

  OrganizationManagedRuleMetadataBuilder() {
    OrganizationManagedRuleMetadata._init(this);
  }

  OrganizationManagedRuleMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _inputParameters = $v.inputParameters;
      _maximumExecutionFrequency = $v.maximumExecutionFrequency;
      _resourceIdScope = $v.resourceIdScope;
      _resourceTypesScope = $v.resourceTypesScope?.toBuilder();
      _ruleIdentifier = $v.ruleIdentifier;
      _tagKeyScope = $v.tagKeyScope;
      _tagValueScope = $v.tagValueScope;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationManagedRuleMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationManagedRuleMetadata;
  }

  @override
  void update(void Function(OrganizationManagedRuleMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationManagedRuleMetadata build() => _build();

  _$OrganizationManagedRuleMetadata _build() {
    _$OrganizationManagedRuleMetadata _$result;
    try {
      _$result = _$v ??
          new _$OrganizationManagedRuleMetadata._(
              description: description,
              inputParameters: inputParameters,
              maximumExecutionFrequency: maximumExecutionFrequency,
              resourceIdScope: resourceIdScope,
              resourceTypesScope: _resourceTypesScope?.build(),
              ruleIdentifier: BuiltValueNullFieldError.checkNotNull(
                  ruleIdentifier,
                  r'OrganizationManagedRuleMetadata',
                  'ruleIdentifier'),
              tagKeyScope: tagKeyScope,
              tagValueScope: tagValueScope);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceTypesScope';
        _resourceTypesScope?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrganizationManagedRuleMetadata', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
