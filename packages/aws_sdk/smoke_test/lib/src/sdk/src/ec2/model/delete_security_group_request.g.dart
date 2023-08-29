// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_security_group_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteSecurityGroupRequest extends DeleteSecurityGroupRequest {
  @override
  final String? groupId;
  @override
  final String? groupName;
  @override
  final bool dryRun;

  factory _$DeleteSecurityGroupRequest(
          [void Function(DeleteSecurityGroupRequestBuilder)? updates]) =>
      (new DeleteSecurityGroupRequestBuilder()..update(updates))._build();

  _$DeleteSecurityGroupRequest._(
      {this.groupId, this.groupName, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteSecurityGroupRequest', 'dryRun');
  }

  @override
  DeleteSecurityGroupRequest rebuild(
          void Function(DeleteSecurityGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteSecurityGroupRequestBuilder toBuilder() =>
      new DeleteSecurityGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteSecurityGroupRequest &&
        groupId == other.groupId &&
        groupName == other.groupName &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteSecurityGroupRequestBuilder
    implements
        Builder<DeleteSecurityGroupRequest, DeleteSecurityGroupRequestBuilder> {
  _$DeleteSecurityGroupRequest? _$v;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteSecurityGroupRequestBuilder() {
    DeleteSecurityGroupRequest._init(this);
  }

  DeleteSecurityGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupId = $v.groupId;
      _groupName = $v.groupName;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteSecurityGroupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteSecurityGroupRequest;
  }

  @override
  void update(void Function(DeleteSecurityGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteSecurityGroupRequest build() => _build();

  _$DeleteSecurityGroupRequest _build() {
    final _$result = _$v ??
        new _$DeleteSecurityGroupRequest._(
            groupId: groupId,
            groupName: groupName,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteSecurityGroupRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
