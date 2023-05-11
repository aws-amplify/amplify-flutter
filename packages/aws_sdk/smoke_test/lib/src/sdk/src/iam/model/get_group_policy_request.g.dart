// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_group_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetGroupPolicyRequest extends GetGroupPolicyRequest {
  @override
  final String groupName;
  @override
  final String policyName;

  factory _$GetGroupPolicyRequest(
          [void Function(GetGroupPolicyRequestBuilder)? updates]) =>
      (new GetGroupPolicyRequestBuilder()..update(updates))._build();

  _$GetGroupPolicyRequest._({required this.groupName, required this.policyName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'GetGroupPolicyRequest', 'groupName');
    BuiltValueNullFieldError.checkNotNull(
        policyName, r'GetGroupPolicyRequest', 'policyName');
  }

  @override
  GetGroupPolicyRequest rebuild(
          void Function(GetGroupPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGroupPolicyRequestBuilder toBuilder() =>
      new GetGroupPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGroupPolicyRequest &&
        groupName == other.groupName &&
        policyName == other.policyName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetGroupPolicyRequestBuilder
    implements Builder<GetGroupPolicyRequest, GetGroupPolicyRequestBuilder> {
  _$GetGroupPolicyRequest? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  GetGroupPolicyRequestBuilder() {
    GetGroupPolicyRequest._init(this);
  }

  GetGroupPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _policyName = $v.policyName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetGroupPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetGroupPolicyRequest;
  }

  @override
  void update(void Function(GetGroupPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetGroupPolicyRequest build() => _build();

  _$GetGroupPolicyRequest _build() {
    final _$result = _$v ??
        new _$GetGroupPolicyRequest._(
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'GetGroupPolicyRequest', 'groupName'),
            policyName: BuiltValueNullFieldError.checkNotNull(
                policyName, r'GetGroupPolicyRequest', 'policyName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
