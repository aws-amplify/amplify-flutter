// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_compliance_details_by_config_rule_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetComplianceDetailsByConfigRuleResponse
    extends GetComplianceDetailsByConfigRuleResponse {
  @override
  final _i3.BuiltList<_i2.EvaluationResult>? evaluationResults;
  @override
  final String? nextToken;

  factory _$GetComplianceDetailsByConfigRuleResponse(
          [void Function(GetComplianceDetailsByConfigRuleResponseBuilder)?
              updates]) =>
      (new GetComplianceDetailsByConfigRuleResponseBuilder()..update(updates))
          ._build();

  _$GetComplianceDetailsByConfigRuleResponse._(
      {this.evaluationResults, this.nextToken})
      : super._();

  @override
  GetComplianceDetailsByConfigRuleResponse rebuild(
          void Function(GetComplianceDetailsByConfigRuleResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetComplianceDetailsByConfigRuleResponseBuilder toBuilder() =>
      new GetComplianceDetailsByConfigRuleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetComplianceDetailsByConfigRuleResponse &&
        evaluationResults == other.evaluationResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, evaluationResults.hashCode), nextToken.hashCode));
  }
}

class GetComplianceDetailsByConfigRuleResponseBuilder
    implements
        Builder<GetComplianceDetailsByConfigRuleResponse,
            GetComplianceDetailsByConfigRuleResponseBuilder> {
  _$GetComplianceDetailsByConfigRuleResponse? _$v;

  _i3.ListBuilder<_i2.EvaluationResult>? _evaluationResults;
  _i3.ListBuilder<_i2.EvaluationResult> get evaluationResults =>
      _$this._evaluationResults ??= new _i3.ListBuilder<_i2.EvaluationResult>();
  set evaluationResults(
          _i3.ListBuilder<_i2.EvaluationResult>? evaluationResults) =>
      _$this._evaluationResults = evaluationResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetComplianceDetailsByConfigRuleResponseBuilder() {
    GetComplianceDetailsByConfigRuleResponse._init(this);
  }

  GetComplianceDetailsByConfigRuleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evaluationResults = $v.evaluationResults?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetComplianceDetailsByConfigRuleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetComplianceDetailsByConfigRuleResponse;
  }

  @override
  void update(
      void Function(GetComplianceDetailsByConfigRuleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetComplianceDetailsByConfigRuleResponse build() => _build();

  _$GetComplianceDetailsByConfigRuleResponse _build() {
    _$GetComplianceDetailsByConfigRuleResponse _$result;
    try {
      _$result = _$v ??
          new _$GetComplianceDetailsByConfigRuleResponse._(
              evaluationResults: _evaluationResults?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'evaluationResults';
        _evaluationResults?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetComplianceDetailsByConfigRuleResponse',
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
