// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_organization_custom_rule_policy_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrganizationCustomRulePolicyResponse
    extends GetOrganizationCustomRulePolicyResponse {
  @override
  final String? policyText;

  factory _$GetOrganizationCustomRulePolicyResponse(
          [void Function(GetOrganizationCustomRulePolicyResponseBuilder)?
              updates]) =>
      (new GetOrganizationCustomRulePolicyResponseBuilder()..update(updates))
          ._build();

  _$GetOrganizationCustomRulePolicyResponse._({this.policyText}) : super._();

  @override
  GetOrganizationCustomRulePolicyResponse rebuild(
          void Function(GetOrganizationCustomRulePolicyResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOrganizationCustomRulePolicyResponseBuilder toBuilder() =>
      new GetOrganizationCustomRulePolicyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrganizationCustomRulePolicyResponse &&
        policyText == other.policyText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetOrganizationCustomRulePolicyResponseBuilder
    implements
        Builder<GetOrganizationCustomRulePolicyResponse,
            GetOrganizationCustomRulePolicyResponseBuilder> {
  _$GetOrganizationCustomRulePolicyResponse? _$v;

  String? _policyText;
  String? get policyText => _$this._policyText;
  set policyText(String? policyText) => _$this._policyText = policyText;

  GetOrganizationCustomRulePolicyResponseBuilder() {
    GetOrganizationCustomRulePolicyResponse._init(this);
  }

  GetOrganizationCustomRulePolicyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyText = $v.policyText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrganizationCustomRulePolicyResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetOrganizationCustomRulePolicyResponse;
  }

  @override
  void update(
      void Function(GetOrganizationCustomRulePolicyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrganizationCustomRulePolicyResponse build() => _build();

  _$GetOrganizationCustomRulePolicyResponse _build() {
    final _$result = _$v ??
        new _$GetOrganizationCustomRulePolicyResponse._(policyText: policyText);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
