// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_user_permissions_boundary_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteUserPermissionsBoundaryRequest
    extends DeleteUserPermissionsBoundaryRequest {
  @override
  final String userName;

  factory _$DeleteUserPermissionsBoundaryRequest(
          [void Function(DeleteUserPermissionsBoundaryRequestBuilder)?
              updates]) =>
      (new DeleteUserPermissionsBoundaryRequestBuilder()..update(updates))
          ._build();

  _$DeleteUserPermissionsBoundaryRequest._({required this.userName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'DeleteUserPermissionsBoundaryRequest', 'userName');
  }

  @override
  DeleteUserPermissionsBoundaryRequest rebuild(
          void Function(DeleteUserPermissionsBoundaryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteUserPermissionsBoundaryRequestBuilder toBuilder() =>
      new DeleteUserPermissionsBoundaryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteUserPermissionsBoundaryRequest &&
        userName == other.userName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteUserPermissionsBoundaryRequestBuilder
    implements
        Builder<DeleteUserPermissionsBoundaryRequest,
            DeleteUserPermissionsBoundaryRequestBuilder> {
  _$DeleteUserPermissionsBoundaryRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  DeleteUserPermissionsBoundaryRequestBuilder() {
    DeleteUserPermissionsBoundaryRequest._init(this);
  }

  DeleteUserPermissionsBoundaryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteUserPermissionsBoundaryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteUserPermissionsBoundaryRequest;
  }

  @override
  void update(
      void Function(DeleteUserPermissionsBoundaryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteUserPermissionsBoundaryRequest build() => _build();

  _$DeleteUserPermissionsBoundaryRequest _build() {
    final _$result = _$v ??
        new _$DeleteUserPermissionsBoundaryRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'DeleteUserPermissionsBoundaryRequest', 'userName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
