// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_custom_rule_policy_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCustomRulePolicyResponse extends GetCustomRulePolicyResponse {
  @override
  final String? policyText;

  factory _$GetCustomRulePolicyResponse(
          [void Function(GetCustomRulePolicyResponseBuilder)? updates]) =>
      (new GetCustomRulePolicyResponseBuilder()..update(updates))._build();

  _$GetCustomRulePolicyResponse._({this.policyText}) : super._();

  @override
  GetCustomRulePolicyResponse rebuild(
          void Function(GetCustomRulePolicyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCustomRulePolicyResponseBuilder toBuilder() =>
      new GetCustomRulePolicyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCustomRulePolicyResponse &&
        policyText == other.policyText;
  }

  @override
  int get hashCode {
    return $jf($jc(0, policyText.hashCode));
  }
}

class GetCustomRulePolicyResponseBuilder
    implements
        Builder<GetCustomRulePolicyResponse,
            GetCustomRulePolicyResponseBuilder> {
  _$GetCustomRulePolicyResponse? _$v;

  String? _policyText;
  String? get policyText => _$this._policyText;
  set policyText(String? policyText) => _$this._policyText = policyText;

  GetCustomRulePolicyResponseBuilder() {
    GetCustomRulePolicyResponse._init(this);
  }

  GetCustomRulePolicyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyText = $v.policyText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCustomRulePolicyResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCustomRulePolicyResponse;
  }

  @override
  void update(void Function(GetCustomRulePolicyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCustomRulePolicyResponse build() => _build();

  _$GetCustomRulePolicyResponse _build() {
    final _$result =
        _$v ?? new _$GetCustomRulePolicyResponse._(policyText: policyText);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
