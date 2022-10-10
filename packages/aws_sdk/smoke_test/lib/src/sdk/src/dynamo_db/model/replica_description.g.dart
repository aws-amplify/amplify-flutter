// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.replica_description;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaDescription extends ReplicaDescription {
  @override
  final _i6.BuiltList<_i2.ReplicaGlobalSecondaryIndexDescription>?
      globalSecondaryIndexes;
  @override
  final String? kmsMasterKeyId;
  @override
  final _i3.ProvisionedThroughputOverride? provisionedThroughputOverride;
  @override
  final String? regionName;
  @override
  final DateTime? replicaInaccessibleDateTime;
  @override
  final _i4.ReplicaStatus? replicaStatus;
  @override
  final String? replicaStatusDescription;
  @override
  final String? replicaStatusPercentProgress;
  @override
  final _i5.TableClassSummary? replicaTableClassSummary;

  factory _$ReplicaDescription(
          [void Function(ReplicaDescriptionBuilder)? updates]) =>
      (new ReplicaDescriptionBuilder()..update(updates))._build();

  _$ReplicaDescription._(
      {this.globalSecondaryIndexes,
      this.kmsMasterKeyId,
      this.provisionedThroughputOverride,
      this.regionName,
      this.replicaInaccessibleDateTime,
      this.replicaStatus,
      this.replicaStatusDescription,
      this.replicaStatusPercentProgress,
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
        globalSecondaryIndexes == other.globalSecondaryIndexes &&
        kmsMasterKeyId == other.kmsMasterKeyId &&
        provisionedThroughputOverride == other.provisionedThroughputOverride &&
        regionName == other.regionName &&
        replicaInaccessibleDateTime == other.replicaInaccessibleDateTime &&
        replicaStatus == other.replicaStatus &&
        replicaStatusDescription == other.replicaStatusDescription &&
        replicaStatusPercentProgress == other.replicaStatusPercentProgress &&
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
                                $jc($jc(0, globalSecondaryIndexes.hashCode),
                                    kmsMasterKeyId.hashCode),
                                provisionedThroughputOverride.hashCode),
                            regionName.hashCode),
                        replicaInaccessibleDateTime.hashCode),
                    replicaStatus.hashCode),
                replicaStatusDescription.hashCode),
            replicaStatusPercentProgress.hashCode),
        replicaTableClassSummary.hashCode));
  }
}

class ReplicaDescriptionBuilder
    implements Builder<ReplicaDescription, ReplicaDescriptionBuilder> {
  _$ReplicaDescription? _$v;

  _i6.ListBuilder<_i2.ReplicaGlobalSecondaryIndexDescription>?
      _globalSecondaryIndexes;
  _i6.ListBuilder<_i2.ReplicaGlobalSecondaryIndexDescription>
      get globalSecondaryIndexes => _$this._globalSecondaryIndexes ??=
          new _i6.ListBuilder<_i2.ReplicaGlobalSecondaryIndexDescription>();
  set globalSecondaryIndexes(
          _i6.ListBuilder<_i2.ReplicaGlobalSecondaryIndexDescription>?
              globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  String? _kmsMasterKeyId;
  String? get kmsMasterKeyId => _$this._kmsMasterKeyId;
  set kmsMasterKeyId(String? kmsMasterKeyId) =>
      _$this._kmsMasterKeyId = kmsMasterKeyId;

  _i3.ProvisionedThroughputOverrideBuilder? _provisionedThroughputOverride;
  _i3.ProvisionedThroughputOverrideBuilder get provisionedThroughputOverride =>
      _$this._provisionedThroughputOverride ??=
          new _i3.ProvisionedThroughputOverrideBuilder();
  set provisionedThroughputOverride(
          _i3.ProvisionedThroughputOverrideBuilder?
              provisionedThroughputOverride) =>
      _$this._provisionedThroughputOverride = provisionedThroughputOverride;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  DateTime? _replicaInaccessibleDateTime;
  DateTime? get replicaInaccessibleDateTime =>
      _$this._replicaInaccessibleDateTime;
  set replicaInaccessibleDateTime(DateTime? replicaInaccessibleDateTime) =>
      _$this._replicaInaccessibleDateTime = replicaInaccessibleDateTime;

  _i4.ReplicaStatus? _replicaStatus;
  _i4.ReplicaStatus? get replicaStatus => _$this._replicaStatus;
  set replicaStatus(_i4.ReplicaStatus? replicaStatus) =>
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

  _i5.TableClassSummaryBuilder? _replicaTableClassSummary;
  _i5.TableClassSummaryBuilder get replicaTableClassSummary =>
      _$this._replicaTableClassSummary ??= new _i5.TableClassSummaryBuilder();
  set replicaTableClassSummary(
          _i5.TableClassSummaryBuilder? replicaTableClassSummary) =>
      _$this._replicaTableClassSummary = replicaTableClassSummary;

  ReplicaDescriptionBuilder() {
    ReplicaDescription._init(this);
  }

  ReplicaDescriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalSecondaryIndexes = $v.globalSecondaryIndexes?.toBuilder();
      _kmsMasterKeyId = $v.kmsMasterKeyId;
      _provisionedThroughputOverride =
          $v.provisionedThroughputOverride?.toBuilder();
      _regionName = $v.regionName;
      _replicaInaccessibleDateTime = $v.replicaInaccessibleDateTime;
      _replicaStatus = $v.replicaStatus;
      _replicaStatusDescription = $v.replicaStatusDescription;
      _replicaStatusPercentProgress = $v.replicaStatusPercentProgress;
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
              globalSecondaryIndexes: _globalSecondaryIndexes?.build(),
              kmsMasterKeyId: kmsMasterKeyId,
              provisionedThroughputOverride:
                  _provisionedThroughputOverride?.build(),
              regionName: regionName,
              replicaInaccessibleDateTime: replicaInaccessibleDateTime,
              replicaStatus: replicaStatus,
              replicaStatusDescription: replicaStatusDescription,
              replicaStatusPercentProgress: replicaStatusPercentProgress,
              replicaTableClassSummary: _replicaTableClassSummary?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'globalSecondaryIndexes';
        _globalSecondaryIndexes?.build();

        _$failedField = 'provisionedThroughputOverride';
        _provisionedThroughputOverride?.build();

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
