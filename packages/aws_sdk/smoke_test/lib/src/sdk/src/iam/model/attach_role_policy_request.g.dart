// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.attach_role_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachRolePolicyRequest extends AttachRolePolicyRequest {
  @override
  final String roleName;
  @override
  final String policyArn;

  factory _$AttachRolePolicyRequest(
          [void Function(AttachRolePolicyRequestBuilder)? updates]) =>
      (new AttachRolePolicyRequestBuilder()..update(updates))._build();

  _$AttachRolePolicyRequest._({required this.roleName, required this.policyArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'AttachRolePolicyRequest', 'roleName');
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'AttachRolePolicyRequest', 'policyArn');
  }

  @override
  AttachRolePolicyRequest rebuild(
          void Function(AttachRolePolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachRolePolicyRequestBuilder toBuilder() =>
      new AttachRolePolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachRolePolicyRequest &&
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

class AttachRolePolicyRequestBuilder
    implements
        Builder<AttachRolePolicyRequest, AttachRolePolicyRequestBuilder> {
  _$AttachRolePolicyRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  AttachRolePolicyRequestBuilder() {
    AttachRolePolicyRequest._init(this);
  }

  AttachRolePolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _policyArn = $v.policyArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachRolePolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachRolePolicyRequest;
  }

  @override
  void update(void Function(AttachRolePolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachRolePolicyRequest build() => _build();

  _$AttachRolePolicyRequest _build() {
    final _$result = _$v ??
        new _$AttachRolePolicyRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'AttachRolePolicyRequest', 'roleName'),
            policyArn: BuiltValueNullFieldError.checkNotNull(
                policyArn, r'AttachRolePolicyRequest', 'policyArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
