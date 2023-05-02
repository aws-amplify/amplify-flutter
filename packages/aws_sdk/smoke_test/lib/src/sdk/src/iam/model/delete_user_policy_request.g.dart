// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_user_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteUserPolicyRequest extends DeleteUserPolicyRequest {
  @override
  final String userName;
  @override
  final String policyName;

  factory _$DeleteUserPolicyRequest(
          [void Function(DeleteUserPolicyRequestBuilder)? updates]) =>
      (new DeleteUserPolicyRequestBuilder()..update(updates))._build();

  _$DeleteUserPolicyRequest._(
      {required this.userName, required this.policyName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'DeleteUserPolicyRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        policyName, r'DeleteUserPolicyRequest', 'policyName');
  }

  @override
  DeleteUserPolicyRequest rebuild(
          void Function(DeleteUserPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteUserPolicyRequestBuilder toBuilder() =>
      new DeleteUserPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteUserPolicyRequest &&
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

class DeleteUserPolicyRequestBuilder
    implements
        Builder<DeleteUserPolicyRequest, DeleteUserPolicyRequestBuilder> {
  _$DeleteUserPolicyRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  DeleteUserPolicyRequestBuilder() {
    DeleteUserPolicyRequest._init(this);
  }

  DeleteUserPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _policyName = $v.policyName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteUserPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteUserPolicyRequest;
  }

  @override
  void update(void Function(DeleteUserPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteUserPolicyRequest build() => _build();

  _$DeleteUserPolicyRequest _build() {
    final _$result = _$v ??
        new _$DeleteUserPolicyRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'DeleteUserPolicyRequest', 'userName'),
            policyName: BuiltValueNullFieldError.checkNotNull(
                policyName, r'DeleteUserPolicyRequest', 'policyName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
