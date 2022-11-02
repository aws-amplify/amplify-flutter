// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_aggregate_config_rule_compliance_summary_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAggregateConfigRuleComplianceSummaryResponse
    extends GetAggregateConfigRuleComplianceSummaryResponse {
  @override
  final _i3.BuiltList<_i2.AggregateComplianceCount>? aggregateComplianceCounts;
  @override
  final String? groupByKey;
  @override
  final String? nextToken;

  factory _$GetAggregateConfigRuleComplianceSummaryResponse(
          [void Function(
                  GetAggregateConfigRuleComplianceSummaryResponseBuilder)?
              updates]) =>
      (new GetAggregateConfigRuleComplianceSummaryResponseBuilder()
            ..update(updates))
          ._build();

  _$GetAggregateConfigRuleComplianceSummaryResponse._(
      {this.aggregateComplianceCounts, this.groupByKey, this.nextToken})
      : super._();

  @override
  GetAggregateConfigRuleComplianceSummaryResponse rebuild(
          void Function(GetAggregateConfigRuleComplianceSummaryResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAggregateConfigRuleComplianceSummaryResponseBuilder toBuilder() =>
      new GetAggregateConfigRuleComplianceSummaryResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAggregateConfigRuleComplianceSummaryResponse &&
        aggregateComplianceCounts == other.aggregateComplianceCounts &&
        groupByKey == other.groupByKey &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, aggregateComplianceCounts.hashCode), groupByKey.hashCode),
        nextToken.hashCode));
  }
}

class GetAggregateConfigRuleComplianceSummaryResponseBuilder
    implements
        Builder<GetAggregateConfigRuleComplianceSummaryResponse,
            GetAggregateConfigRuleComplianceSummaryResponseBuilder> {
  _$GetAggregateConfigRuleComplianceSummaryResponse? _$v;

  _i3.ListBuilder<_i2.AggregateComplianceCount>? _aggregateComplianceCounts;
  _i3.ListBuilder<_i2.AggregateComplianceCount> get aggregateComplianceCounts =>
      _$this._aggregateComplianceCounts ??=
          new _i3.ListBuilder<_i2.AggregateComplianceCount>();
  set aggregateComplianceCounts(
          _i3.ListBuilder<_i2.AggregateComplianceCount>?
              aggregateComplianceCounts) =>
      _$this._aggregateComplianceCounts = aggregateComplianceCounts;

  String? _groupByKey;
  String? get groupByKey => _$this._groupByKey;
  set groupByKey(String? groupByKey) => _$this._groupByKey = groupByKey;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetAggregateConfigRuleComplianceSummaryResponseBuilder() {
    GetAggregateConfigRuleComplianceSummaryResponse._init(this);
  }

  GetAggregateConfigRuleComplianceSummaryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aggregateComplianceCounts = $v.aggregateComplianceCounts?.toBuilder();
      _groupByKey = $v.groupByKey;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAggregateConfigRuleComplianceSummaryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAggregateConfigRuleComplianceSummaryResponse;
  }

  @override
  void update(
      void Function(GetAggregateConfigRuleComplianceSummaryResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAggregateConfigRuleComplianceSummaryResponse build() => _build();

  _$GetAggregateConfigRuleComplianceSummaryResponse _build() {
    _$GetAggregateConfigRuleComplianceSummaryResponse _$result;
    try {
      _$result = _$v ??
          new _$GetAggregateConfigRuleComplianceSummaryResponse._(
              aggregateComplianceCounts: _aggregateComplianceCounts?.build(),
              groupByKey: groupByKey,
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregateComplianceCounts';
        _aggregateComplianceCounts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAggregateConfigRuleComplianceSummaryResponse',
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
