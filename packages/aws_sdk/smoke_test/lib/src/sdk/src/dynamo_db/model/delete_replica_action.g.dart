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
    return $jf($jc(0, regionName.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
