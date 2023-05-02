// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_service_linked_role_deletion_status_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetServiceLinkedRoleDeletionStatusRequest
    extends GetServiceLinkedRoleDeletionStatusRequest {
  @override
  final String deletionTaskId;

  factory _$GetServiceLinkedRoleDeletionStatusRequest(
          [void Function(GetServiceLinkedRoleDeletionStatusRequestBuilder)?
              updates]) =>
      (new GetServiceLinkedRoleDeletionStatusRequestBuilder()..update(updates))
          ._build();

  _$GetServiceLinkedRoleDeletionStatusRequest._({required this.deletionTaskId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(deletionTaskId,
        r'GetServiceLinkedRoleDeletionStatusRequest', 'deletionTaskId');
  }

  @override
  GetServiceLinkedRoleDeletionStatusRequest rebuild(
          void Function(GetServiceLinkedRoleDeletionStatusRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetServiceLinkedRoleDeletionStatusRequestBuilder toBuilder() =>
      new GetServiceLinkedRoleDeletionStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetServiceLinkedRoleDeletionStatusRequest &&
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

class GetServiceLinkedRoleDeletionStatusRequestBuilder
    implements
        Builder<GetServiceLinkedRoleDeletionStatusRequest,
            GetServiceLinkedRoleDeletionStatusRequestBuilder> {
  _$GetServiceLinkedRoleDeletionStatusRequest? _$v;

  String? _deletionTaskId;
  String? get deletionTaskId => _$this._deletionTaskId;
  set deletionTaskId(String? deletionTaskId) =>
      _$this._deletionTaskId = deletionTaskId;

  GetServiceLinkedRoleDeletionStatusRequestBuilder() {
    GetServiceLinkedRoleDeletionStatusRequest._init(this);
  }

  GetServiceLinkedRoleDeletionStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deletionTaskId = $v.deletionTaskId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetServiceLinkedRoleDeletionStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetServiceLinkedRoleDeletionStatusRequest;
  }

  @override
  void update(
      void Function(GetServiceLinkedRoleDeletionStatusRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetServiceLinkedRoleDeletionStatusRequest build() => _build();

  _$GetServiceLinkedRoleDeletionStatusRequest _build() {
    final _$result = _$v ??
        new _$GetServiceLinkedRoleDeletionStatusRequest._(
            deletionTaskId: BuiltValueNullFieldError.checkNotNull(
                deletionTaskId,
                r'GetServiceLinkedRoleDeletionStatusRequest',
                'deletionTaskId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
