// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replica_settings_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaSettingsUpdate extends ReplicaSettingsUpdate {
  @override
  final String regionName;
  @override
  final _i2.Int64? replicaProvisionedReadCapacityUnits;
  @override
  final _i3.AutoScalingSettingsUpdate?
      replicaProvisionedReadCapacityAutoScalingSettingsUpdate;
  @override
  final _i6.BuiltList<_i4.ReplicaGlobalSecondaryIndexSettingsUpdate>?
      replicaGlobalSecondaryIndexSettingsUpdate;
  @override
  final _i5.TableClass? replicaTableClass;

  factory _$ReplicaSettingsUpdate(
          [void Function(ReplicaSettingsUpdateBuilder)? updates]) =>
      (new ReplicaSettingsUpdateBuilder()..update(updates))._build();

  _$ReplicaSettingsUpdate._(
      {required this.regionName,
      this.replicaProvisionedReadCapacityUnits,
      this.replicaProvisionedReadCapacityAutoScalingSettingsUpdate,
      this.replicaGlobalSecondaryIndexSettingsUpdate,
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
        replicaProvisionedReadCapacityUnits ==
            other.replicaProvisionedReadCapacityUnits &&
        replicaProvisionedReadCapacityAutoScalingSettingsUpdate ==
            other.replicaProvisionedReadCapacityAutoScalingSettingsUpdate &&
        replicaGlobalSecondaryIndexSettingsUpdate ==
            other.replicaGlobalSecondaryIndexSettingsUpdate &&
        replicaTableClass == other.replicaTableClass;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash = $jc(_$hash, replicaProvisionedReadCapacityUnits.hashCode);
    _$hash = $jc(_$hash,
        replicaProvisionedReadCapacityAutoScalingSettingsUpdate.hashCode);
    _$hash = $jc(_$hash, replicaGlobalSecondaryIndexSettingsUpdate.hashCode);
    _$hash = $jc(_$hash, replicaTableClass.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicaSettingsUpdateBuilder
    implements Builder<ReplicaSettingsUpdate, ReplicaSettingsUpdateBuilder> {
  _$ReplicaSettingsUpdate? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  _i2.Int64? _replicaProvisionedReadCapacityUnits;
  _i2.Int64? get replicaProvisionedReadCapacityUnits =>
      _$this._replicaProvisionedReadCapacityUnits;
  set replicaProvisionedReadCapacityUnits(
          _i2.Int64? replicaProvisionedReadCapacityUnits) =>
      _$this._replicaProvisionedReadCapacityUnits =
          replicaProvisionedReadCapacityUnits;

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

  _i6.ListBuilder<_i4.ReplicaGlobalSecondaryIndexSettingsUpdate>?
      _replicaGlobalSecondaryIndexSettingsUpdate;
  _i6.ListBuilder<_i4.ReplicaGlobalSecondaryIndexSettingsUpdate>
      get replicaGlobalSecondaryIndexSettingsUpdate => _$this
              ._replicaGlobalSecondaryIndexSettingsUpdate ??=
          new _i6.ListBuilder<_i4.ReplicaGlobalSecondaryIndexSettingsUpdate>();
  set replicaGlobalSecondaryIndexSettingsUpdate(
          _i6.ListBuilder<_i4.ReplicaGlobalSecondaryIndexSettingsUpdate>?
              replicaGlobalSecondaryIndexSettingsUpdate) =>
      _$this._replicaGlobalSecondaryIndexSettingsUpdate =
          replicaGlobalSecondaryIndexSettingsUpdate;

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
      _replicaProvisionedReadCapacityUnits =
          $v.replicaProvisionedReadCapacityUnits;
      _replicaProvisionedReadCapacityAutoScalingSettingsUpdate = $v
          .replicaProvisionedReadCapacityAutoScalingSettingsUpdate
          ?.toBuilder();
      _replicaGlobalSecondaryIndexSettingsUpdate =
          $v.replicaGlobalSecondaryIndexSettingsUpdate?.toBuilder();
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
              replicaProvisionedReadCapacityUnits:
                  replicaProvisionedReadCapacityUnits,
              replicaProvisionedReadCapacityAutoScalingSettingsUpdate:
                  _replicaProvisionedReadCapacityAutoScalingSettingsUpdate
                      ?.build(),
              replicaGlobalSecondaryIndexSettingsUpdate:
                  _replicaGlobalSecondaryIndexSettingsUpdate?.build(),
              replicaTableClass: replicaTableClass);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField =
            'replicaProvisionedReadCapacityAutoScalingSettingsUpdate';
        _replicaProvisionedReadCapacityAutoScalingSettingsUpdate?.build();
        _$failedField = 'replicaGlobalSecondaryIndexSettingsUpdate';
        _replicaGlobalSecondaryIndexSettingsUpdate?.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
