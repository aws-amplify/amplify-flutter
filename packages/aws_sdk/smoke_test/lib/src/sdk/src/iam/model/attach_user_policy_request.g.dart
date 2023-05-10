// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.attach_user_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachUserPolicyRequest extends AttachUserPolicyRequest {
  @override
  final String userName;
  @override
  final String policyArn;

  factory _$AttachUserPolicyRequest(
          [void Function(AttachUserPolicyRequestBuilder)? updates]) =>
      (new AttachUserPolicyRequestBuilder()..update(updates))._build();

  _$AttachUserPolicyRequest._({required this.userName, required this.policyArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'AttachUserPolicyRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'AttachUserPolicyRequest', 'policyArn');
  }

  @override
  AttachUserPolicyRequest rebuild(
          void Function(AttachUserPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachUserPolicyRequestBuilder toBuilder() =>
      new AttachUserPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachUserPolicyRequest &&
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

class AttachUserPolicyRequestBuilder
    implements
        Builder<AttachUserPolicyRequest, AttachUserPolicyRequestBuilder> {
  _$AttachUserPolicyRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  AttachUserPolicyRequestBuilder() {
    AttachUserPolicyRequest._init(this);
  }

  AttachUserPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _policyArn = $v.policyArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachUserPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachUserPolicyRequest;
  }

  @override
  void update(void Function(AttachUserPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachUserPolicyRequest build() => _build();

  _$AttachUserPolicyRequest _build() {
    final _$result = _$v ??
        new _$AttachUserPolicyRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'AttachUserPolicyRequest', 'userName'),
            policyArn: BuiltValueNullFieldError.checkNotNull(
                policyArn, r'AttachUserPolicyRequest', 'policyArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
