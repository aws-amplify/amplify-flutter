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
    var _$hash = 0;
    _$hash = $jc(_$hash, organizationConfigRuleName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
