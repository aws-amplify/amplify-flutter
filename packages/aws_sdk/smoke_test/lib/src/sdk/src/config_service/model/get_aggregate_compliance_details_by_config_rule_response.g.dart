// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_aggregate_compliance_details_by_config_rule_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAggregateComplianceDetailsByConfigRuleResponse
    extends GetAggregateComplianceDetailsByConfigRuleResponse {
  @override
  final _i3.BuiltList<_i2.AggregateEvaluationResult>?
      aggregateEvaluationResults;
  @override
  final String? nextToken;

  factory _$GetAggregateComplianceDetailsByConfigRuleResponse(
          [void Function(
                  GetAggregateComplianceDetailsByConfigRuleResponseBuilder)?
              updates]) =>
      (new GetAggregateComplianceDetailsByConfigRuleResponseBuilder()
            ..update(updates))
          ._build();

  _$GetAggregateComplianceDetailsByConfigRuleResponse._(
      {this.aggregateEvaluationResults, this.nextToken})
      : super._();

  @override
  GetAggregateComplianceDetailsByConfigRuleResponse rebuild(
          void Function(
                  GetAggregateComplianceDetailsByConfigRuleResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAggregateComplianceDetailsByConfigRuleResponseBuilder toBuilder() =>
      new GetAggregateComplianceDetailsByConfigRuleResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAggregateComplianceDetailsByConfigRuleResponse &&
        aggregateEvaluationResults == other.aggregateEvaluationResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, aggregateEvaluationResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAggregateComplianceDetailsByConfigRuleResponseBuilder
    implements
        Builder<GetAggregateComplianceDetailsByConfigRuleResponse,
            GetAggregateComplianceDetailsByConfigRuleResponseBuilder> {
  _$GetAggregateComplianceDetailsByConfigRuleResponse? _$v;

  _i3.ListBuilder<_i2.AggregateEvaluationResult>? _aggregateEvaluationResults;
  _i3.ListBuilder<_i2.AggregateEvaluationResult>
      get aggregateEvaluationResults => _$this._aggregateEvaluationResults ??=
          new _i3.ListBuilder<_i2.AggregateEvaluationResult>();
  set aggregateEvaluationResults(
          _i3.ListBuilder<_i2.AggregateEvaluationResult>?
              aggregateEvaluationResults) =>
      _$this._aggregateEvaluationResults = aggregateEvaluationResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetAggregateComplianceDetailsByConfigRuleResponseBuilder() {
    GetAggregateComplianceDetailsByConfigRuleResponse._init(this);
  }

  GetAggregateComplianceDetailsByConfigRuleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aggregateEvaluationResults = $v.aggregateEvaluationResults?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAggregateComplianceDetailsByConfigRuleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAggregateComplianceDetailsByConfigRuleResponse;
  }

  @override
  void update(
      void Function(GetAggregateComplianceDetailsByConfigRuleResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAggregateComplianceDetailsByConfigRuleResponse build() => _build();

  _$GetAggregateComplianceDetailsByConfigRuleResponse _build() {
    _$GetAggregateComplianceDetailsByConfigRuleResponse _$result;
    try {
      _$result = _$v ??
          new _$GetAggregateComplianceDetailsByConfigRuleResponse._(
              aggregateEvaluationResults: _aggregateEvaluationResults?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregateEvaluationResults';
        _aggregateEvaluationResults?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAggregateComplianceDetailsByConfigRuleResponse',
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
