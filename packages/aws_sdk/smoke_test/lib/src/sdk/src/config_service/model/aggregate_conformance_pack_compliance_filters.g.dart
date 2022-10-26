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
    return $jf($jc(
        $jc($jc($jc(0, accountId.hashCode), awsRegion.hashCode),
            complianceType.hashCode),
        conformancePackName.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
