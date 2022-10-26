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
    return $jf($jc($jc(0, accountId.hashCode), awsRegion.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
