// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.detach_user_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetachUserPolicyRequest extends DetachUserPolicyRequest {
  @override
  final String userName;
  @override
  final String policyArn;

  factory _$DetachUserPolicyRequest(
          [void Function(DetachUserPolicyRequestBuilder)? updates]) =>
      (new DetachUserPolicyRequestBuilder()..update(updates))._build();

  _$DetachUserPolicyRequest._({required this.userName, required this.policyArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'DetachUserPolicyRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'DetachUserPolicyRequest', 'policyArn');
  }

  @override
  DetachUserPolicyRequest rebuild(
          void Function(DetachUserPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetachUserPolicyRequestBuilder toBuilder() =>
      new DetachUserPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetachUserPolicyRequest &&
        userName == other.userName &&
        policyArn == other.policyArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, policyArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetachUserPolicyRequestBuilder
    implements
        Builder<DetachUserPolicyRequest, DetachUserPolicyRequestBuilder> {
  _$DetachUserPolicyRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  DetachUserPolicyRequestBuilder() {
    DetachUserPolicyRequest._init(this);
  }

  DetachUserPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _policyArn = $v.policyArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetachUserPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetachUserPolicyRequest;
  }

  @override
  void update(void Function(DetachUserPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetachUserPolicyRequest build() => _build();

  _$DetachUserPolicyRequest _build() {
    final _$result = _$v ??
        new _$DetachUserPolicyRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'DetachUserPolicyRequest', 'userName'),
            policyArn: BuiltValueNullFieldError.checkNotNull(
                policyArn, r'DetachUserPolicyRequest', 'policyArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
