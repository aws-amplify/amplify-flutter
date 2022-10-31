// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_organization_config_rule_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteOrganizationConfigRuleRequest
    extends DeleteOrganizationConfigRuleRequest {
  @override
  final String organizationConfigRuleName;

  factory _$DeleteOrganizationConfigRuleRequest(
          [void Function(DeleteOrganizationConfigRuleRequestBuilder)?
              updates]) =>
      (new DeleteOrganizationConfigRuleRequestBuilder()..update(updates))
          ._build();

  _$DeleteOrganizationConfigRuleRequest._(
      {required this.organizationConfigRuleName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(organizationConfigRuleName,
        r'DeleteOrganizationConfigRuleRequest', 'organizationConfigRuleName');
  }

  @override
  DeleteOrganizationConfigRuleRequest rebuild(
          void Function(DeleteOrganizationConfigRuleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteOrganizationConfigRuleRequestBuilder toBuilder() =>
      new DeleteOrganizationConfigRuleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteOrganizationConfigRuleRequest &&
        organizationConfigRuleName == other.organizationConfigRuleName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, organizationConfigRuleName.hashCode));
  }
}

class DeleteOrganizationConfigRuleRequestBuilder
    implements
        Builder<DeleteOrganizationConfigRuleRequest,
            DeleteOrganizationConfigRuleRequestBuilder> {
  _$DeleteOrganizationConfigRuleRequest? _$v;

  String? _organizationConfigRuleName;
  String? get organizationConfigRuleName => _$this._organizationConfigRuleName;
  set organizationConfigRuleName(String? organizationConfigRuleName) =>
      _$this._organizationConfigRuleName = organizationConfigRuleName;

  DeleteOrganizationConfigRuleRequestBuilder() {
    DeleteOrganizationConfigRuleRequest._init(this);
  }

  DeleteOrganizationConfigRuleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organizationConfigRuleName = $v.organizationConfigRuleName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteOrganizationConfigRuleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteOrganizationConfigRuleRequest;
  }

  @override
  void update(
      void Function(DeleteOrganizationConfigRuleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteOrganizationConfigRuleRequest build() => _build();

  _$DeleteOrganizationConfigRuleRequest _build() {
    final _$result = _$v ??
        new _$DeleteOrganizationConfigRuleRequest._(
            organizationConfigRuleName: BuiltValueNullFieldError.checkNotNull(
                organizationConfigRuleName,
                r'DeleteOrganizationConfigRuleRequest',
                'organizationConfigRuleName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
