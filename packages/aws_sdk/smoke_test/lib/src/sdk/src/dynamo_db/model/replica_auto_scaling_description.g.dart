// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replica_auto_scaling_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaAutoScalingDescription extends ReplicaAutoScalingDescription {
  @override
  final String? regionName;
  @override
  final _i2.BuiltList<ReplicaGlobalSecondaryIndexAutoScalingDescription>?
      globalSecondaryIndexes;
  @override
  final AutoScalingSettingsDescription?
      replicaProvisionedReadCapacityAutoScalingSettings;
  @override
  final AutoScalingSettingsDescription?
      replicaProvisionedWriteCapacityAutoScalingSettings;
  @override
  final ReplicaStatus? replicaStatus;

  factory _$ReplicaAutoScalingDescription(
          [void Function(ReplicaAutoScalingDescriptionBuilder)? updates]) =>
      (new ReplicaAutoScalingDescriptionBuilder()..update(updates))._build();

  _$ReplicaAutoScalingDescription._(
      {this.regionName,
      this.globalSecondaryIndexes,
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
        regionName == other.regionName &&
        globalSecondaryIndexes == other.globalSecondaryIndexes &&
        replicaProvisionedReadCapacityAutoScalingSettings ==
            other.replicaProvisionedReadCapacityAutoScalingSettings &&
        replicaProvisionedWriteCapacityAutoScalingSettings ==
            other.replicaProvisionedWriteCapacityAutoScalingSettings &&
        replicaStatus == other.replicaStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash = $jc(_$hash, globalSecondaryIndexes.hashCode);
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

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  _i2.ListBuilder<ReplicaGlobalSecondaryIndexAutoScalingDescription>?
      _globalSecondaryIndexes;
  _i2.ListBuilder<ReplicaGlobalSecondaryIndexAutoScalingDescription>
      get globalSecondaryIndexes => _$this._globalSecondaryIndexes ??= new _i2
          .ListBuilder<ReplicaGlobalSecondaryIndexAutoScalingDescription>();
  set globalSecondaryIndexes(
          _i2.ListBuilder<ReplicaGlobalSecondaryIndexAutoScalingDescription>?
              globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  AutoScalingSettingsDescriptionBuilder?
      _replicaProvisionedReadCapacityAutoScalingSettings;
  AutoScalingSettingsDescriptionBuilder
      get replicaProvisionedReadCapacityAutoScalingSettings =>
          _$this._replicaProvisionedReadCapacityAutoScalingSettings ??=
              new AutoScalingSettingsDescriptionBuilder();
  set replicaProvisionedReadCapacityAutoScalingSettings(
          AutoScalingSettingsDescriptionBuilder?
              replicaProvisionedReadCapacityAutoScalingSettings) =>
      _$this._replicaProvisionedReadCapacityAutoScalingSettings =
          replicaProvisionedReadCapacityAutoScalingSettings;

  AutoScalingSettingsDescriptionBuilder?
      _replicaProvisionedWriteCapacityAutoScalingSettings;
  AutoScalingSettingsDescriptionBuilder
      get replicaProvisionedWriteCapacityAutoScalingSettings =>
          _$this._replicaProvisionedWriteCapacityAutoScalingSettings ??=
              new AutoScalingSettingsDescriptionBuilder();
  set replicaProvisionedWriteCapacityAutoScalingSettings(
          AutoScalingSettingsDescriptionBuilder?
              replicaProvisionedWriteCapacityAutoScalingSettings) =>
      _$this._replicaProvisionedWriteCapacityAutoScalingSettings =
          replicaProvisionedWriteCapacityAutoScalingSettings;

  ReplicaStatus? _replicaStatus;
  ReplicaStatus? get replicaStatus => _$this._replicaStatus;
  set replicaStatus(ReplicaStatus? replicaStatus) =>
      _$this._replicaStatus = replicaStatus;

  ReplicaAutoScalingDescriptionBuilder();

  ReplicaAutoScalingDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionName = $v.regionName;
      _globalSecondaryIndexes = $v.globalSecondaryIndexes?.toBuilder();
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
              regionName: regionName,
              globalSecondaryIndexes: _globalSecondaryIndexes?.build(),
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
