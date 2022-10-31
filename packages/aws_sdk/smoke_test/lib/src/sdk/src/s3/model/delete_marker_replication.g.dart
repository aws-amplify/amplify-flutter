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
    return $jf($jc(0, status.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
