// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_replication_group_member_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateReplicationGroupMemberAction
    extends CreateReplicationGroupMemberAction {
  @override
  final String regionName;
  @override
  final String? kmsMasterKeyId;
  @override
  final ProvisionedThroughputOverride? provisionedThroughputOverride;
  @override
  final _i2.BuiltList<ReplicaGlobalSecondaryIndex>? globalSecondaryIndexes;
  @override
  final TableClass? tableClassOverride;

  factory _$CreateReplicationGroupMemberAction(
          [void Function(CreateReplicationGroupMemberActionBuilder)?
              updates]) =>
      (new CreateReplicationGroupMemberActionBuilder()..update(updates))
          ._build();

  _$CreateReplicationGroupMemberAction._(
      {required this.regionName,
      this.kmsMasterKeyId,
      this.provisionedThroughputOverride,
      this.globalSecondaryIndexes,
      this.tableClassOverride})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        regionName, r'CreateReplicationGroupMemberAction', 'regionName');
  }

  @override
  CreateReplicationGroupMemberAction rebuild(
          void Function(CreateReplicationGroupMemberActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateReplicationGroupMemberActionBuilder toBuilder() =>
      new CreateReplicationGroupMemberActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateReplicationGroupMemberAction &&
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

class CreateReplicationGroupMemberActionBuilder
    implements
        Builder<CreateReplicationGroupMemberAction,
            CreateReplicationGroupMemberActionBuilder> {
  _$CreateReplicationGroupMemberAction? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  String? _kmsMasterKeyId;
  String? get kmsMasterKeyId => _$this._kmsMasterKeyId;
  set kmsMasterKeyId(String? kmsMasterKeyId) =>
      _$this._kmsMasterKeyId = kmsMasterKeyId;

  ProvisionedThroughputOverrideBuilder? _provisionedThroughputOverride;
  ProvisionedThroughputOverrideBuilder get provisionedThroughputOverride =>
      _$this._provisionedThroughputOverride ??=
          new ProvisionedThroughputOverrideBuilder();
  set provisionedThroughputOverride(
          ProvisionedThroughputOverrideBuilder?
              provisionedThroughputOverride) =>
      _$this._provisionedThroughputOverride = provisionedThroughputOverride;

  _i2.ListBuilder<ReplicaGlobalSecondaryIndex>? _globalSecondaryIndexes;
  _i2.ListBuilder<ReplicaGlobalSecondaryIndex> get globalSecondaryIndexes =>
      _$this._globalSecondaryIndexes ??=
          new _i2.ListBuilder<ReplicaGlobalSecondaryIndex>();
  set globalSecondaryIndexes(
          _i2.ListBuilder<ReplicaGlobalSecondaryIndex>?
              globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  TableClass? _tableClassOverride;
  TableClass? get tableClassOverride => _$this._tableClassOverride;
  set tableClassOverride(TableClass? tableClassOverride) =>
      _$this._tableClassOverride = tableClassOverride;

  CreateReplicationGroupMemberActionBuilder();

  CreateReplicationGroupMemberActionBuilder get _$this {
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
  void replace(CreateReplicationGroupMemberAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateReplicationGroupMemberAction;
  }

  @override
  void update(
      void Function(CreateReplicationGroupMemberActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateReplicationGroupMemberAction build() => _build();

  _$CreateReplicationGroupMemberAction _build() {
    _$CreateReplicationGroupMemberAction _$result;
    try {
      _$result = _$v ??
          new _$CreateReplicationGroupMemberAction._(
              regionName: BuiltValueNullFieldError.checkNotNull(regionName,
                  r'CreateReplicationGroupMemberAction', 'regionName'),
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
            r'CreateReplicationGroupMemberAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
