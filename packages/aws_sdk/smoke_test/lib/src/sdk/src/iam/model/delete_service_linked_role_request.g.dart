// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_service_linked_role_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteServiceLinkedRoleRequest extends DeleteServiceLinkedRoleRequest {
  @override
  final String roleName;

  factory _$DeleteServiceLinkedRoleRequest(
          [void Function(DeleteServiceLinkedRoleRequestBuilder)? updates]) =>
      (new DeleteServiceLinkedRoleRequestBuilder()..update(updates))._build();

  _$DeleteServiceLinkedRoleRequest._({required this.roleName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'DeleteServiceLinkedRoleRequest', 'roleName');
  }

  @override
  DeleteServiceLinkedRoleRequest rebuild(
          void Function(DeleteServiceLinkedRoleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteServiceLinkedRoleRequestBuilder toBuilder() =>
      new DeleteServiceLinkedRoleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteServiceLinkedRoleRequest &&
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

class DeleteServiceLinkedRoleRequestBuilder
    implements
        Builder<DeleteServiceLinkedRoleRequest,
            DeleteServiceLinkedRoleRequestBuilder> {
  _$DeleteServiceLinkedRoleRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  DeleteServiceLinkedRoleRequestBuilder() {
    DeleteServiceLinkedRoleRequest._init(this);
  }

  DeleteServiceLinkedRoleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteServiceLinkedRoleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteServiceLinkedRoleRequest;
  }

  @override
  void update(void Function(DeleteServiceLinkedRoleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteServiceLinkedRoleRequest build() => _build();

  _$DeleteServiceLinkedRoleRequest _build() {
    final _$result = _$v ??
        new _$DeleteServiceLinkedRoleRequest._(
            roleName: BuiltValueNullFieldError.checkNotNull(
                roleName, r'DeleteServiceLinkedRoleRequest', 'roleName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
