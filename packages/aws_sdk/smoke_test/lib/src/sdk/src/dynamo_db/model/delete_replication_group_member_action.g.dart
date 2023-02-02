// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.delete_replication_group_member_action;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteReplicationGroupMemberAction
    extends DeleteReplicationGroupMemberAction {
  @override
  final String regionName;

  factory _$DeleteReplicationGroupMemberAction(
          [void Function(DeleteReplicationGroupMemberActionBuilder)?
              updates]) =>
      (new DeleteReplicationGroupMemberActionBuilder()..update(updates))
          ._build();

  _$DeleteReplicationGroupMemberAction._({required this.regionName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        regionName, r'DeleteReplicationGroupMemberAction', 'regionName');
  }

  @override
  DeleteReplicationGroupMemberAction rebuild(
          void Function(DeleteReplicationGroupMemberActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteReplicationGroupMemberActionBuilder toBuilder() =>
      new DeleteReplicationGroupMemberActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteReplicationGroupMemberAction &&
        regionName == other.regionName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteReplicationGroupMemberActionBuilder
    implements
        Builder<DeleteReplicationGroupMemberAction,
            DeleteReplicationGroupMemberActionBuilder> {
  _$DeleteReplicationGroupMemberAction? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  DeleteReplicationGroupMemberActionBuilder() {
    DeleteReplicationGroupMemberAction._init(this);
  }

  DeleteReplicationGroupMemberActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionName = $v.regionName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteReplicationGroupMemberAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteReplicationGroupMemberAction;
  }

  @override
  void update(
      void Function(DeleteReplicationGroupMemberActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteReplicationGroupMemberAction build() => _build();

  _$DeleteReplicationGroupMemberAction _build() {
    final _$result = _$v ??
        new _$DeleteReplicationGroupMemberAction._(
            regionName: BuiltValueNullFieldError.checkNotNull(regionName,
                r'DeleteReplicationGroupMemberAction', 'regionName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
