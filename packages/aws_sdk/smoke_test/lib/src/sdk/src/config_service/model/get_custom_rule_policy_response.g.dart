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
    var _$hash = 0;
    _$hash = $jc(_$hash, policyText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
