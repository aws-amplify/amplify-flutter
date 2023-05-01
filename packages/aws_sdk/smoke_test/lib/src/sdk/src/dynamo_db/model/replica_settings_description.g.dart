// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.replica_settings_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaSettingsDescription extends ReplicaSettingsDescription {
  @override
  final String regionName;
  @override
  final _i2.ReplicaStatus? replicaStatus;
  @override
  final _i3.BillingModeSummary? replicaBillingModeSummary;
  @override
  final _i4.Int64? replicaProvisionedReadCapacityUnits;
  @override
  final _i5.AutoScalingSettingsDescription?
      replicaProvisionedReadCapacityAutoScalingSettings;
  @override
  final _i4.Int64? replicaProvisionedWriteCapacityUnits;
  @override
  final _i5.AutoScalingSettingsDescription?
      replicaProvisionedWriteCapacityAutoScalingSettings;
  @override
  final _i8.BuiltList<_i6.ReplicaGlobalSecondaryIndexSettingsDescription>?
      replicaGlobalSecondaryIndexSettings;
  @override
  final _i7.TableClassSummary? replicaTableClassSummary;

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

  _i2.ReplicaStatus? _replicaStatus;
  _i2.ReplicaStatus? get replicaStatus => _$this._replicaStatus;
  set replicaStatus(_i2.ReplicaStatus? replicaStatus) =>
      _$this._replicaStatus = replicaStatus;

  _i3.BillingModeSummaryBuilder? _replicaBillingModeSummary;
  _i3.BillingModeSummaryBuilder get replicaBillingModeSummary =>
      _$this._replicaBillingModeSummary ??= new _i3.BillingModeSummaryBuilder();
  set replicaBillingModeSummary(
          _i3.BillingModeSummaryBuilder? replicaBillingModeSummary) =>
      _$this._replicaBillingModeSummary = replicaBillingModeSummary;

  _i4.Int64? _replicaProvisionedReadCapacityUnits;
  _i4.Int64? get replicaProvisionedReadCapacityUnits =>
      _$this._replicaProvisionedReadCapacityUnits;
  set replicaProvisionedReadCapacityUnits(
          _i4.Int64? replicaProvisionedReadCapacityUnits) =>
      _$this._replicaProvisionedReadCapacityUnits =
          replicaProvisionedReadCapacityUnits;

  _i5.AutoScalingSettingsDescriptionBuilder?
      _replicaProvisionedReadCapacityAutoScalingSettings;
  _i5.AutoScalingSettingsDescriptionBuilder
      get replicaProvisionedReadCapacityAutoScalingSettings =>
          _$this._replicaProvisionedReadCapacityAutoScalingSettings ??=
              new _i5.AutoScalingSettingsDescriptionBuilder();
  set replicaProvisionedReadCapacityAutoScalingSettings(
          _i5.AutoScalingSettingsDescriptionBuilder?
              replicaProvisionedReadCapacityAutoScalingSettings) =>
      _$this._replicaProvisionedReadCapacityAutoScalingSettings =
          replicaProvisionedReadCapacityAutoScalingSettings;

  _i4.Int64? _replicaProvisionedWriteCapacityUnits;
  _i4.Int64? get replicaProvisionedWriteCapacityUnits =>
      _$this._replicaProvisionedWriteCapacityUnits;
  set replicaProvisionedWriteCapacityUnits(
          _i4.Int64? replicaProvisionedWriteCapacityUnits) =>
      _$this._replicaProvisionedWriteCapacityUnits =
          replicaProvisionedWriteCapacityUnits;

  _i5.AutoScalingSettingsDescriptionBuilder?
      _replicaProvisionedWriteCapacityAutoScalingSettings;
  _i5.AutoScalingSettingsDescriptionBuilder
      get replicaProvisionedWriteCapacityAutoScalingSettings =>
          _$this._replicaProvisionedWriteCapacityAutoScalingSettings ??=
              new _i5.AutoScalingSettingsDescriptionBuilder();
  set replicaProvisionedWriteCapacityAutoScalingSettings(
          _i5.AutoScalingSettingsDescriptionBuilder?
              replicaProvisionedWriteCapacityAutoScalingSettings) =>
      _$this._replicaProvisionedWriteCapacityAutoScalingSettings =
          replicaProvisionedWriteCapacityAutoScalingSettings;

  _i8.ListBuilder<_i6.ReplicaGlobalSecondaryIndexSettingsDescription>?
      _replicaGlobalSecondaryIndexSettings;
  _i8.ListBuilder<_i6.ReplicaGlobalSecondaryIndexSettingsDescription>
      get replicaGlobalSecondaryIndexSettings =>
          _$this._replicaGlobalSecondaryIndexSettings ??= new _i8.ListBuilder<
              _i6.ReplicaGlobalSecondaryIndexSettingsDescription>();
  set replicaGlobalSecondaryIndexSettings(
          _i8.ListBuilder<_i6.ReplicaGlobalSecondaryIndexSettingsDescription>?
              replicaGlobalSecondaryIndexSettings) =>
      _$this._replicaGlobalSecondaryIndexSettings =
          replicaGlobalSecondaryIndexSettings;

  _i7.TableClassSummaryBuilder? _replicaTableClassSummary;
  _i7.TableClassSummaryBuilder get replicaTableClassSummary =>
      _$this._replicaTableClassSummary ??= new _i7.TableClassSummaryBuilder();
  set replicaTableClassSummary(
          _i7.TableClassSummaryBuilder? replicaTableClassSummary) =>
      _$this._replicaTableClassSummary = replicaTableClassSummary;

  ReplicaSettingsDescriptionBuilder() {
    ReplicaSettingsDescription._init(this);
  }

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
