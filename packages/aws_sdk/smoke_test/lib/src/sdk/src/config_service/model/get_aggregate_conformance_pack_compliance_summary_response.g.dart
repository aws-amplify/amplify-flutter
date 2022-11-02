// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_aggregate_conformance_pack_compliance_summary_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAggregateConformancePackComplianceSummaryResponse
    extends GetAggregateConformancePackComplianceSummaryResponse {
  @override
  final _i3.BuiltList<_i2.AggregateConformancePackComplianceSummary>?
      aggregateConformancePackComplianceSummaries;
  @override
  final String? groupByKey;
  @override
  final String? nextToken;

  factory _$GetAggregateConformancePackComplianceSummaryResponse(
          [void Function(
                  GetAggregateConformancePackComplianceSummaryResponseBuilder)?
              updates]) =>
      (new GetAggregateConformancePackComplianceSummaryResponseBuilder()
            ..update(updates))
          ._build();

  _$GetAggregateConformancePackComplianceSummaryResponse._(
      {this.aggregateConformancePackComplianceSummaries,
      this.groupByKey,
      this.nextToken})
      : super._();

  @override
  GetAggregateConformancePackComplianceSummaryResponse rebuild(
          void Function(
                  GetAggregateConformancePackComplianceSummaryResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAggregateConformancePackComplianceSummaryResponseBuilder toBuilder() =>
      new GetAggregateConformancePackComplianceSummaryResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAggregateConformancePackComplianceSummaryResponse &&
        aggregateConformancePackComplianceSummaries ==
            other.aggregateConformancePackComplianceSummaries &&
        groupByKey == other.groupByKey &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, aggregateConformancePackComplianceSummaries.hashCode),
            groupByKey.hashCode),
        nextToken.hashCode));
  }
}

class GetAggregateConformancePackComplianceSummaryResponseBuilder
    implements
        Builder<GetAggregateConformancePackComplianceSummaryResponse,
            GetAggregateConformancePackComplianceSummaryResponseBuilder> {
  _$GetAggregateConformancePackComplianceSummaryResponse? _$v;

  _i3.ListBuilder<_i2.AggregateConformancePackComplianceSummary>?
      _aggregateConformancePackComplianceSummaries;
  _i3.ListBuilder<_i2.AggregateConformancePackComplianceSummary>
      get aggregateConformancePackComplianceSummaries => _$this
              ._aggregateConformancePackComplianceSummaries ??=
          new _i3.ListBuilder<_i2.AggregateConformancePackComplianceSummary>();
  set aggregateConformancePackComplianceSummaries(
          _i3.ListBuilder<_i2.AggregateConformancePackComplianceSummary>?
              aggregateConformancePackComplianceSummaries) =>
      _$this._aggregateConformancePackComplianceSummaries =
          aggregateConformancePackComplianceSummaries;

  String? _groupByKey;
  String? get groupByKey => _$this._groupByKey;
  set groupByKey(String? groupByKey) => _$this._groupByKey = groupByKey;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetAggregateConformancePackComplianceSummaryResponseBuilder() {
    GetAggregateConformancePackComplianceSummaryResponse._init(this);
  }

  GetAggregateConformancePackComplianceSummaryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aggregateConformancePackComplianceSummaries =
          $v.aggregateConformancePackComplianceSummaries?.toBuilder();
      _groupByKey = $v.groupByKey;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAggregateConformancePackComplianceSummaryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAggregateConformancePackComplianceSummaryResponse;
  }

  @override
  void update(
      void Function(
              GetAggregateConformancePackComplianceSummaryResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAggregateConformancePackComplianceSummaryResponse build() => _build();

  _$GetAggregateConformancePackComplianceSummaryResponse _build() {
    _$GetAggregateConformancePackComplianceSummaryResponse _$result;
    try {
      _$result = _$v ??
          new _$GetAggregateConformancePackComplianceSummaryResponse._(
              aggregateConformancePackComplianceSummaries:
                  _aggregateConformancePackComplianceSummaries?.build(),
              groupByKey: groupByKey,
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregateConformancePackComplianceSummaries';
        _aggregateConformancePackComplianceSummaries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAggregateConformancePackComplianceSummaryResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
