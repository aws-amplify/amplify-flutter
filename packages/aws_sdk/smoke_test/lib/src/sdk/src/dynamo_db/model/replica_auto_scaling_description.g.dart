// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.replica_auto_scaling_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaAutoScalingDescription extends ReplicaAutoScalingDescription {
  @override
  final _i5.BuiltList<_i2.ReplicaGlobalSecondaryIndexAutoScalingDescription>?
      globalSecondaryIndexes;
  @override
  final String? regionName;
  @override
  final _i3.AutoScalingSettingsDescription?
      replicaProvisionedReadCapacityAutoScalingSettings;
  @override
  final _i3.AutoScalingSettingsDescription?
      replicaProvisionedWriteCapacityAutoScalingSettings;
  @override
  final _i4.ReplicaStatus? replicaStatus;

  factory _$ReplicaAutoScalingDescription(
          [void Function(ReplicaAutoScalingDescriptionBuilder)? updates]) =>
      (new ReplicaAutoScalingDescriptionBuilder()..update(updates))._build();

  _$ReplicaAutoScalingDescription._(
      {this.globalSecondaryIndexes,
      this.regionName,
      this.replicaProvisionedReadCapacityAutoScalingSettings,
      this.replicaProvisionedWriteCapacityAutoScalingSettings,
      this.replicaStatus})
      : super._();

  @override
  ReplicaAutoScalingDescription rebuild(
          void Function(ReplicaAutoScalingDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaAutoScalingDescriptionBuilder toBuilder() =>
      new ReplicaAutoScalingDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicaAutoScalingDescription &&
        globalSecondaryIndexes == other.globalSecondaryIndexes &&
        regionName == other.regionName &&
        replicaProvisionedReadCapacityAutoScalingSettings ==
            other.replicaProvisionedReadCapacityAutoScalingSettings &&
        replicaProvisionedWriteCapacityAutoScalingSettings ==
            other.replicaProvisionedWriteCapacityAutoScalingSettings &&
        replicaStatus == other.replicaStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, globalSecondaryIndexes.hashCode);
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash =
        $jc(_$hash, replicaProvisionedReadCapacityAutoScalingSettings.hashCode);
    _$hash = $jc(
        _$hash, replicaProvisionedWriteCapacityAutoScalingSettings.hashCode);
    _$hash = $jc(_$hash, replicaStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicaAutoScalingDescriptionBuilder
    implements
        Builder<ReplicaAutoScalingDescription,
            ReplicaAutoScalingDescriptionBuilder> {
  _$ReplicaAutoScalingDescription? _$v;

  _i5.ListBuilder<_i2.ReplicaGlobalSecondaryIndexAutoScalingDescription>?
      _globalSecondaryIndexes;
  _i5.ListBuilder<_i2.ReplicaGlobalSecondaryIndexAutoScalingDescription>
      get globalSecondaryIndexes => _$this._globalSecondaryIndexes ??= new _i5
          .ListBuilder<_i2.ReplicaGlobalSecondaryIndexAutoScalingDescription>();
  set globalSecondaryIndexes(
          _i5.ListBuilder<
                  _i2.ReplicaGlobalSecondaryIndexAutoScalingDescription>?
              globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  _i3.AutoScalingSettingsDescriptionBuilder?
      _replicaProvisionedReadCapacityAutoScalingSettings;
  _i3.AutoScalingSettingsDescriptionBuilder
      get replicaProvisionedReadCapacityAutoScalingSettings =>
          _$this._replicaProvisionedReadCapacityAutoScalingSettings ??=
              new _i3.AutoScalingSettingsDescriptionBuilder();
  set replicaProvisionedReadCapacityAutoScalingSettings(
          _i3.AutoScalingSettingsDescriptionBuilder?
              replicaProvisionedReadCapacityAutoScalingSettings) =>
      _$this._replicaProvisionedReadCapacityAutoScalingSettings =
          replicaProvisionedReadCapacityAutoScalingSettings;

  _i3.AutoScalingSettingsDescriptionBuilder?
      _replicaProvisionedWriteCapacityAutoScalingSettings;
  _i3.AutoScalingSettingsDescriptionBuilder
      get replicaProvisionedWriteCapacityAutoScalingSettings =>
          _$this._replicaProvisionedWriteCapacityAutoScalingSettings ??=
              new _i3.AutoScalingSettingsDescriptionBuilder();
  set replicaProvisionedWriteCapacityAutoScalingSettings(
          _i3.AutoScalingSettingsDescriptionBuilder?
              replicaProvisionedWriteCapacityAutoScalingSettings) =>
      _$this._replicaProvisionedWriteCapacityAutoScalingSettings =
          replicaProvisionedWriteCapacityAutoScalingSettings;

  _i4.ReplicaStatus? _replicaStatus;
  _i4.ReplicaStatus? get replicaStatus => _$this._replicaStatus;
  set replicaStatus(_i4.ReplicaStatus? replicaStatus) =>
      _$this._replicaStatus = replicaStatus;

  ReplicaAutoScalingDescriptionBuilder() {
    ReplicaAutoScalingDescription._init(this);
  }

  ReplicaAutoScalingDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalSecondaryIndexes = $v.globalSecondaryIndexes?.toBuilder();
      _regionName = $v.regionName;
      _replicaProvisionedReadCapacityAutoScalingSettings =
          $v.replicaProvisionedReadCapacityAutoScalingSettings?.toBuilder();
      _replicaProvisionedWriteCapacityAutoScalingSettings =
          $v.replicaProvisionedWriteCapacityAutoScalingSettings?.toBuilder();
      _replicaStatus = $v.replicaStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicaAutoScalingDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicaAutoScalingDescription;
  }

  @override
  void update(void Function(ReplicaAutoScalingDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicaAutoScalingDescription build() => _build();

  _$ReplicaAutoScalingDescription _build() {
    _$ReplicaAutoScalingDescription _$result;
    try {
      _$result = _$v ??
          new _$ReplicaAutoScalingDescription._(
              globalSecondaryIndexes: _globalSecondaryIndexes?.build(),
              regionName: regionName,
              replicaProvisionedReadCapacityAutoScalingSettings:
                  _replicaProvisionedReadCapacityAutoScalingSettings?.build(),
              replicaProvisionedWriteCapacityAutoScalingSettings:
                  _replicaProvisionedWriteCapacityAutoScalingSettings?.build(),
              replicaStatus: replicaStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'globalSecondaryIndexes';
        _globalSecondaryIndexes?.build();

        _$failedField = 'replicaProvisionedReadCapacityAutoScalingSettings';
        _replicaProvisionedReadCapacityAutoScalingSettings?.build();
        _$failedField = 'replicaProvisionedWriteCapacityAutoScalingSettings';
        _replicaProvisionedWriteCapacityAutoScalingSettings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicaAutoScalingDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
