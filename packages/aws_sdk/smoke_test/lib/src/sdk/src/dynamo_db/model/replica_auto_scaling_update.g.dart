// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replica_auto_scaling_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaAutoScalingUpdate extends ReplicaAutoScalingUpdate {
  @override
  final String regionName;
  @override
  final _i2.BuiltList<ReplicaGlobalSecondaryIndexAutoScalingUpdate>?
      replicaGlobalSecondaryIndexUpdates;
  @override
  final AutoScalingSettingsUpdate?
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
    var _$hash = 0;
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash = $jc(_$hash, replicaGlobalSecondaryIndexUpdates.hashCode);
    _$hash =
        $jc(_$hash, replicaProvisionedReadCapacityAutoScalingUpdate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicaAutoScalingUpdateBuilder
    implements
        Builder<ReplicaAutoScalingUpdate, ReplicaAutoScalingUpdateBuilder> {
  _$ReplicaAutoScalingUpdate? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  _i2.ListBuilder<ReplicaGlobalSecondaryIndexAutoScalingUpdate>?
      _replicaGlobalSecondaryIndexUpdates;
  _i2.ListBuilder<ReplicaGlobalSecondaryIndexAutoScalingUpdate>
      get replicaGlobalSecondaryIndexUpdates => _$this
              ._replicaGlobalSecondaryIndexUpdates ??=
          new _i2.ListBuilder<ReplicaGlobalSecondaryIndexAutoScalingUpdate>();
  set replicaGlobalSecondaryIndexUpdates(
          _i2.ListBuilder<ReplicaGlobalSecondaryIndexAutoScalingUpdate>?
              replicaGlobalSecondaryIndexUpdates) =>
      _$this._replicaGlobalSecondaryIndexUpdates =
          replicaGlobalSecondaryIndexUpdates;

  AutoScalingSettingsUpdateBuilder?
      _replicaProvisionedReadCapacityAutoScalingUpdate;
  AutoScalingSettingsUpdateBuilder
      get replicaProvisionedReadCapacityAutoScalingUpdate =>
          _$this._replicaProvisionedReadCapacityAutoScalingUpdate ??=
              new AutoScalingSettingsUpdateBuilder();
  set replicaProvisionedReadCapacityAutoScalingUpdate(
          AutoScalingSettingsUpdateBuilder?
              replicaProvisionedReadCapacityAutoScalingUpdate) =>
      _$this._replicaProvisionedReadCapacityAutoScalingUpdate =
          replicaProvisionedReadCapacityAutoScalingUpdate;

  ReplicaAutoScalingUpdateBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
