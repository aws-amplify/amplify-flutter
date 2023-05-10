// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_role_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRoleResponse extends GetRoleResponse {
  @override
  final _i2.Role role;

  factory _$GetRoleResponse([void Function(GetRoleResponseBuilder)? updates]) =>
      (new GetRoleResponseBuilder()..update(updates))._build();

  _$GetRoleResponse._({required this.role}) : super._() {
    BuiltValueNullFieldError.checkNotNull(role, r'GetRoleResponse', 'role');
  }

  @override
  GetRoleResponse rebuild(void Function(GetRoleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRoleResponseBuilder toBuilder() =>
      new GetRoleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRoleResponse && role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetRoleResponseBuilder
    implements Builder<GetRoleResponse, GetRoleResponseBuilder> {
  _$GetRoleResponse? _$v;

  _i2.RoleBuilder? _role;
  _i2.RoleBuilder get role => _$this._role ??= new _i2.RoleBuilder();
  set role(_i2.RoleBuilder? role) => _$this._role = role;

  GetRoleResponseBuilder() {
    GetRoleResponse._init(this);
  }

  GetRoleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRoleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRoleResponse;
  }

  @override
  void update(void Function(GetRoleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRoleResponse build() => _build();

  _$GetRoleResponse _build() {
    _$GetRoleResponse _$result;
    try {
      _$result = _$v ?? new _$GetRoleResponse._(role: role.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'role';
        role.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetRoleResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
