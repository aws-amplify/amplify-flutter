// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_organization_custom_rule_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrganizationCustomRulePolicyRequest
    extends GetOrganizationCustomRulePolicyRequest {
  @override
  final String organizationConfigRuleName;

  factory _$GetOrganizationCustomRulePolicyRequest(
          [void Function(GetOrganizationCustomRulePolicyRequestBuilder)?
              updates]) =>
      (new GetOrganizationCustomRulePolicyRequestBuilder()..update(updates))
          ._build();

  _$GetOrganizationCustomRulePolicyRequest._(
      {required this.organizationConfigRuleName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        organizationConfigRuleName,
        r'GetOrganizationCustomRulePolicyRequest',
        'organizationConfigRuleName');
  }

  @override
  GetOrganizationCustomRulePolicyRequest rebuild(
          void Function(GetOrganizationCustomRulePolicyRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOrganizationCustomRulePolicyRequestBuilder toBuilder() =>
      new GetOrganizationCustomRulePolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrganizationCustomRulePolicyRequest &&
        organizationConfigRuleName == other.organizationConfigRuleName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, organizationConfigRuleName.hashCode));
  }
}

class GetOrganizationCustomRulePolicyRequestBuilder
    implements
        Builder<GetOrganizationCustomRulePolicyRequest,
            GetOrganizationCustomRulePolicyRequestBuilder> {
  _$GetOrganizationCustomRulePolicyRequest? _$v;

  String? _organizationConfigRuleName;
  String? get organizationConfigRuleName => _$this._organizationConfigRuleName;
  set organizationConfigRuleName(String? organizationConfigRuleName) =>
      _$this._organizationConfigRuleName = organizationConfigRuleName;

  GetOrganizationCustomRulePolicyRequestBuilder() {
    GetOrganizationCustomRulePolicyRequest._init(this);
  }

  GetOrganizationCustomRulePolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organizationConfigRuleName = $v.organizationConfigRuleName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrganizationCustomRulePolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetOrganizationCustomRulePolicyRequest;
  }

  @override
  void update(
      void Function(GetOrganizationCustomRulePolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrganizationCustomRulePolicyRequest build() => _build();

  _$GetOrganizationCustomRulePolicyRequest _build() {
    final _$result = _$v ??
        new _$GetOrganizationCustomRulePolicyRequest._(
            organizationConfigRuleName: BuiltValueNullFieldError.checkNotNull(
                organizationConfigRuleName,
                r'GetOrganizationCustomRulePolicyRequest',
                'organizationConfigRuleName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
