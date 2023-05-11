// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_user_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUserPolicyRequest extends GetUserPolicyRequest {
  @override
  final String userName;
  @override
  final String policyName;

  factory _$GetUserPolicyRequest(
          [void Function(GetUserPolicyRequestBuilder)? updates]) =>
      (new GetUserPolicyRequestBuilder()..update(updates))._build();

  _$GetUserPolicyRequest._({required this.userName, required this.policyName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'GetUserPolicyRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        policyName, r'GetUserPolicyRequest', 'policyName');
  }

  @override
  GetUserPolicyRequest rebuild(
          void Function(GetUserPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserPolicyRequestBuilder toBuilder() =>
      new GetUserPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserPolicyRequest &&
        userName == other.userName &&
        policyName == other.policyName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetUserPolicyRequestBuilder
    implements Builder<GetUserPolicyRequest, GetUserPolicyRequestBuilder> {
  _$GetUserPolicyRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  GetUserPolicyRequestBuilder() {
    GetUserPolicyRequest._init(this);
  }

  GetUserPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _policyName = $v.policyName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUserPolicyRequest;
  }

  @override
  void update(void Function(GetUserPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUserPolicyRequest build() => _build();

  _$GetUserPolicyRequest _build() {
    final _$result = _$v ??
        new _$GetUserPolicyRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'GetUserPolicyRequest', 'userName'),
            policyName: BuiltValueNullFieldError.checkNotNull(
                policyName, r'GetUserPolicyRequest', 'policyName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
