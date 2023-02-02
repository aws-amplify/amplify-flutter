// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.delete_replica_action;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteReplicaAction extends DeleteReplicaAction {
  @override
  final String regionName;

  factory _$DeleteReplicaAction(
          [void Function(DeleteReplicaActionBuilder)? updates]) =>
      (new DeleteReplicaActionBuilder()..update(updates))._build();

  _$DeleteReplicaAction._({required this.regionName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        regionName, r'DeleteReplicaAction', 'regionName');
  }

  @override
  DeleteReplicaAction rebuild(
          void Function(DeleteReplicaActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteReplicaActionBuilder toBuilder() =>
      new DeleteReplicaActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteReplicaAction && regionName == other.regionName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteReplicaActionBuilder
    implements Builder<DeleteReplicaAction, DeleteReplicaActionBuilder> {
  _$DeleteReplicaAction? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  DeleteReplicaActionBuilder() {
    DeleteReplicaAction._init(this);
  }

  DeleteReplicaActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionName = $v.regionName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteReplicaAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteReplicaAction;
  }

  @override
  void update(void Function(DeleteReplicaActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteReplicaAction build() => _build();

  _$DeleteReplicaAction _build() {
    final _$result = _$v ??
        new _$DeleteReplicaAction._(
            regionName: BuiltValueNullFieldError.checkNotNull(
                regionName, r'DeleteReplicaAction', 'regionName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
