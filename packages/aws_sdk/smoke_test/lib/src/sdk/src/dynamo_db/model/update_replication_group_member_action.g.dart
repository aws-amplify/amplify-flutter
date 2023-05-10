// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_replication_group_member_action;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateReplicationGroupMemberAction
    extends UpdateReplicationGroupMemberAction {
  @override
  final String regionName;
  @override
  final String? kmsMasterKeyId;
  @override
  final _i2.ProvisionedThroughputOverride? provisionedThroughputOverride;
  @override
  final _i5.BuiltList<_i3.ReplicaGlobalSecondaryIndex>? globalSecondaryIndexes;
  @override
  final _i4.TableClass? tableClassOverride;

  factory _$UpdateReplicationGroupMemberAction(
          [void Function(UpdateReplicationGroupMemberActionBuilder)?
              updates]) =>
      (new UpdateReplicationGroupMemberActionBuilder()..update(updates))
          ._build();

  _$UpdateReplicationGroupMemberAction._(
      {required this.regionName,
      this.kmsMasterKeyId,
      this.provisionedThroughputOverride,
      this.globalSecondaryIndexes,
      this.tableClassOverride})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        regionName, r'UpdateReplicationGroupMemberAction', 'regionName');
  }

  @override
  UpdateReplicationGroupMemberAction rebuild(
          void Function(UpdateReplicationGroupMemberActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateReplicationGroupMemberActionBuilder toBuilder() =>
      new UpdateReplicationGroupMemberActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateReplicationGroupMemberAction &&
        regionName == other.regionName &&
        kmsMasterKeyId == other.kmsMasterKeyId &&
        provisionedThroughputOverride == other.provisionedThroughputOverride &&
        globalSecondaryIndexes == other.globalSecondaryIndexes &&
        tableClassOverride == other.tableClassOverride;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash = $jc(_$hash, kmsMasterKeyId.hashCode);
    _$hash = $jc(_$hash, provisionedThroughputOverride.hashCode);
    _$hash = $jc(_$hash, globalSecondaryIndexes.hashCode);
    _$hash = $jc(_$hash, tableClassOverride.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateReplicationGroupMemberActionBuilder
    implements
        Builder<UpdateReplicationGroupMemberAction,
            UpdateReplicationGroupMemberActionBuilder> {
  _$UpdateReplicationGroupMemberAction? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  String? _kmsMasterKeyId;
  String? get kmsMasterKeyId => _$this._kmsMasterKeyId;
  set kmsMasterKeyId(String? kmsMasterKeyId) =>
      _$this._kmsMasterKeyId = kmsMasterKeyId;

  _i2.ProvisionedThroughputOverrideBuilder? _provisionedThroughputOverride;
  _i2.ProvisionedThroughputOverrideBuilder get provisionedThroughputOverride =>
      _$this._provisionedThroughputOverride ??=
          new _i2.ProvisionedThroughputOverrideBuilder();
  set provisionedThroughputOverride(
          _i2.ProvisionedThroughputOverrideBuilder?
              provisionedThroughputOverride) =>
      _$this._provisionedThroughputOverride = provisionedThroughputOverride;

  _i5.ListBuilder<_i3.ReplicaGlobalSecondaryIndex>? _globalSecondaryIndexes;
  _i5.ListBuilder<_i3.ReplicaGlobalSecondaryIndex> get globalSecondaryIndexes =>
      _$this._globalSecondaryIndexes ??=
          new _i5.ListBuilder<_i3.ReplicaGlobalSecondaryIndex>();
  set globalSecondaryIndexes(
          _i5.ListBuilder<_i3.ReplicaGlobalSecondaryIndex>?
              globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  _i4.TableClass? _tableClassOverride;
  _i4.TableClass? get tableClassOverride => _$this._tableClassOverride;
  set tableClassOverride(_i4.TableClass? tableClassOverride) =>
      _$this._tableClassOverride = tableClassOverride;

  UpdateReplicationGroupMemberActionBuilder() {
    UpdateReplicationGroupMemberAction._init(this);
  }

  UpdateReplicationGroupMemberActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionName = $v.regionName;
      _kmsMasterKeyId = $v.kmsMasterKeyId;
      _provisionedThroughputOverride =
          $v.provisionedThroughputOverride?.toBuilder();
      _globalSecondaryIndexes = $v.globalSecondaryIndexes?.toBuilder();
      _tableClassOverride = $v.tableClassOverride;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateReplicationGroupMemberAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateReplicationGroupMemberAction;
  }

  @override
  void update(
      void Function(UpdateReplicationGroupMemberActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateReplicationGroupMemberAction build() => _build();

  _$UpdateReplicationGroupMemberAction _build() {
    _$UpdateReplicationGroupMemberAction _$result;
    try {
      _$result = _$v ??
          new _$UpdateReplicationGroupMemberAction._(
              regionName: BuiltValueNullFieldError.checkNotNull(regionName,
                  r'UpdateReplicationGroupMemberAction', 'regionName'),
              kmsMasterKeyId: kmsMasterKeyId,
              provisionedThroughputOverride:
                  _provisionedThroughputOverride?.build(),
              globalSecondaryIndexes: _globalSecondaryIndexes?.build(),
              tableClassOverride: tableClassOverride);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'provisionedThroughputOverride';
        _provisionedThroughputOverride?.build();
        _$failedField = 'globalSecondaryIndexes';
        _globalSecondaryIndexes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateReplicationGroupMemberAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
