// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.aggregate_conformance_pack_compliance_summary_filters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregateConformancePackComplianceSummaryFilters
    extends AggregateConformancePackComplianceSummaryFilters {
  @override
  final String? accountId;
  @override
  final String? awsRegion;

  factory _$AggregateConformancePackComplianceSummaryFilters(
          [void Function(
                  AggregateConformancePackComplianceSummaryFiltersBuilder)?
              updates]) =>
      (new AggregateConformancePackComplianceSummaryFiltersBuilder()
            ..update(updates))
          ._build();

  _$AggregateConformancePackComplianceSummaryFilters._(
      {this.accountId, this.awsRegion})
      : super._();

  @override
  AggregateConformancePackComplianceSummaryFilters rebuild(
          void Function(AggregateConformancePackComplianceSummaryFiltersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregateConformancePackComplianceSummaryFiltersBuilder toBuilder() =>
      new AggregateConformancePackComplianceSummaryFiltersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregateConformancePackComplianceSummaryFilters &&
        accountId == other.accountId &&
        awsRegion == other.awsRegion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, awsRegion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AggregateConformancePackComplianceSummaryFiltersBuilder
    implements
        Builder<AggregateConformancePackComplianceSummaryFilters,
            AggregateConformancePackComplianceSummaryFiltersBuilder> {
  _$AggregateConformancePackComplianceSummaryFilters? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

  AggregateConformancePackComplianceSummaryFiltersBuilder() {
    AggregateConformancePackComplianceSummaryFilters._init(this);
  }

  AggregateConformancePackComplianceSummaryFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _awsRegion = $v.awsRegion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregateConformancePackComplianceSummaryFilters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AggregateConformancePackComplianceSummaryFilters;
  }

  @override
  void update(
      void Function(AggregateConformancePackComplianceSummaryFiltersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregateConformancePackComplianceSummaryFilters build() => _build();

  _$AggregateConformancePackComplianceSummaryFilters _build() {
    final _$result = _$v ??
        new _$AggregateConformancePackComplianceSummaryFilters._(
            accountId: accountId, awsRegion: awsRegion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
