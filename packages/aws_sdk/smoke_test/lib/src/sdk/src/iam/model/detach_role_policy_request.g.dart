// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.detach_role_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetachRolePolicyRequest extends DetachRolePolicyRequest {
  @override
  final String roleName;
  @override
  final String policyArn;

  factory _$DetachRolePolicyRequest(
          [void Function(DetachRolePolicyRequestBuilder)? updates]) =>
      (new DetachRolePolicyRequestBuilder()..update(updates))._build();

  _$DetachRolePolicyRequest._({required this.roleName, required this.policyArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'DetachRolePolicyRequest', 'roleName');
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'DetachRolePolicyRequest', 'policyArn');
  }

  @override
  DetachRolePolicyRequest rebuild(
          void Function(DetachRolePolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetachRolePolicyRequestBuilder toBuilder() =>
      new DetachRolePolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetachRolePolicyRequest &&
        roleName == other.roleName &&
        policyArn == other.policyArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, policyArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetachRolePolicyRequestBuilder
    implements
        Builder<DetachRolePolicyRequest, DetachRolePolicyRequestBuilder> {
  _$DetachRolePolicyRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  DetachRolePolicyRequestBuilder() {
    DetachRolePolicyRequest._init(this);
  }

  DetachRolePolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _policyArn = $v.policyArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetachRolePolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetachRolePolicyRequest;
  }

  @override
  void update(void Function(DetachRolePolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetachRolePolicyRequest build() => _build();

  _$DetachRolePolicyRequest _build() {
    final _$result = _$v ??
        new _$DetachRolePolicyRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'DetachRolePolicyRequest', 'roleName'),
            policyArn: BuiltValueNullFieldError.checkNotNull(
                policyArn, r'DetachRolePolicyRequest', 'policyArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
