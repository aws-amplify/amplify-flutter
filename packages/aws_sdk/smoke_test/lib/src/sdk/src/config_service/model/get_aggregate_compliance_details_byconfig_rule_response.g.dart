// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_aggregate_compliance_details_byconfig_rule_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAggregateComplianceDetailsByconfigRuleResponse
    extends GetAggregateComplianceDetailsByconfigRuleResponse {
  @override
  final _i2.BuiltList<_i3.AggregateEvaluationResult>?
      aggregateEvaluationResults;
  @override
  final String? nextToken;

  factory _$GetAggregateComplianceDetailsByconfigRuleResponse(
          [void Function(
                  GetAggregateComplianceDetailsByconfigRuleResponseBuilder)?
              updates]) =>
      (new GetAggregateComplianceDetailsByconfigRuleResponseBuilder()
            ..update(updates))
          ._build();

  _$GetAggregateComplianceDetailsByconfigRuleResponse._(
      {this.aggregateEvaluationResults, this.nextToken})
      : super._();

  @override
  GetAggregateComplianceDetailsByconfigRuleResponse rebuild(
          void Function(
                  GetAggregateComplianceDetailsByconfigRuleResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAggregateComplianceDetailsByconfigRuleResponseBuilder toBuilder() =>
      new GetAggregateComplianceDetailsByconfigRuleResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAggregateComplianceDetailsByconfigRuleResponse &&
        aggregateEvaluationResults == other.aggregateEvaluationResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, aggregateEvaluationResults.hashCode), nextToken.hashCode));
  }
}

class GetAggregateComplianceDetailsByconfigRuleResponseBuilder
    implements
        Builder<GetAggregateComplianceDetailsByconfigRuleResponse,
            GetAggregateComplianceDetailsByconfigRuleResponseBuilder> {
  _$GetAggregateComplianceDetailsByconfigRuleResponse? _$v;

  _i2.ListBuilder<_i3.AggregateEvaluationResult>? _aggregateEvaluationResults;
  _i2.ListBuilder<_i3.AggregateEvaluationResult>
      get aggregateEvaluationResults => _$this._aggregateEvaluationResults ??=
          new _i2.ListBuilder<_i3.AggregateEvaluationResult>();
  set aggregateEvaluationResults(
          _i2.ListBuilder<_i3.AggregateEvaluationResult>?
              aggregateEvaluationResults) =>
      _$this._aggregateEvaluationResults = aggregateEvaluationResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetAggregateComplianceDetailsByconfigRuleResponseBuilder() {
    GetAggregateComplianceDetailsByconfigRuleResponse._init(this);
  }

  GetAggregateComplianceDetailsByconfigRuleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aggregateEvaluationResults = $v.aggregateEvaluationResults?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAggregateComplianceDetailsByconfigRuleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAggregateComplianceDetailsByconfigRuleResponse;
  }

  @override
  void update(
      void Function(GetAggregateComplianceDetailsByconfigRuleResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAggregateComplianceDetailsByconfigRuleResponse build() => _build();

  _$GetAggregateComplianceDetailsByconfigRuleResponse _build() {
    _$GetAggregateComplianceDetailsByconfigRuleResponse _$result;
    try {
      _$result = _$v ??
          new _$GetAggregateComplianceDetailsByconfigRuleResponse._(
              aggregateEvaluationResults: _aggregateEvaluationResults?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregateEvaluationResults';
        _aggregateEvaluationResults?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAggregateComplianceDetailsByconfigRuleResponse',
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
