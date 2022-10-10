// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.create_replication_group_member_action;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateReplicationGroupMemberAction
    extends CreateReplicationGroupMemberAction {
  @override
  final _i5.BuiltList<_i2.ReplicaGlobalSecondaryIndex>? globalSecondaryIndexes;
  @override
  final String? kmsMasterKeyId;
  @override
  final _i3.ProvisionedThroughputOverride? provisionedThroughputOverride;
  @override
  final String regionName;
  @override
  final _i4.TableClass? tableClassOverride;

  factory _$CreateReplicationGroupMemberAction(
          [void Function(CreateReplicationGroupMemberActionBuilder)?
              updates]) =>
      (new CreateReplicationGroupMemberActionBuilder()..update(updates))
          ._build();

  _$CreateReplicationGroupMemberAction._(
      {this.globalSecondaryIndexes,
      this.kmsMasterKeyId,
      this.provisionedThroughputOverride,
      required this.regionName,
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
        globalSecondaryIndexes == other.globalSecondaryIndexes &&
        kmsMasterKeyId == other.kmsMasterKeyId &&
        provisionedThroughputOverride == other.provisionedThroughputOverride &&
        regionName == other.regionName &&
        tableClassOverride == other.tableClassOverride;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, globalSecondaryIndexes.hashCode),
                    kmsMasterKeyId.hashCode),
                provisionedThroughputOverride.hashCode),
            regionName.hashCode),
        tableClassOverride.hashCode));
  }
}

class CreateReplicationGroupMemberActionBuilder
    implements
        Builder<CreateReplicationGroupMemberAction,
            CreateReplicationGroupMemberActionBuilder> {
  _$CreateReplicationGroupMemberAction? _$v;

  _i5.ListBuilder<_i2.ReplicaGlobalSecondaryIndex>? _globalSecondaryIndexes;
  _i5.ListBuilder<_i2.ReplicaGlobalSecondaryIndex> get globalSecondaryIndexes =>
      _$this._globalSecondaryIndexes ??=
          new _i5.ListBuilder<_i2.ReplicaGlobalSecondaryIndex>();
  set globalSecondaryIndexes(
          _i5.ListBuilder<_i2.ReplicaGlobalSecondaryIndex>?
              globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  String? _kmsMasterKeyId;
  String? get kmsMasterKeyId => _$this._kmsMasterKeyId;
  set kmsMasterKeyId(String? kmsMasterKeyId) =>
      _$this._kmsMasterKeyId = kmsMasterKeyId;

  _i3.ProvisionedThroughputOverrideBuilder? _provisionedThroughputOverride;
  _i3.ProvisionedThroughputOverrideBuilder get provisionedThroughputOverride =>
      _$this._provisionedThroughputOverride ??=
          new _i3.ProvisionedThroughputOverrideBuilder();
  set provisionedThroughputOverride(
          _i3.ProvisionedThroughputOverrideBuilder?
              provisionedThroughputOverride) =>
      _$this._provisionedThroughputOverride = provisionedThroughputOverride;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  _i4.TableClass? _tableClassOverride;
  _i4.TableClass? get tableClassOverride => _$this._tableClassOverride;
  set tableClassOverride(_i4.TableClass? tableClassOverride) =>
      _$this._tableClassOverride = tableClassOverride;

  CreateReplicationGroupMemberActionBuilder() {
    CreateReplicationGroupMemberAction._init(this);
  }

  CreateReplicationGroupMemberActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalSecondaryIndexes = $v.globalSecondaryIndexes?.toBuilder();
      _kmsMasterKeyId = $v.kmsMasterKeyId;
      _provisionedThroughputOverride =
          $v.provisionedThroughputOverride?.toBuilder();
      _regionName = $v.regionName;
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
              globalSecondaryIndexes: _globalSecondaryIndexes?.build(),
              kmsMasterKeyId: kmsMasterKeyId,
              provisionedThroughputOverride:
                  _provisionedThroughputOverride?.build(),
              regionName: BuiltValueNullFieldError.checkNotNull(regionName,
                  r'CreateReplicationGroupMemberAction', 'regionName'),
              tableClassOverride: tableClassOverride);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'globalSecondaryIndexes';
        _globalSecondaryIndexes?.build();

        _$failedField = 'provisionedThroughputOverride';
        _provisionedThroughputOverride?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
