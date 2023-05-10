// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_role_description_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateRoleDescriptionResponse extends UpdateRoleDescriptionResponse {
  @override
  final _i2.Role? role;

  factory _$UpdateRoleDescriptionResponse(
          [void Function(UpdateRoleDescriptionResponseBuilder)? updates]) =>
      (new UpdateRoleDescriptionResponseBuilder()..update(updates))._build();

  _$UpdateRoleDescriptionResponse._({this.role}) : super._();

  @override
  UpdateRoleDescriptionResponse rebuild(
          void Function(UpdateRoleDescriptionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateRoleDescriptionResponseBuilder toBuilder() =>
      new UpdateRoleDescriptionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateRoleDescriptionResponse && role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateRoleDescriptionResponseBuilder
    implements
        Builder<UpdateRoleDescriptionResponse,
            UpdateRoleDescriptionResponseBuilder> {
  _$UpdateRoleDescriptionResponse? _$v;

  _i2.RoleBuilder? _role;
  _i2.RoleBuilder get role => _$this._role ??= new _i2.RoleBuilder();
  set role(_i2.RoleBuilder? role) => _$this._role = role;

  UpdateRoleDescriptionResponseBuilder() {
    UpdateRoleDescriptionResponse._init(this);
  }

  UpdateRoleDescriptionResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateRoleDescriptionResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateRoleDescriptionResponse;
  }

  @override
  void update(void Function(UpdateRoleDescriptionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateRoleDescriptionResponse build() => _build();

  _$UpdateRoleDescriptionResponse _build() {
    _$UpdateRoleDescriptionResponse _$result;
    try {
      _$result =
          _$v ?? new _$UpdateRoleDescriptionResponse._(role: _role?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'role';
        _role?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateRoleDescriptionResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
