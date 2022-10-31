// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.replica_settings_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaSettingsUpdate extends ReplicaSettingsUpdate {
  @override
  final String regionName;
  @override
  final _i6.BuiltList<_i2.ReplicaGlobalSecondaryIndexSettingsUpdate>?
      replicaGlobalSecondaryIndexSettingsUpdate;
  @override
  final _i3.AutoScalingSettingsUpdate?
      replicaProvisionedReadCapacityAutoScalingSettingsUpdate;
  @override
  final _i4.Int64? replicaProvisionedReadCapacityUnits;
  @override
  final _i5.TableClass? replicaTableClass;

  factory _$ReplicaSettingsUpdate(
          [void Function(ReplicaSettingsUpdateBuilder)? updates]) =>
      (new ReplicaSettingsUpdateBuilder()..update(updates))._build();

  _$ReplicaSettingsUpdate._(
      {required this.regionName,
      this.replicaGlobalSecondaryIndexSettingsUpdate,
      this.replicaProvisionedReadCapacityAutoScalingSettingsUpdate,
      this.replicaProvisionedReadCapacityUnits,
      this.replicaTableClass})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        regionName, r'ReplicaSettingsUpdate', 'regionName');
  }

  @override
  ReplicaSettingsUpdate rebuild(
          void Function(ReplicaSettingsUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaSettingsUpdateBuilder toBuilder() =>
      new ReplicaSettingsUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicaSettingsUpdate &&
        regionName == other.regionName &&
        replicaGlobalSecondaryIndexSettingsUpdate ==
            other.replicaGlobalSecondaryIndexSettingsUpdate &&
        replicaProvisionedReadCapacityAutoScalingSettingsUpdate ==
            other.replicaProvisionedReadCapacityAutoScalingSettingsUpdate &&
        replicaProvisionedReadCapacityUnits ==
            other.replicaProvisionedReadCapacityUnits &&
        replicaTableClass == other.replicaTableClass;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, regionName.hashCode),
                    replicaGlobalSecondaryIndexSettingsUpdate.hashCode),
                replicaProvisionedReadCapacityAutoScalingSettingsUpdate
                    .hashCode),
            replicaProvisionedReadCapacityUnits.hashCode),
        replicaTableClass.hashCode));
  }
}

class ReplicaSettingsUpdateBuilder
    implements Builder<ReplicaSettingsUpdate, ReplicaSettingsUpdateBuilder> {
  _$ReplicaSettingsUpdate? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  _i6.ListBuilder<_i2.ReplicaGlobalSecondaryIndexSettingsUpdate>?
      _replicaGlobalSecondaryIndexSettingsUpdate;
  _i6.ListBuilder<_i2.ReplicaGlobalSecondaryIndexSettingsUpdate>
      get replicaGlobalSecondaryIndexSettingsUpdate => _$this
              ._replicaGlobalSecondaryIndexSettingsUpdate ??=
          new _i6.ListBuilder<_i2.ReplicaGlobalSecondaryIndexSettingsUpdate>();
  set replicaGlobalSecondaryIndexSettingsUpdate(
          _i6.ListBuilder<_i2.ReplicaGlobalSecondaryIndexSettingsUpdate>?
              replicaGlobalSecondaryIndexSettingsUpdate) =>
      _$this._replicaGlobalSecondaryIndexSettingsUpdate =
          replicaGlobalSecondaryIndexSettingsUpdate;

  _i3.AutoScalingSettingsUpdateBuilder?
      _replicaProvisionedReadCapacityAutoScalingSettingsUpdate;
  _i3.AutoScalingSettingsUpdateBuilder
      get replicaProvisionedReadCapacityAutoScalingSettingsUpdate =>
          _$this._replicaProvisionedReadCapacityAutoScalingSettingsUpdate ??=
              new _i3.AutoScalingSettingsUpdateBuilder();
  set replicaProvisionedReadCapacityAutoScalingSettingsUpdate(
          _i3.AutoScalingSettingsUpdateBuilder?
              replicaProvisionedReadCapacityAutoScalingSettingsUpdate) =>
      _$this._replicaProvisionedReadCapacityAutoScalingSettingsUpdate =
          replicaProvisionedReadCapacityAutoScalingSettingsUpdate;

  _i4.Int64? _replicaProvisionedReadCapacityUnits;
  _i4.Int64? get replicaProvisionedReadCapacityUnits =>
      _$this._replicaProvisionedReadCapacityUnits;
  set replicaProvisionedReadCapacityUnits(
          _i4.Int64? replicaProvisionedReadCapacityUnits) =>
      _$this._replicaProvisionedReadCapacityUnits =
          replicaProvisionedReadCapacityUnits;

  _i5.TableClass? _replicaTableClass;
  _i5.TableClass? get replicaTableClass => _$this._replicaTableClass;
  set replicaTableClass(_i5.TableClass? replicaTableClass) =>
      _$this._replicaTableClass = replicaTableClass;

  ReplicaSettingsUpdateBuilder() {
    ReplicaSettingsUpdate._init(this);
  }

  ReplicaSettingsUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionName = $v.regionName;
      _replicaGlobalSecondaryIndexSettingsUpdate =
          $v.replicaGlobalSecondaryIndexSettingsUpdate?.toBuilder();
      _replicaProvisionedReadCapacityAutoScalingSettingsUpdate = $v
          .replicaProvisionedReadCapacityAutoScalingSettingsUpdate
          ?.toBuilder();
      _replicaProvisionedReadCapacityUnits =
          $v.replicaProvisionedReadCapacityUnits;
      _replicaTableClass = $v.replicaTableClass;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicaSettingsUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicaSettingsUpdate;
  }

  @override
  void update(void Function(ReplicaSettingsUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicaSettingsUpdate build() => _build();

  _$ReplicaSettingsUpdate _build() {
    _$ReplicaSettingsUpdate _$result;
    try {
      _$result = _$v ??
          new _$ReplicaSettingsUpdate._(
              regionName: BuiltValueNullFieldError.checkNotNull(
                  regionName, r'ReplicaSettingsUpdate', 'regionName'),
              replicaGlobalSecondaryIndexSettingsUpdate:
                  _replicaGlobalSecondaryIndexSettingsUpdate?.build(),
              replicaProvisionedReadCapacityAutoScalingSettingsUpdate:
                  _replicaProvisionedReadCapacityAutoScalingSettingsUpdate
                      ?.build(),
              replicaProvisionedReadCapacityUnits:
                  replicaProvisionedReadCapacityUnits,
              replicaTableClass: replicaTableClass);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replicaGlobalSecondaryIndexSettingsUpdate';
        _replicaGlobalSecondaryIndexSettingsUpdate?.build();
        _$failedField =
            'replicaProvisionedReadCapacityAutoScalingSettingsUpdate';
        _replicaProvisionedReadCapacityAutoScalingSettingsUpdate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicaSettingsUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
