// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_role_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRolePolicyRequest extends GetRolePolicyRequest {
  @override
  final String roleName;
  @override
  final String policyName;

  factory _$GetRolePolicyRequest(
          [void Function(GetRolePolicyRequestBuilder)? updates]) =>
      (new GetRolePolicyRequestBuilder()..update(updates))._build();

  _$GetRolePolicyRequest._({required this.roleName, required this.policyName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'GetRolePolicyRequest', 'roleName');
    BuiltValueNullFieldError.checkNotNull(
        policyName, r'GetRolePolicyRequest', 'policyName');
  }

  @override
  GetRolePolicyRequest rebuild(
          void Function(GetRolePolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRolePolicyRequestBuilder toBuilder() =>
      new GetRolePolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRolePolicyRequest &&
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

class GetRolePolicyRequestBuilder
    implements Builder<GetRolePolicyRequest, GetRolePolicyRequestBuilder> {
  _$GetRolePolicyRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  GetRolePolicyRequestBuilder() {
    GetRolePolicyRequest._init(this);
  }

  GetRolePolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _policyName = $v.policyName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRolePolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRolePolicyRequest;
  }

  @override
  void update(void Function(GetRolePolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRolePolicyRequest build() => _build();

  _$GetRolePolicyRequest _build() {
    final _$result = _$v ??
        new _$GetRolePolicyRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'GetRolePolicyRequest', 'roleName'),
            policyName: BuiltValueNullFieldError.checkNotNull(
                policyName, r'GetRolePolicyRequest', 'policyName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
