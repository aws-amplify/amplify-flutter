// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_role_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteRolePolicyRequest extends DeleteRolePolicyRequest {
  @override
  final String roleName;
  @override
  final String policyName;

  factory _$DeleteRolePolicyRequest(
          [void Function(DeleteRolePolicyRequestBuilder)? updates]) =>
      (new DeleteRolePolicyRequestBuilder()..update(updates))._build();

  _$DeleteRolePolicyRequest._(
      {required this.roleName, required this.policyName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'DeleteRolePolicyRequest', 'roleName');
    BuiltValueNullFieldError.checkNotNull(
        policyName, r'DeleteRolePolicyRequest', 'policyName');
  }

  @override
  DeleteRolePolicyRequest rebuild(
          void Function(DeleteRolePolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRolePolicyRequestBuilder toBuilder() =>
      new DeleteRolePolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteRolePolicyRequest &&
        roleName == other.roleName &&
        policyName == other.policyName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteRolePolicyRequestBuilder
    implements
        Builder<DeleteRolePolicyRequest, DeleteRolePolicyRequestBuilder> {
  _$DeleteRolePolicyRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  DeleteRolePolicyRequestBuilder() {
    DeleteRolePolicyRequest._init(this);
  }

  DeleteRolePolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _policyName = $v.policyName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteRolePolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteRolePolicyRequest;
  }

  @override
  void update(void Function(DeleteRolePolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteRolePolicyRequest build() => _build();

  _$DeleteRolePolicyRequest _build() {
    final _$result = _$v ??
        new _$DeleteRolePolicyRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'DeleteRolePolicyRequest', 'roleName'),
            policyName: BuiltValueNullFieldError.checkNotNull(
                policyName, r'DeleteRolePolicyRequest', 'policyName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
