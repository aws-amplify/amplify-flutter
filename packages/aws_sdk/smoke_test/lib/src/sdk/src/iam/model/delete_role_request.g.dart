// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_role_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteRoleRequest extends DeleteRoleRequest {
  @override
  final String roleName;

  factory _$DeleteRoleRequest(
          [void Function(DeleteRoleRequestBuilder)? updates]) =>
      (new DeleteRoleRequestBuilder()..update(updates))._build();

  _$DeleteRoleRequest._({required this.roleName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'DeleteRoleRequest', 'roleName');
  }

  @override
  DeleteRoleRequest rebuild(void Function(DeleteRoleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRoleRequestBuilder toBuilder() =>
      new DeleteRoleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteRoleRequest && roleName == other.roleName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteRoleRequestBuilder
    implements Builder<DeleteRoleRequest, DeleteRoleRequestBuilder> {
  _$DeleteRoleRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  DeleteRoleRequestBuilder() {
    DeleteRoleRequest._init(this);
  }

  DeleteRoleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteRoleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteRoleRequest;
  }

  @override
  void update(void Function(DeleteRoleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteRoleRequest build() => _build();

  _$DeleteRoleRequest _build() {
    final _$result = _$v ??
        new _$DeleteRoleRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'DeleteRoleRequest', 'roleName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
