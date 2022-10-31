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
    return $jf($jc(0, policyText.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
