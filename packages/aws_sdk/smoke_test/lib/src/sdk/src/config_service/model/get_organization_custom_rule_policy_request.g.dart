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
    var _$hash = 0;
    _$hash = $jc(_$hash, organizationConfigRuleName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
