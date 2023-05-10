// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.policy_role;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolicyRole extends PolicyRole {
  @override
  final String? roleName;
  @override
  final String? roleId;

  factory _$PolicyRole([void Function(PolicyRoleBuilder)? updates]) =>
      (new PolicyRoleBuilder()..update(updates))._build();

  _$PolicyRole._({this.roleName, this.roleId}) : super._();

  @override
  PolicyRole rebuild(void Function(PolicyRoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolicyRoleBuilder toBuilder() => new PolicyRoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolicyRole &&
        roleName == other.roleName &&
        roleId == other.roleId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PolicyRoleBuilder implements Builder<PolicyRole, PolicyRoleBuilder> {
  _$PolicyRole? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _roleId;
  String? get roleId => _$this._roleId;
  set roleId(String? roleId) => _$this._roleId = roleId;

  PolicyRoleBuilder() {
    PolicyRole._init(this);
  }

  PolicyRoleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _roleId = $v.roleId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolicyRole other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PolicyRole;
  }

  @override
  void update(void Function(PolicyRoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolicyRole build() => _build();

  _$PolicyRole _build() {
    final _$result =
        _$v ?? new _$PolicyRole._(roleName: roleName, roleId: roleId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
