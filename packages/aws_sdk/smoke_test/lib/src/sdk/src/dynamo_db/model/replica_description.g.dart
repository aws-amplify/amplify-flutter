// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replica_description.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaDescription extends ReplicaDescription {
  @override
  final String? regionName;
  @override
  final ReplicaStatus? replicaStatus;
  @override
  final String? replicaStatusDescription;
  @override
  final String? replicaStatusPercentProgress;
  @override
  final String? kmsMasterKeyId;
  @override
  final ProvisionedThroughputOverride? provisionedThroughputOverride;
  @override
  final _i2.BuiltList<ReplicaGlobalSecondaryIndexDescription>?
      globalSecondaryIndexes;
  @override
  final DateTime? replicaInaccessibleDateTime;
  @override
  final TableClassSummary? replicaTableClassSummary;

  factory _$ReplicaDescription(
          [void Function(ReplicaDescriptionBuilder)? updates]) =>
      (new ReplicaDescriptionBuilder()..update(updates))._build();

  _$ReplicaDescription._(
      {this.regionName,
      this.replicaStatus,
      this.replicaStatusDescription,
      this.replicaStatusPercentProgress,
      this.kmsMasterKeyId,
      this.provisionedThroughputOverride,
      this.globalSecondaryIndexes,
      this.replicaInaccessibleDateTime,
      this.replicaTableClassSummary})
      : super._();

  @override
  ReplicaDescription rebuild(
          void Function(ReplicaDescriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaDescriptionBuilder toBuilder() =>
      new ReplicaDescriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicaDescription &&
        regionName == other.regionName &&
        replicaStatus == other.replicaStatus &&
        replicaStatusDescription == other.replicaStatusDescription &&
        replicaStatusPercentProgress == other.replicaStatusPercentProgress &&
        kmsMasterKeyId == other.kmsMasterKeyId &&
        provisionedThroughputOverride == other.provisionedThroughputOverride &&
        globalSecondaryIndexes == other.globalSecondaryIndexes &&
        replicaInaccessibleDateTime == other.replicaInaccessibleDateTime &&
        replicaTableClassSummary == other.replicaTableClassSummary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionName.hashCode);
    _$hash = $jc(_$hash, replicaStatus.hashCode);
    _$hash = $jc(_$hash, replicaStatusDescription.hashCode);
    _$hash = $jc(_$hash, replicaStatusPercentProgress.hashCode);
    _$hash = $jc(_$hash, kmsMasterKeyId.hashCode);
    _$hash = $jc(_$hash, provisionedThroughputOverride.hashCode);
    _$hash = $jc(_$hash, globalSecondaryIndexes.hashCode);
    _$hash = $jc(_$hash, replicaInaccessibleDateTime.hashCode);
    _$hash = $jc(_$hash, replicaTableClassSummary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicaDescriptionBuilder
    implements Builder<ReplicaDescription, ReplicaDescriptionBuilder> {
  _$ReplicaDescription? _$v;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  ReplicaStatus? _replicaStatus;
  ReplicaStatus? get replicaStatus => _$this._replicaStatus;
  set replicaStatus(ReplicaStatus? replicaStatus) =>
      _$this._replicaStatus = replicaStatus;

  String? _replicaStatusDescription;
  String? get replicaStatusDescription => _$this._replicaStatusDescription;
  set replicaStatusDescription(String? replicaStatusDescription) =>
      _$this._replicaStatusDescription = replicaStatusDescription;

  String? _replicaStatusPercentProgress;
  String? get replicaStatusPercentProgress =>
      _$this._replicaStatusPercentProgress;
  set replicaStatusPercentProgress(String? replicaStatusPercentProgress) =>
      _$this._replicaStatusPercentProgress = replicaStatusPercentProgress;

  String? _kmsMasterKeyId;
  String? get kmsMasterKeyId => _$this._kmsMasterKeyId;
  set kmsMasterKeyId(String? kmsMasterKeyId) =>
      _$this._kmsMasterKeyId = kmsMasterKeyId;

  ProvisionedThroughputOverrideBuilder? _provisionedThroughputOverride;
  ProvisionedThroughputOverrideBuilder get provisionedThroughputOverride =>
      _$this._provisionedThroughputOverride ??=
          new ProvisionedThroughputOverrideBuilder();
  set provisionedThroughputOverride(
          ProvisionedThroughputOverrideBuilder?
              provisionedThroughputOverride) =>
      _$this._provisionedThroughputOverride = provisionedThroughputOverride;

  _i2.ListBuilder<ReplicaGlobalSecondaryIndexDescription>?
      _globalSecondaryIndexes;
  _i2.ListBuilder<ReplicaGlobalSecondaryIndexDescription>
      get globalSecondaryIndexes => _$this._globalSecondaryIndexes ??=
          new _i2.ListBuilder<ReplicaGlobalSecondaryIndexDescription>();
  set globalSecondaryIndexes(
          _i2.ListBuilder<ReplicaGlobalSecondaryIndexDescription>?
              globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  DateTime? _replicaInaccessibleDateTime;
  DateTime? get replicaInaccessibleDateTime =>
      _$this._replicaInaccessibleDateTime;
  set replicaInaccessibleDateTime(DateTime? replicaInaccessibleDateTime) =>
      _$this._replicaInaccessibleDateTime = replicaInaccessibleDateTime;

  TableClassSummaryBuilder? _replicaTableClassSummary;
  TableClassSummaryBuilder get replicaTableClassSummary =>
      _$this._replicaTableClassSummary ??= new TableClassSummaryBuilder();
  set replicaTableClassSummary(
          TableClassSummaryBuilder? replicaTableClassSummary) =>
      _$this._replicaTableClassSummary = replicaTableClassSummary;

  ReplicaDescriptionBuilder();

  ReplicaDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionName = $v.regionName;
      _replicaStatus = $v.replicaStatus;
      _replicaStatusDescription = $v.replicaStatusDescription;
      _replicaStatusPercentProgress = $v.replicaStatusPercentProgress;
      _kmsMasterKeyId = $v.kmsMasterKeyId;
      _provisionedThroughputOverride =
          $v.provisionedThroughputOverride?.toBuilder();
      _globalSecondaryIndexes = $v.globalSecondaryIndexes?.toBuilder();
      _replicaInaccessibleDateTime = $v.replicaInaccessibleDateTime;
      _replicaTableClassSummary = $v.replicaTableClassSummary?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicaDescription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicaDescription;
  }

  @override
  void update(void Function(ReplicaDescriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicaDescription build() => _build();

  _$ReplicaDescription _build() {
    _$ReplicaDescription _$result;
    try {
      _$result = _$v ??
          new _$ReplicaDescription._(
              regionName: regionName,
              replicaStatus: replicaStatus,
              replicaStatusDescription: replicaStatusDescription,
              replicaStatusPercentProgress: replicaStatusPercentProgress,
              kmsMasterKeyId: kmsMasterKeyId,
              provisionedThroughputOverride:
                  _provisionedThroughputOverride?.build(),
              globalSecondaryIndexes: _globalSecondaryIndexes?.build(),
              replicaInaccessibleDateTime: replicaInaccessibleDateTime,
              replicaTableClassSummary: _replicaTableClassSummary?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'provisionedThroughputOverride';
        _provisionedThroughputOverride?.build();
        _$failedField = 'globalSecondaryIndexes';
        _globalSecondaryIndexes?.build();

        _$failedField = 'replicaTableClassSummary';
        _replicaTableClassSummary?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicaDescription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
