// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replica_settings_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaSettingsDescription extends ReplicaSettingsDescription {
  @override
  final String regionName;
  @override
  final ReplicaStatus? replicaStatus;
  @override
  final BillingModeSummary? replicaBillingModeSummary;
  @override
  final _i2.Int64? replicaProvisionedReadCapacityUnits;
  @override
  final AutoScalingSettingsDescription?
      replicaProvisionedReadCapacityAutoScalingSettings;
  @override
  final _i2.Int64? replicaProvisionedWriteCapacityUnits;
  @override
  final AutoScalingSettingsDescription?
      replicaProvisionedWriteCapacityAutoScalingSettings;
  @override
  final _i3.BuiltList<ReplicaGlobalSecondaryIndexSettingsDescription>?
      replicaGlobalSecondaryIndexSettings;
  @override
  final TableClassSummary? replicaTableClassSummary;

  factory _$ReplicaSettingsDescription(
          [void Function(ReplicaSettingsDescriptionBuilder)? updates]) =>
      (new ReplicaSettingsDescriptionBuilder()..update(updates))._build();

  _$ReplicaSettingsDescription._(
      {required this.regionName,
      this.replicaStatus,
      this.replicaBillingModeSummary,
      this.replicaProvisionedReadCapacityUnits,
      this.replicaProvisionedReadCapacityAutoScalingSettings,
      this.replicaProvisionedWriteCapacityUnits,
      this.replicaProvisionedWriteCapacityAutoScalingSettings,
      this.replicaGlobalSecondaryIndexSettings,
      this.replicaTableClassSummary})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        regionName, r'ReplicaSettingsDescription', 'regionName');
  }

  @override
  ReplicaSettingsDescription rebuild(
          void Function(ReplicaSettingsDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaSettingsDescriptionBuilder toBuilder() =>
      new ReplicaSettingsDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicaSettingsDescription &&
        regionName == other.regionName &&
        replicaStatus == other.replicaStatus &&
        replicaBillingModeSummary == other.replicaBillingModeSummary &&
        replicaProvisionedReadCapacityUnits ==
            other.replicaProvisionedReadCapacityUnits &&
        replicaProvisionedReadCapacityAutoScalingSettings ==
            other.replicaProvisionedReadCapacityAutoScalingSettings &&
        replicaProvisionedWriteCapacityUnits ==
            other.replicaProvisionedWriteCapacityUnits &&
        replicaProvisionedWriteCapacityAutoScalingSettings ==
            other.replicaProvisionedWriteCapacityAutoScalingSettings &&
        replicaGlobalSecondaryIndexSettings ==
            other.replicaGlobalSecondaryIndexSettings &&
        replicaTableClassSummary == other.replicaTableClassSummary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash = $jc(_$hash, replicaStatus.hashCode);
    _$hash = $jc(_$hash, replicaBillingModeSummary.hashCode);
    _$hash = $jc(_$hash, replicaProvisionedReadCapacityUnits.hashCode);
    _$hash =
        $jc(_$hash, replicaProvisionedReadCapacityAutoScalingSettings.hashCode);
    _$hash = $jc(_$hash, replicaProvisionedWriteCapacityUnits.hashCode);
    _$hash = $jc(
        _$hash, replicaProvisionedWriteCapacityAutoScalingSettings.hashCode);
    _$hash = $jc(_$hash, replicaGlobalSecondaryIndexSettings.hashCode);
    _$hash = $jc(_$hash, replicaTableClassSummary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicaSettingsDescriptionBuilder
    implements
        Builder<ReplicaSettingsDescription, ReplicaSettingsDescriptionBuilder> {
  _$ReplicaSettingsDescription? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  ReplicaStatus? _replicaStatus;
  ReplicaStatus? get replicaStatus => _$this._replicaStatus;
  set replicaStatus(ReplicaStatus? replicaStatus) =>
      _$this._replicaStatus = replicaStatus;

  BillingModeSummaryBuilder? _replicaBillingModeSummary;
  BillingModeSummaryBuilder get replicaBillingModeSummary =>
      _$this._replicaBillingModeSummary ??= new BillingModeSummaryBuilder();
  set replicaBillingModeSummary(
          BillingModeSummaryBuilder? replicaBillingModeSummary) =>
      _$this._replicaBillingModeSummary = replicaBillingModeSummary;

  _i2.Int64? _replicaProvisionedReadCapacityUnits;
  _i2.Int64? get replicaProvisionedReadCapacityUnits =>
      _$this._replicaProvisionedReadCapacityUnits;
  set replicaProvisionedReadCapacityUnits(
          _i2.Int64? replicaProvisionedReadCapacityUnits) =>
      _$this._replicaProvisionedReadCapacityUnits =
          replicaProvisionedReadCapacityUnits;

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

  _i2.Int64? _replicaProvisionedWriteCapacityUnits;
  _i2.Int64? get replicaProvisionedWriteCapacityUnits =>
      _$this._replicaProvisionedWriteCapacityUnits;
  set replicaProvisionedWriteCapacityUnits(
          _i2.Int64? replicaProvisionedWriteCapacityUnits) =>
      _$this._replicaProvisionedWriteCapacityUnits =
          replicaProvisionedWriteCapacityUnits;

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

  _i3.ListBuilder<ReplicaGlobalSecondaryIndexSettingsDescription>?
      _replicaGlobalSecondaryIndexSettings;
  _i3.ListBuilder<ReplicaGlobalSecondaryIndexSettingsDescription>
      get replicaGlobalSecondaryIndexSettings => _$this
              ._replicaGlobalSecondaryIndexSettings ??=
          new _i3.ListBuilder<ReplicaGlobalSecondaryIndexSettingsDescription>();
  set replicaGlobalSecondaryIndexSettings(
          _i3.ListBuilder<ReplicaGlobalSecondaryIndexSettingsDescription>?
              replicaGlobalSecondaryIndexSettings) =>
      _$this._replicaGlobalSecondaryIndexSettings =
          replicaGlobalSecondaryIndexSettings;

  TableClassSummaryBuilder? _replicaTableClassSummary;
  TableClassSummaryBuilder get replicaTableClassSummary =>
      _$this._replicaTableClassSummary ??= new TableClassSummaryBuilder();
  set replicaTableClassSummary(
          TableClassSummaryBuilder? replicaTableClassSummary) =>
      _$this._replicaTableClassSummary = replicaTableClassSummary;

  ReplicaSettingsDescriptionBuilder();

  ReplicaSettingsDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionName = $v.regionName;
      _replicaStatus = $v.replicaStatus;
      _replicaBillingModeSummary = $v.replicaBillingModeSummary?.toBuilder();
      _replicaProvisionedReadCapacityUnits =
          $v.replicaProvisionedReadCapacityUnits;
      _replicaProvisionedReadCapacityAutoScalingSettings =
          $v.replicaProvisionedReadCapacityAutoScalingSettings?.toBuilder();
      _replicaProvisionedWriteCapacityUnits =
          $v.replicaProvisionedWriteCapacityUnits;
      _replicaProvisionedWriteCapacityAutoScalingSettings =
          $v.replicaProvisionedWriteCapacityAutoScalingSettings?.toBuilder();
      _replicaGlobalSecondaryIndexSettings =
          $v.replicaGlobalSecondaryIndexSettings?.toBuilder();
      _replicaTableClassSummary = $v.replicaTableClassSummary?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicaSettingsDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicaSettingsDescription;
  }

  @override
  void update(void Function(ReplicaSettingsDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicaSettingsDescription build() => _build();

  _$ReplicaSettingsDescription _build() {
    _$ReplicaSettingsDescription _$result;
    try {
      _$result = _$v ??
          new _$ReplicaSettingsDescription._(
              regionName: BuiltValueNullFieldError.checkNotNull(
                  regionName, r'ReplicaSettingsDescription', 'regionName'),
              replicaStatus: replicaStatus,
              replicaBillingModeSummary: _replicaBillingModeSummary?.build(),
              replicaProvisionedReadCapacityUnits:
                  replicaProvisionedReadCapacityUnits,
              replicaProvisionedReadCapacityAutoScalingSettings:
                  _replicaProvisionedReadCapacityAutoScalingSettings?.build(),
              replicaProvisionedWriteCapacityUnits:
                  replicaProvisionedWriteCapacityUnits,
              replicaProvisionedWriteCapacityAutoScalingSettings:
                  _replicaProvisionedWriteCapacityAutoScalingSettings?.build(),
              replicaGlobalSecondaryIndexSettings:
                  _replicaGlobalSecondaryIndexSettings?.build(),
              replicaTableClassSummary: _replicaTableClassSummary?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replicaBillingModeSummary';
        _replicaBillingModeSummary?.build();

        _$failedField = 'replicaProvisionedReadCapacityAutoScalingSettings';
        _replicaProvisionedReadCapacityAutoScalingSettings?.build();

        _$failedField = 'replicaProvisionedWriteCapacityAutoScalingSettings';
        _replicaProvisionedWriteCapacityAutoScalingSettings?.build();
        _$failedField = 'replicaGlobalSecondaryIndexSettings';
        _replicaGlobalSecondaryIndexSettings?.build();
        _$failedField = 'replicaTableClassSummary';
        _replicaTableClassSummary?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicaSettingsDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint