// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.put_role_permissions_boundary_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRolePermissionsBoundaryRequest
    extends PutRolePermissionsBoundaryRequest {
  @override
  final String roleName;
  @override
  final String permissionsBoundary;

  factory _$PutRolePermissionsBoundaryRequest(
          [void Function(PutRolePermissionsBoundaryRequestBuilder)? updates]) =>
      (new PutRolePermissionsBoundaryRequestBuilder()..update(updates))
          ._build();

  _$PutRolePermissionsBoundaryRequest._(
      {required this.roleName, required this.permissionsBoundary})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'PutRolePermissionsBoundaryRequest', 'roleName');
    BuiltValueNullFieldError.checkNotNull(permissionsBoundary,
        r'PutRolePermissionsBoundaryRequest', 'permissionsBoundary');
  }

  @override
  PutRolePermissionsBoundaryRequest rebuild(
          void Function(PutRolePermissionsBoundaryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRolePermissionsBoundaryRequestBuilder toBuilder() =>
      new PutRolePermissionsBoundaryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRolePermissionsBoundaryRequest &&
        roleName == other.roleName &&
        permissionsBoundary == other.permissionsBoundary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, permissionsBoundary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutRolePermissionsBoundaryRequestBuilder
    implements
        Builder<PutRolePermissionsBoundaryRequest,
            PutRolePermissionsBoundaryRequestBuilder> {
  _$PutRolePermissionsBoundaryRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _permissionsBoundary;
  String? get permissionsBoundary => _$this._permissionsBoundary;
  set permissionsBoundary(String? permissionsBoundary) =>
      _$this._permissionsBoundary = permissionsBoundary;

  PutRolePermissionsBoundaryRequestBuilder() {
    PutRolePermissionsBoundaryRequest._init(this);
  }

  PutRolePermissionsBoundaryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _permissionsBoundary = $v.permissionsBoundary;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRolePermissionsBoundaryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutRolePermissionsBoundaryRequest;
  }

  @override
  void update(
      void Function(PutRolePermissionsBoundaryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRolePermissionsBoundaryRequest build() => _build();

  _$PutRolePermissionsBoundaryRequest _build() {
    final _$result = _$v ??
        new _$PutRolePermissionsBoundaryRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'PutRolePermissionsBoundaryRequest', 'roleName'),
            permissionsBoundary: BuiltValueNullFieldError.checkNotNull(
                permissionsBoundary,
                r'PutRolePermissionsBoundaryRequest',
                'permissionsBoundary'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
