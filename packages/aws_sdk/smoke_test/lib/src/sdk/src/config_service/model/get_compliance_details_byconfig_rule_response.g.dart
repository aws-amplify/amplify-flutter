// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_compliance_details_byconfig_rule_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetComplianceDetailsByconfigRuleResponse
    extends GetComplianceDetailsByconfigRuleResponse {
  @override
  final _i2.BuiltList<_i3.EvaluationResult>? evaluationResults;
  @override
  final String? nextToken;

  factory _$GetComplianceDetailsByconfigRuleResponse(
          [void Function(GetComplianceDetailsByconfigRuleResponseBuilder)?
              updates]) =>
      (new GetComplianceDetailsByconfigRuleResponseBuilder()..update(updates))
          ._build();

  _$GetComplianceDetailsByconfigRuleResponse._(
      {this.evaluationResults, this.nextToken})
      : super._();

  @override
  GetComplianceDetailsByconfigRuleResponse rebuild(
          void Function(GetComplianceDetailsByconfigRuleResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetComplianceDetailsByconfigRuleResponseBuilder toBuilder() =>
      new GetComplianceDetailsByconfigRuleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetComplianceDetailsByconfigRuleResponse &&
        evaluationResults == other.evaluationResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, evaluationResults.hashCode), nextToken.hashCode));
  }
}

class GetComplianceDetailsByconfigRuleResponseBuilder
    implements
        Builder<GetComplianceDetailsByconfigRuleResponse,
            GetComplianceDetailsByconfigRuleResponseBuilder> {
  _$GetComplianceDetailsByconfigRuleResponse? _$v;

  _i2.ListBuilder<_i3.EvaluationResult>? _evaluationResults;
  _i2.ListBuilder<_i3.EvaluationResult> get evaluationResults =>
      _$this._evaluationResults ??= new _i2.ListBuilder<_i3.EvaluationResult>();
  set evaluationResults(
          _i2.ListBuilder<_i3.EvaluationResult>? evaluationResults) =>
      _$this._evaluationResults = evaluationResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetComplianceDetailsByconfigRuleResponseBuilder() {
    GetComplianceDetailsByconfigRuleResponse._init(this);
  }

  GetComplianceDetailsByconfigRuleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evaluationResults = $v.evaluationResults?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetComplianceDetailsByconfigRuleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetComplianceDetailsByconfigRuleResponse;
  }

  @override
  void update(
      void Function(GetComplianceDetailsByconfigRuleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetComplianceDetailsByconfigRuleResponse build() => _build();

  _$GetComplianceDetailsByconfigRuleResponse _build() {
    _$GetComplianceDetailsByconfigRuleResponse _$result;
    try {
      _$result = _$v ??
          new _$GetComplianceDetailsByconfigRuleResponse._(
              evaluationResults: _evaluationResults?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'evaluationResults';
        _evaluationResults?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetComplianceDetailsByconfigRuleResponse',
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
