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
    var _$hash = 0;
    _$hash = $jc(_$hash, aggregateComplianceCounts.hashCode);
    _$hash = $jc(_$hash, groupByKey.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
