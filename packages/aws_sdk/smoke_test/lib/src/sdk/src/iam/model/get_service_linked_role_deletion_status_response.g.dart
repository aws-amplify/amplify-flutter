// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_service_linked_role_deletion_status_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetServiceLinkedRoleDeletionStatusResponse
    extends GetServiceLinkedRoleDeletionStatusResponse {
  @override
  final DeletionTaskStatusType status;
  @override
  final DeletionTaskFailureReasonType? reason;

  factory _$GetServiceLinkedRoleDeletionStatusResponse(
          [void Function(GetServiceLinkedRoleDeletionStatusResponseBuilder)?
              updates]) =>
      (new GetServiceLinkedRoleDeletionStatusResponseBuilder()..update(updates))
          ._build();

  _$GetServiceLinkedRoleDeletionStatusResponse._(
      {required this.status, this.reason})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, r'GetServiceLinkedRoleDeletionStatusResponse', 'status');
  }

  @override
  GetServiceLinkedRoleDeletionStatusResponse rebuild(
          void Function(GetServiceLinkedRoleDeletionStatusResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetServiceLinkedRoleDeletionStatusResponseBuilder toBuilder() =>
      new GetServiceLinkedRoleDeletionStatusResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetServiceLinkedRoleDeletionStatusResponse &&
        status == other.status &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetServiceLinkedRoleDeletionStatusResponseBuilder
    implements
        Builder<GetServiceLinkedRoleDeletionStatusResponse,
            GetServiceLinkedRoleDeletionStatusResponseBuilder> {
  _$GetServiceLinkedRoleDeletionStatusResponse? _$v;

  DeletionTaskStatusType? _status;
  DeletionTaskStatusType? get status => _$this._status;
  set status(DeletionTaskStatusType? status) => _$this._status = status;

  DeletionTaskFailureReasonTypeBuilder? _reason;
  DeletionTaskFailureReasonTypeBuilder get reason =>
      _$this._reason ??= new DeletionTaskFailureReasonTypeBuilder();
  set reason(DeletionTaskFailureReasonTypeBuilder? reason) =>
      _$this._reason = reason;

  GetServiceLinkedRoleDeletionStatusResponseBuilder();

  GetServiceLinkedRoleDeletionStatusResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _reason = $v.reason?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetServiceLinkedRoleDeletionStatusResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetServiceLinkedRoleDeletionStatusResponse;
  }

  @override
  void update(
      void Function(GetServiceLinkedRoleDeletionStatusResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetServiceLinkedRoleDeletionStatusResponse build() => _build();

  _$GetServiceLinkedRoleDeletionStatusResponse _build() {
    _$GetServiceLinkedRoleDeletionStatusResponse _$result;
    try {
      _$result = _$v ??
          new _$GetServiceLinkedRoleDeletionStatusResponse._(
              status: BuiltValueNullFieldError.checkNotNull(status,
                  r'GetServiceLinkedRoleDeletionStatusResponse', 'status'),
              reason: _reason?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reason';
        _reason?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetServiceLinkedRoleDeletionStatusResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
