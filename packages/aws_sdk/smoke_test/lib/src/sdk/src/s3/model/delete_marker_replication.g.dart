// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_marker_replication;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteMarkerReplication extends DeleteMarkerReplication {
  @override
  final _i2.DeleteMarkerReplicationStatus? status;

  factory _$DeleteMarkerReplication(
          [void Function(DeleteMarkerReplicationBuilder)? updates]) =>
      (new DeleteMarkerReplicationBuilder()..update(updates))._build();

  _$DeleteMarkerReplication._({this.status}) : super._();

  @override
  DeleteMarkerReplication rebuild(
          void Function(DeleteMarkerReplicationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteMarkerReplicationBuilder toBuilder() =>
      new DeleteMarkerReplicationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteMarkerReplication && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteMarkerReplicationBuilder
    implements
        Builder<DeleteMarkerReplication, DeleteMarkerReplicationBuilder> {
  _$DeleteMarkerReplication? _$v;

  _i2.DeleteMarkerReplicationStatus? _status;
  _i2.DeleteMarkerReplicationStatus? get status => _$this._status;
  set status(_i2.DeleteMarkerReplicationStatus? status) =>
      _$this._status = status;

  DeleteMarkerReplicationBuilder() {
    DeleteMarkerReplication._init(this);
  }

  DeleteMarkerReplicationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteMarkerReplication other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteMarkerReplication;
  }

  @override
  void update(void Function(DeleteMarkerReplicationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteMarkerReplication build() => _build();

  _$DeleteMarkerReplication _build() {
    final _$result = _$v ?? new _$DeleteMarkerReplication._(status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
