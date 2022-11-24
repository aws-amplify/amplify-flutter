// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.replica_settings_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaSettingsDescription extends ReplicaSettingsDescription {
  @override
  final String regionName;
  @override
  final _i2.BillingModeSummary? replicaBillingModeSummary;
  @override
  final _i8.BuiltList<_i3.ReplicaGlobalSecondaryIndexSettingsDescription>?
      replicaGlobalSecondaryIndexSettings;
  @override
  final _i4.AutoScalingSettingsDescription?
      replicaProvisionedReadCapacityAutoScalingSettings;
  @override
  final _i5.Int64? replicaProvisionedReadCapacityUnits;
  @override
  final _i4.AutoScalingSettingsDescription?
      replicaProvisionedWriteCapacityAutoScalingSettings;
  @override
  final _i5.Int64? replicaProvisionedWriteCapacityUnits;
  @override
  final _i6.ReplicaStatus? replicaStatus;
  @override
  final _i7.TableClassSummary? replicaTableClassSummary;

  factory _$ReplicaSettingsDescription(
          [void Function(ReplicaSettingsDescriptionBuilder)? updates]) =>
      (new ReplicaSettingsDescriptionBuilder()..update(updates))._build();

  _$ReplicaSettingsDescription._(
      {required this.regionName,
      this.replicaBillingModeSummary,
      this.replicaGlobalSecondaryIndexSettings,
      this.replicaProvisionedReadCapacityAutoScalingSettings,
      this.replicaProvisionedReadCapacityUnits,
      this.replicaProvisionedWriteCapacityAutoScalingSettings,
      this.replicaProvisionedWriteCapacityUnits,
      this.replicaStatus,
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
        replicaBillingModeSummary == other.replicaBillingModeSummary &&
        replicaGlobalSecondaryIndexSettings ==
            other.replicaGlobalSecondaryIndexSettings &&
        replicaProvisionedReadCapacityAutoScalingSettings ==
            other.replicaProvisionedReadCapacityAutoScalingSettings &&
        replicaProvisionedReadCapacityUnits ==
            other.replicaProvisionedReadCapacityUnits &&
        replicaProvisionedWriteCapacityAutoScalingSettings ==
            other.replicaProvisionedWriteCapacityAutoScalingSettings &&
        replicaProvisionedWriteCapacityUnits ==
            other.replicaProvisionedWriteCapacityUnits &&
        replicaStatus == other.replicaStatus &&
        replicaTableClassSummary == other.replicaTableClassSummary;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, regionName.hashCode),
                                    replicaBillingModeSummary.hashCode),
                                replicaGlobalSecondaryIndexSettings.hashCode),
                            replicaProvisionedReadCapacityAutoScalingSettings
                                .hashCode),
                        replicaProvisionedReadCapacityUnits.hashCode),
                    replicaProvisionedWriteCapacityAutoScalingSettings
                        .hashCode),
                replicaProvisionedWriteCapacityUnits.hashCode),
            replicaStatus.hashCode),
        replicaTableClassSummary.hashCode));
  }
}

class ReplicaSettingsDescriptionBuilder
    implements
        Builder<ReplicaSettingsDescription, ReplicaSettingsDescriptionBuilder> {
  _$ReplicaSettingsDescription? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  _i2.BillingModeSummaryBuilder? _replicaBillingModeSummary;
  _i2.BillingModeSummaryBuilder get replicaBillingModeSummary =>
      _$this._replicaBillingModeSummary ??= new _i2.BillingModeSummaryBuilder();
  set replicaBillingModeSummary(
          _i2.BillingModeSummaryBuilder? replicaBillingModeSummary) =>
      _$this._replicaBillingModeSummary = replicaBillingModeSummary;

  _i8.ListBuilder<_i3.ReplicaGlobalSecondaryIndexSettingsDescription>?
      _replicaGlobalSecondaryIndexSettings;
  _i8.ListBuilder<_i3.ReplicaGlobalSecondaryIndexSettingsDescription>
      get replicaGlobalSecondaryIndexSettings =>
          _$this._replicaGlobalSecondaryIndexSettings ??= new _i8.ListBuilder<
              _i3.ReplicaGlobalSecondaryIndexSettingsDescription>();
  set replicaGlobalSecondaryIndexSettings(
          _i8.ListBuilder<_i3.ReplicaGlobalSecondaryIndexSettingsDescription>?
              replicaGlobalSecondaryIndexSettings) =>
      _$this._replicaGlobalSecondaryIndexSettings =
          replicaGlobalSecondaryIndexSettings;

  _i4.AutoScalingSettingsDescriptionBuilder?
      _replicaProvisionedReadCapacityAutoScalingSettings;
  _i4.AutoScalingSettingsDescriptionBuilder
      get replicaProvisionedReadCapacityAutoScalingSettings =>
          _$this._replicaProvisionedReadCapacityAutoScalingSettings ??=
              new _i4.AutoScalingSettingsDescriptionBuilder();
  set replicaProvisionedReadCapacityAutoScalingSettings(
          _i4.AutoScalingSettingsDescriptionBuilder?
              replicaProvisionedReadCapacityAutoScalingSettings) =>
      _$this._replicaProvisionedReadCapacityAutoScalingSettings =
          replicaProvisionedReadCapacityAutoScalingSettings;

  _i5.Int64? _replicaProvisionedReadCapacityUnits;
  _i5.Int64? get replicaProvisionedReadCapacityUnits =>
      _$this._replicaProvisionedReadCapacityUnits;
  set replicaProvisionedReadCapacityUnits(
          _i5.Int64? replicaProvisionedReadCapacityUnits) =>
      _$this._replicaProvisionedReadCapacityUnits =
          replicaProvisionedReadCapacityUnits;

  _i4.AutoScalingSettingsDescriptionBuilder?
      _replicaProvisionedWriteCapacityAutoScalingSettings;
  _i4.AutoScalingSettingsDescriptionBuilder
      get replicaProvisionedWriteCapacityAutoScalingSettings =>
          _$this._replicaProvisionedWriteCapacityAutoScalingSettings ??=
              new _i4.AutoScalingSettingsDescriptionBuilder();
  set replicaProvisionedWriteCapacityAutoScalingSettings(
          _i4.AutoScalingSettingsDescriptionBuilder?
              replicaProvisionedWriteCapacityAutoScalingSettings) =>
      _$this._replicaProvisionedWriteCapacityAutoScalingSettings =
          replicaProvisionedWriteCapacityAutoScalingSettings;

  _i5.Int64? _replicaProvisionedWriteCapacityUnits;
  _i5.Int64? get replicaProvisionedWriteCapacityUnits =>
      _$this._replicaProvisionedWriteCapacityUnits;
  set replicaProvisionedWriteCapacityUnits(
          _i5.Int64? replicaProvisionedWriteCapacityUnits) =>
      _$this._replicaProvisionedWriteCapacityUnits =
          replicaProvisionedWriteCapacityUnits;

  _i6.ReplicaStatus? _replicaStatus;
  _i6.ReplicaStatus? get replicaStatus => _$this._replicaStatus;
  set replicaStatus(_i6.ReplicaStatus? replicaStatus) =>
      _$this._replicaStatus = replicaStatus;

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
      _replicaBillingModeSummary = $v.replicaBillingModeSummary?.toBuilder();
      _replicaGlobalSecondaryIndexSettings =
          $v.replicaGlobalSecondaryIndexSettings?.toBuilder();
      _replicaProvisionedReadCapacityAutoScalingSettings =
          $v.replicaProvisionedReadCapacityAutoScalingSettings?.toBuilder();
      _replicaProvisionedReadCapacityUnits =
          $v.replicaProvisionedReadCapacityUnits;
      _replicaProvisionedWriteCapacityAutoScalingSettings =
          $v.replicaProvisionedWriteCapacityAutoScalingSettings?.toBuilder();
      _replicaProvisionedWriteCapacityUnits =
          $v.replicaProvisionedWriteCapacityUnits;
      _replicaStatus = $v.replicaStatus;
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
              replicaBillingModeSummary: _replicaBillingModeSummary?.build(),
              replicaGlobalSecondaryIndexSettings:
                  _replicaGlobalSecondaryIndexSettings?.build(),
              replicaProvisionedReadCapacityAutoScalingSettings:
                  _replicaProvisionedReadCapacityAutoScalingSettings?.build(),
              replicaProvisionedReadCapacityUnits:
                  replicaProvisionedReadCapacityUnits,
              replicaProvisionedWriteCapacityAutoScalingSettings:
                  _replicaProvisionedWriteCapacityAutoScalingSettings?.build(),
              replicaProvisionedWriteCapacityUnits:
                  replicaProvisionedWriteCapacityUnits,
              replicaStatus: replicaStatus,
              replicaTableClassSummary: _replicaTableClassSummary?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replicaBillingModeSummary';
        _replicaBillingModeSummary?.build();
        _$failedField = 'replicaGlobalSecondaryIndexSettings';
        _replicaGlobalSecondaryIndexSettings?.build();
        _$failedField = 'replicaProvisionedReadCapacityAutoScalingSettings';
        _replicaProvisionedReadCapacityAutoScalingSettings?.build();

        _$failedField = 'replicaProvisionedWriteCapacityAutoScalingSettings';
        _replicaProvisionedWriteCapacityAutoScalingSettings?.build();

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
