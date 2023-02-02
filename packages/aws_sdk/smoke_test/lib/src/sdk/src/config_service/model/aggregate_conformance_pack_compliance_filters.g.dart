// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.aggregate_conformance_pack_compliance_filters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregateConformancePackComplianceFilters
    extends AggregateConformancePackComplianceFilters {
  @override
  final String? accountId;
  @override
  final String? awsRegion;
  @override
  final _i2.ConformancePackComplianceType? complianceType;
  @override
  final String? conformancePackName;

  factory _$AggregateConformancePackComplianceFilters(
          [void Function(AggregateConformancePackComplianceFiltersBuilder)?
              updates]) =>
      (new AggregateConformancePackComplianceFiltersBuilder()..update(updates))
          ._build();

  _$AggregateConformancePackComplianceFilters._(
      {this.accountId,
      this.awsRegion,
      this.complianceType,
      this.conformancePackName})
      : super._();

  @override
  AggregateConformancePackComplianceFilters rebuild(
          void Function(AggregateConformancePackComplianceFiltersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregateConformancePackComplianceFiltersBuilder toBuilder() =>
      new AggregateConformancePackComplianceFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregateConformancePackComplianceFilters &&
        accountId == other.accountId &&
        awsRegion == other.awsRegion &&
        complianceType == other.complianceType &&
        conformancePackName == other.conformancePackName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, awsRegion.hashCode);
    _$hash = $jc(_$hash, complianceType.hashCode);
    _$hash = $jc(_$hash, conformancePackName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AggregateConformancePackComplianceFiltersBuilder
    implements
        Builder<AggregateConformancePackComplianceFilters,
            AggregateConformancePackComplianceFiltersBuilder> {
  _$AggregateConformancePackComplianceFilters? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

  _i2.ConformancePackComplianceType? _complianceType;
  _i2.ConformancePackComplianceType? get complianceType =>
      _$this._complianceType;
  set complianceType(_i2.ConformancePackComplianceType? complianceType) =>
      _$this._complianceType = complianceType;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  AggregateConformancePackComplianceFiltersBuilder() {
    AggregateConformancePackComplianceFilters._init(this);
  }

  AggregateConformancePackComplianceFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _awsRegion = $v.awsRegion;
      _complianceType = $v.complianceType;
      _conformancePackName = $v.conformancePackName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregateConformancePackComplianceFilters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AggregateConformancePackComplianceFilters;
  }

  @override
  void update(
      void Function(AggregateConformancePackComplianceFiltersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregateConformancePackComplianceFilters build() => _build();

  _$AggregateConformancePackComplianceFilters _build() {
    final _$result = _$v ??
        new _$AggregateConformancePackComplianceFilters._(
            accountId: accountId,
            awsRegion: awsRegion,
            complianceType: complianceType,
            conformancePackName: conformancePackName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
