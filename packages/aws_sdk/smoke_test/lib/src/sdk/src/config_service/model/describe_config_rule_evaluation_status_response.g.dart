// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_config_rule_evaluation_status_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigRuleEvaluationStatusResponse
    extends DescribeConfigRuleEvaluationStatusResponse {
  @override
  final _i3.BuiltList<_i2.ConfigRuleEvaluationStatus>?
      configRulesEvaluationStatus;
  @override
  final String? nextToken;

  factory _$DescribeConfigRuleEvaluationStatusResponse(
          [void Function(DescribeConfigRuleEvaluationStatusResponseBuilder)?
              updates]) =>
      (new DescribeConfigRuleEvaluationStatusResponseBuilder()..update(updates))
          ._build();

  _$DescribeConfigRuleEvaluationStatusResponse._(
      {this.configRulesEvaluationStatus, this.nextToken})
      : super._();

  @override
  DescribeConfigRuleEvaluationStatusResponse rebuild(
          void Function(DescribeConfigRuleEvaluationStatusResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConfigRuleEvaluationStatusResponseBuilder toBuilder() =>
      new DescribeConfigRuleEvaluationStatusResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConfigRuleEvaluationStatusResponse &&
        configRulesEvaluationStatus == other.configRulesEvaluationStatus &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, configRulesEvaluationStatus.hashCode), nextToken.hashCode));
  }
}

class DescribeConfigRuleEvaluationStatusResponseBuilder
    implements
        Builder<DescribeConfigRuleEvaluationStatusResponse,
            DescribeConfigRuleEvaluationStatusResponseBuilder> {
  _$DescribeConfigRuleEvaluationStatusResponse? _$v;

  _i3.ListBuilder<_i2.ConfigRuleEvaluationStatus>? _configRulesEvaluationStatus;
  _i3.ListBuilder<_i2.ConfigRuleEvaluationStatus>
      get configRulesEvaluationStatus => _$this._configRulesEvaluationStatus ??=
          new _i3.ListBuilder<_i2.ConfigRuleEvaluationStatus>();
  set configRulesEvaluationStatus(
          _i3.ListBuilder<_i2.ConfigRuleEvaluationStatus>?
              configRulesEvaluationStatus) =>
      _$this._configRulesEvaluationStatus = configRulesEvaluationStatus;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeConfigRuleEvaluationStatusResponseBuilder() {
    DescribeConfigRuleEvaluationStatusResponse._init(this);
  }

  DescribeConfigRuleEvaluationStatusResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configRulesEvaluationStatus =
          $v.configRulesEvaluationStatus?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConfigRuleEvaluationStatusResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConfigRuleEvaluationStatusResponse;
  }

  @override
  void update(
      void Function(DescribeConfigRuleEvaluationStatusResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConfigRuleEvaluationStatusResponse build() => _build();

  _$DescribeConfigRuleEvaluationStatusResponse _build() {
    _$DescribeConfigRuleEvaluationStatusResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeConfigRuleEvaluationStatusResponse._(
              configRulesEvaluationStatus:
                  _configRulesEvaluationStatus?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configRulesEvaluationStatus';
        _configRulesEvaluationStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConfigRuleEvaluationStatusResponse',
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
