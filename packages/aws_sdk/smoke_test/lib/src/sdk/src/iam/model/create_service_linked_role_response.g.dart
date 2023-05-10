// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_service_linked_role_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateServiceLinkedRoleResponse
    extends CreateServiceLinkedRoleResponse {
  @override
  final _i2.Role? role;

  factory _$CreateServiceLinkedRoleResponse(
          [void Function(CreateServiceLinkedRoleResponseBuilder)? updates]) =>
      (new CreateServiceLinkedRoleResponseBuilder()..update(updates))._build();

  _$CreateServiceLinkedRoleResponse._({this.role}) : super._();

  @override
  CreateServiceLinkedRoleResponse rebuild(
          void Function(CreateServiceLinkedRoleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateServiceLinkedRoleResponseBuilder toBuilder() =>
      new CreateServiceLinkedRoleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateServiceLinkedRoleResponse && role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateServiceLinkedRoleResponseBuilder
    implements
        Builder<CreateServiceLinkedRoleResponse,
            CreateServiceLinkedRoleResponseBuilder> {
  _$CreateServiceLinkedRoleResponse? _$v;

  _i2.RoleBuilder? _role;
  _i2.RoleBuilder get role => _$this._role ??= new _i2.RoleBuilder();
  set role(_i2.RoleBuilder? role) => _$this._role = role;

  CreateServiceLinkedRoleResponseBuilder() {
    CreateServiceLinkedRoleResponse._init(this);
  }

  CreateServiceLinkedRoleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateServiceLinkedRoleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateServiceLinkedRoleResponse;
  }

  @override
  void update(void Function(CreateServiceLinkedRoleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateServiceLinkedRoleResponse build() => _build();

  _$CreateServiceLinkedRoleResponse _build() {
    _$CreateServiceLinkedRoleResponse _$result;
    try {
      _$result =
          _$v ?? new _$CreateServiceLinkedRoleResponse._(role: _role?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'role';
        _role?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateServiceLinkedRoleResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
