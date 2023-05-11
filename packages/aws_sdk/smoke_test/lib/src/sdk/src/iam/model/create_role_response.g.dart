// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_role_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateRoleResponse extends CreateRoleResponse {
  @override
  final _i2.Role role;

  factory _$CreateRoleResponse(
          [void Function(CreateRoleResponseBuilder)? updates]) =>
      (new CreateRoleResponseBuilder()..update(updates))._build();

  _$CreateRoleResponse._({required this.role}) : super._() {
    BuiltValueNullFieldError.checkNotNull(role, r'CreateRoleResponse', 'role');
  }

  @override
  CreateRoleResponse rebuild(
          void Function(CreateRoleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRoleResponseBuilder toBuilder() =>
      new CreateRoleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRoleResponse && role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateRoleResponseBuilder
    implements Builder<CreateRoleResponse, CreateRoleResponseBuilder> {
  _$CreateRoleResponse? _$v;

  _i2.RoleBuilder? _role;
  _i2.RoleBuilder get role => _$this._role ??= new _i2.RoleBuilder();
  set role(_i2.RoleBuilder? role) => _$this._role = role;

  CreateRoleResponseBuilder() {
    CreateRoleResponse._init(this);
  }

  CreateRoleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRoleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRoleResponse;
  }

  @override
  void update(void Function(CreateRoleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateRoleResponse build() => _build();

  _$CreateRoleResponse _build() {
    _$CreateRoleResponse _$result;
    try {
      _$result = _$v ?? new _$CreateRoleResponse._(role: role.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'role';
        role.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateRoleResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
