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
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, description.hashCode),
                                inputParameters.hashCode),
                            maximumExecutionFrequency.hashCode),
                        resourceIdScope.hashCode),
                    resourceTypesScope.hashCode),
                ruleIdentifier.hashCode),
            tagKeyScope.hashCode),
        tagValueScope.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
