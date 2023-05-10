// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_service_linked_role_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteServiceLinkedRoleResponse
    extends DeleteServiceLinkedRoleResponse {
  @override
  final String deletionTaskId;

  factory _$DeleteServiceLinkedRoleResponse(
          [void Function(DeleteServiceLinkedRoleResponseBuilder)? updates]) =>
      (new DeleteServiceLinkedRoleResponseBuilder()..update(updates))._build();

  _$DeleteServiceLinkedRoleResponse._({required this.deletionTaskId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deletionTaskId, r'DeleteServiceLinkedRoleResponse', 'deletionTaskId');
  }

  @override
  DeleteServiceLinkedRoleResponse rebuild(
          void Function(DeleteServiceLinkedRoleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteServiceLinkedRoleResponseBuilder toBuilder() =>
      new DeleteServiceLinkedRoleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteServiceLinkedRoleResponse &&
        deletionTaskId == other.deletionTaskId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deletionTaskId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteServiceLinkedRoleResponseBuilder
    implements
        Builder<DeleteServiceLinkedRoleResponse,
            DeleteServiceLinkedRoleResponseBuilder> {
  _$DeleteServiceLinkedRoleResponse? _$v;

  String? _deletionTaskId;
  String? get deletionTaskId => _$this._deletionTaskId;
  set deletionTaskId(String? deletionTaskId) =>
      _$this._deletionTaskId = deletionTaskId;

  DeleteServiceLinkedRoleResponseBuilder() {
    DeleteServiceLinkedRoleResponse._init(this);
  }

  DeleteServiceLinkedRoleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deletionTaskId = $v.deletionTaskId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteServiceLinkedRoleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteServiceLinkedRoleResponse;
  }

  @override
  void update(void Function(DeleteServiceLinkedRoleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteServiceLinkedRoleResponse build() => _build();

  _$DeleteServiceLinkedRoleResponse _build() {
    final _$result = _$v ??
        new _$DeleteServiceLinkedRoleResponse._(
            deletionTaskId: BuiltValueNullFieldError.checkNotNull(
                deletionTaskId,
                r'DeleteServiceLinkedRoleResponse',
                'deletionTaskId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
