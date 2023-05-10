// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_role_permissions_boundary_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteRolePermissionsBoundaryRequest
    extends DeleteRolePermissionsBoundaryRequest {
  @override
  final String roleName;

  factory _$DeleteRolePermissionsBoundaryRequest(
          [void Function(DeleteRolePermissionsBoundaryRequestBuilder)?
              updates]) =>
      (new DeleteRolePermissionsBoundaryRequestBuilder()..update(updates))
          ._build();

  _$DeleteRolePermissionsBoundaryRequest._({required this.roleName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'DeleteRolePermissionsBoundaryRequest', 'roleName');
  }

  @override
  DeleteRolePermissionsBoundaryRequest rebuild(
          void Function(DeleteRolePermissionsBoundaryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRolePermissionsBoundaryRequestBuilder toBuilder() =>
      new DeleteRolePermissionsBoundaryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteRolePermissionsBoundaryRequest &&
        roleName == other.roleName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteRolePermissionsBoundaryRequestBuilder
    implements
        Builder<DeleteRolePermissionsBoundaryRequest,
            DeleteRolePermissionsBoundaryRequestBuilder> {
  _$DeleteRolePermissionsBoundaryRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  DeleteRolePermissionsBoundaryRequestBuilder() {
    DeleteRolePermissionsBoundaryRequest._init(this);
  }

  DeleteRolePermissionsBoundaryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteRolePermissionsBoundaryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteRolePermissionsBoundaryRequest;
  }

  @override
  void update(
      void Function(DeleteRolePermissionsBoundaryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteRolePermissionsBoundaryRequest build() => _build();

  _$DeleteRolePermissionsBoundaryRequest _build() {
    final _$result = _$v ??
        new _$DeleteRolePermissionsBoundaryRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'DeleteRolePermissionsBoundaryRequest', 'roleName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
