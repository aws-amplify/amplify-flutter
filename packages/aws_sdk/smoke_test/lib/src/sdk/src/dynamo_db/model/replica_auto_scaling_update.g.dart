// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.replica_auto_scaling_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaAutoScalingUpdate extends ReplicaAutoScalingUpdate {
  @override
  final String regionName;
  @override
  final _i4.BuiltList<_i2.ReplicaGlobalSecondaryIndexAutoScalingUpdate>?
      replicaGlobalSecondaryIndexUpdates;
  @override
  final _i3.AutoScalingSettingsUpdate?
      replicaProvisionedReadCapacityAutoScalingUpdate;

  factory _$ReplicaAutoScalingUpdate(
          [void Function(ReplicaAutoScalingUpdateBuilder)? updates]) =>
      (new ReplicaAutoScalingUpdateBuilder()..update(updates))._build();

  _$ReplicaAutoScalingUpdate._(
      {required this.regionName,
      this.replicaGlobalSecondaryIndexUpdates,
      this.replicaProvisionedReadCapacityAutoScalingUpdate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        regionName, r'ReplicaAutoScalingUpdate', 'regionName');
  }

  @override
  ReplicaAutoScalingUpdate rebuild(
          void Function(ReplicaAutoScalingUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaAutoScalingUpdateBuilder toBuilder() =>
      new ReplicaAutoScalingUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicaAutoScalingUpdate &&
        regionName == other.regionName &&
        replicaGlobalSecondaryIndexUpdates ==
            other.replicaGlobalSecondaryIndexUpdates &&
        replicaProvisionedReadCapacityAutoScalingUpdate ==
            other.replicaProvisionedReadCapacityAutoScalingUpdate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, regionName.hashCode),
            replicaGlobalSecondaryIndexUpdates.hashCode),
        replicaProvisionedReadCapacityAutoScalingUpdate.hashCode));
  }
}

class ReplicaAutoScalingUpdateBuilder
    implements
        Builder<ReplicaAutoScalingUpdate, ReplicaAutoScalingUpdateBuilder> {
  _$ReplicaAutoScalingUpdate? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  _i4.ListBuilder<_i2.ReplicaGlobalSecondaryIndexAutoScalingUpdate>?
      _replicaGlobalSecondaryIndexUpdates;
  _i4.ListBuilder<_i2.ReplicaGlobalSecondaryIndexAutoScalingUpdate>
      get replicaGlobalSecondaryIndexUpdates =>
          _$this._replicaGlobalSecondaryIndexUpdates ??= new _i4
              .ListBuilder<_i2.ReplicaGlobalSecondaryIndexAutoScalingUpdate>();
  set replicaGlobalSecondaryIndexUpdates(
          _i4.ListBuilder<_i2.ReplicaGlobalSecondaryIndexAutoScalingUpdate>?
              replicaGlobalSecondaryIndexUpdates) =>
      _$this._replicaGlobalSecondaryIndexUpdates =
          replicaGlobalSecondaryIndexUpdates;

  _i3.AutoScalingSettingsUpdateBuilder?
      _replicaProvisionedReadCapacityAutoScalingUpdate;
  _i3.AutoScalingSettingsUpdateBuilder
      get replicaProvisionedReadCapacityAutoScalingUpdate =>
          _$this._replicaProvisionedReadCapacityAutoScalingUpdate ??=
              new _i3.AutoScalingSettingsUpdateBuilder();
  set replicaProvisionedReadCapacityAutoScalingUpdate(
          _i3.AutoScalingSettingsUpdateBuilder?
              replicaProvisionedReadCapacityAutoScalingUpdate) =>
      _$this._replicaProvisionedReadCapacityAutoScalingUpdate =
          replicaProvisionedReadCapacityAutoScalingUpdate;

  ReplicaAutoScalingUpdateBuilder() {
    ReplicaAutoScalingUpdate._init(this);
  }

  ReplicaAutoScalingUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionName = $v.regionName;
      _replicaGlobalSecondaryIndexUpdates =
          $v.replicaGlobalSecondaryIndexUpdates?.toBuilder();
      _replicaProvisionedReadCapacityAutoScalingUpdate =
          $v.replicaProvisionedReadCapacityAutoScalingUpdate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicaAutoScalingUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicaAutoScalingUpdate;
  }

  @override
  void update(void Function(ReplicaAutoScalingUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicaAutoScalingUpdate build() => _build();

  _$ReplicaAutoScalingUpdate _build() {
    _$ReplicaAutoScalingUpdate _$result;
    try {
      _$result = _$v ??
          new _$ReplicaAutoScalingUpdate._(
              regionName: BuiltValueNullFieldError.checkNotNull(
                  regionName, r'ReplicaAutoScalingUpdate', 'regionName'),
              replicaGlobalSecondaryIndexUpdates:
                  _replicaGlobalSecondaryIndexUpdates?.build(),
              replicaProvisionedReadCapacityAutoScalingUpdate:
                  _replicaProvisionedReadCapacityAutoScalingUpdate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replicaGlobalSecondaryIndexUpdates';
        _replicaGlobalSecondaryIndexUpdates?.build();
        _$failedField = 'replicaProvisionedReadCapacityAutoScalingUpdate';
        _replicaProvisionedReadCapacityAutoScalingUpdate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicaAutoScalingUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
