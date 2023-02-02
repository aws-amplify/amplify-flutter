// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.replication_group_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicationGroupUpdate extends ReplicationGroupUpdate {
  @override
  final _i2.CreateReplicationGroupMemberAction? create;
  @override
  final _i3.DeleteReplicationGroupMemberAction? delete;
  @override
  final _i4.UpdateReplicationGroupMemberAction? update_;

  factory _$ReplicationGroupUpdate(
          [void Function(ReplicationGroupUpdateBuilder)? updates]) =>
      (new ReplicationGroupUpdateBuilder()..update(updates))._build();

  _$ReplicationGroupUpdate._({this.create, this.delete, this.update_})
      : super._();

  @override
  ReplicationGroupUpdate rebuild(
          void Function(ReplicationGroupUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicationGroupUpdateBuilder toBuilder() =>
      new ReplicationGroupUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicationGroupUpdate &&
        create == other.create &&
        delete == other.delete &&
        update_ == other.update_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, create.hashCode);
    _$hash = $jc(_$hash, delete.hashCode);
    _$hash = $jc(_$hash, update_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicationGroupUpdateBuilder
    implements Builder<ReplicationGroupUpdate, ReplicationGroupUpdateBuilder> {
  _$ReplicationGroupUpdate? _$v;

  _i2.CreateReplicationGroupMemberActionBuilder? _create;
  _i2.CreateReplicationGroupMemberActionBuilder get create =>
      _$this._create ??= new _i2.CreateReplicationGroupMemberActionBuilder();
  set create(_i2.CreateReplicationGroupMemberActionBuilder? create) =>
      _$this._create = create;

  _i3.DeleteReplicationGroupMemberActionBuilder? _delete;
  _i3.DeleteReplicationGroupMemberActionBuilder get delete =>
      _$this._delete ??= new _i3.DeleteReplicationGroupMemberActionBuilder();
  set delete(_i3.DeleteReplicationGroupMemberActionBuilder? delete) =>
      _$this._delete = delete;

  _i4.UpdateReplicationGroupMemberActionBuilder? _update_;
  _i4.UpdateReplicationGroupMemberActionBuilder get update_ =>
      _$this._update_ ??= new _i4.UpdateReplicationGroupMemberActionBuilder();
  set update_(_i4.UpdateReplicationGroupMemberActionBuilder? update_) =>
      _$this._update_ = update_;

  ReplicationGroupUpdateBuilder() {
    ReplicationGroupUpdate._init(this);
  }

  ReplicationGroupUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _create = $v.create?.toBuilder();
      _delete = $v.delete?.toBuilder();
      _update_ = $v.update_?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicationGroupUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicationGroupUpdate;
  }

  @override
  void update(void Function(ReplicationGroupUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicationGroupUpdate build() => _build();

  _$ReplicationGroupUpdate _build() {
    _$ReplicationGroupUpdate _$result;
    try {
      _$result = _$v ??
          new _$ReplicationGroupUpdate._(
              create: _create?.build(),
              delete: _delete?.build(),
              update_: _update_?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'create';
        _create?.build();
        _$failedField = 'delete';
        _delete?.build();
        _$failedField = 'update_';
        _update_?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicationGroupUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
