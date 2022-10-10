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
    return $jf(
        $jc($jc(0, aggregateEvaluationResults.hashCode), nextToken.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
